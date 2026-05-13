import os
import re
from typing import Dict, Any, List, Optional
from neo4j import GraphDatabase, basic_auth

VECTOR_INDEX_NAME = "chunk_embedding_idx"
VECTOR_DIM = 768  # nomic-embed-text

# Cypher labels and relationship types are interpolated (Neo4j does not
# parameterize them), so any backtick or non-identifier character from the
# LLM-emitted type string could break out of the quoted label. Strip them.
_IDENT_PATTERN = re.compile(r"[^A-Za-z0-9_]")


def _safe_ident(name: str, fallback: str = "Unknown") -> str:
    cleaned = _IDENT_PATTERN.sub("", name or "")
    return cleaned if cleaned else fallback


def _driver():
    URI = os.getenv("NEO4J_URI", "bolt://localhost:7687")
    USERNAME = os.getenv("NEO4J_USERNAME", "neo4j")
    PASSWORD = os.getenv("NEO4J_PASSWORD", "password")
    return GraphDatabase.driver(URI, auth=basic_auth(USERNAME, PASSWORD))


def ensure_vector_index(session) -> None:
    """Idempotently create the Chunk.embedding vector index. Safe to call repeatedly."""
    try:
        session.run(
            f"CREATE VECTOR INDEX {VECTOR_INDEX_NAME} IF NOT EXISTS "
            f"FOR (c:Chunk) ON (c.embedding) "
            f"OPTIONS {{indexConfig: {{"
            f"  `vector.dimensions`: {VECTOR_DIM}, "
            f"  `vector.similarity_function`: 'cosine'"
            f"}}}}"
        )
    except Exception as e:
        print(f"⚠️ Vector index creation skipped: {e}")


def _merge_node(tx, node: Dict[str, Any]) -> bool:
    if "id" not in node or "type" not in node:
        return False
    label = f"`{_safe_ident(node['type'])}`"
    aliases = node.get("aliases") or []
    extra_props = {k: v for k, v in node.items()
                   if k not in ("id", "type", "aliases")}
    extra_props.setdefault("name", node["id"])

    if aliases:
        # Union-merge aliases so repeat ingestions accumulate names without dups.
        tx.run(
            f"MERGE (n:{label} {{id: $id}}) "
            f"SET n += $props "
            f"SET n.aliases = apoc.coll.toSet(coalesce(n.aliases, []) + $aliases)",
            id=node["id"], props=extra_props, aliases=aliases,
        )
    else:
        tx.run(
            f"MERGE (n:{label} {{id: $id}}) SET n += $props",
            id=node["id"], props=extra_props,
        )
    return True


def _merge_relationship(tx, rel: Dict[str, Any]) -> bool:
    if "source_id" not in rel or "target_id" not in rel or "type" not in rel:
        return False
    rel_type = _safe_ident(rel["type"], fallback="RELATED_TO")
    tx.run(
        f"MATCH (s {{id: $sid}}), (t {{id: $tid}}) "
        f"MERGE (s)-[:`{rel_type}`]->(t)",
        sid=rel["source_id"], tid=rel["target_id"],
    )
    return True


def write_to_neo4j(graph_data: Dict[str, List[Any]]):
    """
    Writes a flat {nodes, relationships} dict to Neo4j. Used by the
    enrichment agents (KEGG, STRING, ClinicalTrials) where there is no
    chunk-level provenance to attach.
    """
    print("\n--- AGENT: NEO4J LOADER (flat) ---")
    nodes = graph_data.get("nodes", [])
    relationships = graph_data.get("relationships", [])
    if not nodes and not relationships:
        print("⚠️ WARNING: No graph data to write.")
        return

    try:
        driver = _driver()
        driver.verify_connectivity()
        with driver.session() as session:
            with session.begin_transaction() as tx:
                node_count = sum(1 for n in nodes if _merge_node(tx, n))
                tx.commit()
            with session.begin_transaction() as tx:
                rel_count = sum(1 for r in relationships if _merge_relationship(tx, r))
                tx.commit()
        driver.close()
        print(f"✅ Wrote {node_count} nodes / {rel_count} relationships.")
    except Exception as e:
        print(f"❌ ERROR connecting or writing to Neo4j: {e}")


def write_chunked_to_neo4j(per_chunk: List[Dict[str, Any]],
                           paper_metadata: Optional[Dict[str, Any]] = None):
    """
    Writes per-chunk extraction results to Neo4j, creating Paper and Chunk
    nodes plus MENTIONED_IN / HAS_CHUNK edges so every extracted fact is
    traceable to its source.

    Args:
        per_chunk: list of dicts, each {chunk_metadata, nodes, relationships}
                   as produced by schema_aligner_agent.extract_schema_from_text
        paper_metadata: optional dict with paper-level info (e.g. {title, source_path}).
                        paper_id is derived from chunk_metadata.
    """
    print("\n--- AGENT: NEO4J LOADER (chunked + provenance) ---")
    if not per_chunk:
        print("⚠️ WARNING: No chunked data to write.")
        return

    paper_id = next(
        (c["chunk_metadata"].get("paper_id") for c in per_chunk
         if c.get("chunk_metadata", {}).get("paper_id")),
        None,
    )
    if not paper_id:
        print("⚠️ WARNING: No paper_id found on any chunk; skipping provenance write.")
        return

    paper_props = {"name": paper_id}
    if paper_metadata:
        paper_props.update({k: v for k, v in paper_metadata.items() if v is not None})

    try:
        driver = _driver()
        driver.verify_connectivity()
        node_total = 0
        rel_total = 0
        mention_total = 0

        with driver.session() as session:
            # 0. Ensure vector index exists (no-op if already there)
            ensure_vector_index(session)

            # 1. Paper node
            session.run("MERGE (p:Paper {id: $pid}) SET p += $props",
                        pid=paper_id, props=paper_props)

            # 2. Per-chunk write
            for entry in per_chunk:
                meta = entry.get("chunk_metadata", {})
                chunk_id = meta.get("chunk_id")
                if not chunk_id:
                    continue

                chunk_props = {
                    "text": meta.get("text", ""),
                    "page": meta.get("page"),
                    "chunk_index": meta.get("chunk_index"),
                }
                if meta.get("embedding"):
                    chunk_props["embedding"] = meta["embedding"]

                with session.begin_transaction() as tx:
                    # Chunk node + Paper->Chunk edge
                    tx.run(
                        "MERGE (c:Chunk {id: $cid}) SET c += $props "
                        "WITH c "
                        "MATCH (p:Paper {id: $pid}) "
                        "MERGE (p)-[:HAS_CHUNK]->(c)",
                        cid=chunk_id, props=chunk_props, pid=paper_id,
                    )

                    # Entities + MENTIONED_IN
                    for node in entry.get("nodes", []):
                        if _merge_node(tx, node):
                            node_total += 1
                            tx.run(
                                "MATCH (n {id: $nid}), (c:Chunk {id: $cid}) "
                                "MERGE (n)-[:MENTIONED_IN]->(c)",
                                nid=node["id"], cid=chunk_id,
                            )
                            mention_total += 1

                    # Relationships
                    for rel in entry.get("relationships", []):
                        if _merge_relationship(tx, rel):
                            rel_total += 1

                    tx.commit()

        driver.close()
        print(f"✅ Paper '{paper_id}': {len(per_chunk)} chunks, "
              f"{node_total} entity merges, {rel_total} relationships, "
              f"{mention_total} provenance edges.")
    except Exception as e:
        print(f"❌ ERROR connecting or writing to Neo4j: {e}")
