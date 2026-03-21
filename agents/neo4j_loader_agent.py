import os
from typing import Dict, Any, List
from neo4j import GraphDatabase, basic_auth

def write_to_neo4j(graph_data: Dict[str, List[Any]]):
    """
    Writes the extracted Knowledge Graph data into Neo4j.
    
    Args:
        graph_data (Dict): A dictionary with 'nodes' and 'relationships' keys.
    """
    print("\n--- AGENT: NEO4J LOADER STARTING ---")
    
    nodes = graph_data.get("nodes", [])
    relationships = graph_data.get("relationships", [])

    if not nodes and not relationships:
        print("⚠️ WARNING: No graph data to write.")
        return

    # Load credentials from env (assumes load_dotenv() called in main)
    URI = os.getenv("NEO4J_URI", "bolt://localhost:7687")
    USERNAME = os.getenv("NEO4J_USERNAME", "neo4j")
    PASSWORD = os.getenv("NEO4J_PASSWORD", "password")

    try:
        driver = GraphDatabase.driver(URI, auth=basic_auth(USERNAME, PASSWORD))
        driver.verify_connectivity()
        
        with driver.session() as session:
            # --- Transaction to Write Nodes ---
            node_tx = session.begin_transaction()
            node_count = 0
            for node in nodes:
                # Cypher: MERGE (n:NodeLabel {id: 'NodeID'}) SET n.name = 'NodeName'
                # fallback for missing 'type' or 'id'
                if 'id' not in node or 'type' not in node:
                    continue
                    
                # Sanitize label (handle spaces like 'Organismal Structure')
                label = f"`{node['type']}`"
                
                # Collect any extra properties (name, status, etc.) beyond id and type
                extra_props = {k: v for k, v in node.items() if k not in ("id", "type")}
                extra_props.setdefault("name", node["id"])  # fallback: use id as name

                cypher_query = (
                    f"MERGE (n:{label} {{id: $id}}) "
                    f"SET n += $props"
                )
                node_tx.run(cypher_query, id=node['id'], props=extra_props)
                node_count += 1
            node_tx.commit()
            
            # --- Transaction to Write Relationships ---
            rel_tx = session.begin_transaction()
            rel_count = 0
            for rel in relationships:
                # Cypher: MATCH (s), (t) MERGE (s)-[:REL]->(t)
                if 'source_id' not in rel or 'target_id' not in rel or 'type' not in rel:
                    continue

                cypher_query = (
                    f"MATCH (s {{id: $source_id}}), (t {{id: $target_id}}) "
                    f"MERGE (s)-[:`{rel['type']}`]->(t)"
                )
                rel_tx.run(cypher_query, source_id=rel['source_id'], target_id=rel['target_id'])
                rel_count += 1
            rel_tx.commit()
        
        driver.close()
        print(f"✅ SUCCESS: Wrote {node_count} nodes and {rel_count} relationships to Neo4j.")

    except Exception as e:
        print(f"❌ ERROR connecting or writing to Neo4j: {e}")
