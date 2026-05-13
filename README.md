# Parkinson's Knowledge Graph RAG

A Retrieval-Augmented Generation system over a Neo4j knowledge graph for Parkinson's disease research. The graph is extracted from scientific PDFs, augmented with biomedical reference data, and queried through a conversational Streamlit interface.

## Features

- **PDF → Knowledge Graph ingestion**: PyMuPDF + chunking + LLM extraction → Neo4j property graph.
- **Hybrid retrieval**: LLM-generated Cypher *and* semantic search over chunk embeddings (Neo4j native vector index). Synthesis blends structured rows with relevant passages.
- **Entity canonicalization**: extracted proteins, genes, and drugs are resolved against **UniProt**, **HGNC**, and **RxNav** at ingestion time. The original LLM-extracted name is preserved as an `alias`.
- **Per-chunk provenance**: every entity links back to a `Chunk` node (text + page) on a `Paper` node, so answers cite the source PDF.
- **Conversational follow-ups**: a dedicated pronoun-resolution step rewrites questions like *"on physical level, what are the symptoms"* into standalone form using chat history.
- **Cypher repair pass + general-knowledge fallback**: when generated Cypher errors or returns nothing, a one-shot LLM repair attempt runs before falling back to vector-only synthesis or general knowledge.
- **Streamlit Web UI** with streaming output and a "Query details" expander showing the resolved question, Cypher, and top semantic matches.

## Tech Stack
- **Graph database**: Neo4j (5.13+ for native vector indexes) with **APOC** plugin
- **LLM runtime**: Ollama running `gemma3:4b` (default) and `nomic-embed-text` for embeddings
- **Frameworks**: LangChain, Streamlit
- **Package manager**: `uv`

## Getting Started

### Prerequisites

1. **Neo4j 5.13+** (Desktop or Aura). The project uses native vector indexes and APOC procedures.
2. **APOC plugin** must be installed and enabled — the ingestion writer calls `apoc.coll.toSet(...)` for alias merging. In Neo4j Desktop: *DBMS → Plugins → Install APOC → Restart.*
3. **Ollama** with the required models pulled:
   ```bash
   ollama pull gemma3:4b
   ollama pull nomic-embed-text
   ```
4. A `.env` file at the project root with your Neo4j credentials:
   ```env
   NEO4J_URI=bolt://localhost:7687
   NEO4J_USERNAME=neo4j
   NEO4J_PASSWORD=<your-password>
   ```

### Running the Application

Streamlit chat UI (recommended):
```bash
uv run streamlit run app.py
```

CLI alternative:
```bash
uv run python ask.py
```

## Loading the Included Knowledge Graph

A pre-built knowledge graph extracted from five Parkinson's review papers is included at [`data/parkinsons_kg.cypher`](data/parkinsons_kg.cypher) — **3,007 nodes** and **7,062 relationships** covering genes, proteins, drugs, clinical trials, pathways, papers, and chunk-level provenance.

To load it into your own Neo4j instance:

1. Start a fresh Neo4j database.
2. In **Neo4j Browser**:
   ```
   :source /absolute/path/to/data/parkinsons_kg.cypher
   ```
   Or via `cypher-shell`:
   ```bash
   cypher-shell -u neo4j -p <password> < data/parkinsons_kg.cypher
   ```

## Extending the Graph with Your Own Papers

The ingestion pipeline is designed so you can add new scientific papers on top of the included graph:

1. Load the included KG (above).
2. Drop your own PDFs into a folder.
3. Run the ingestion pipeline, pointing at that folder:
   ```bash
   uv run python main.py /path/to/your/pdfs
   ```
   Or via env var:
   ```bash
   DATA_PATH=/path/to/your/pdfs uv run python main.py
   ```

Each PDF is chunked per page, extracted by the LLM, canonicalized against UniProt/HGNC/RxNav, embedded with `nomic-embed-text`, and written to Neo4j with full provenance.

> **Entity identity:** extracted proteins, genes, and drugs are canonicalized against authoritative references (UniProt accession, HGNC ID, RxCUI) so the same entity from different papers merges into a single node. Canonicalization is best-effort: if no reference match is found, the node keeps its LLM-extracted name. Diseases, pathways, symptoms, therapies and other types pass through unchanged — canonicalizing those is a worthwhile follow-up.

## Architecture Notes

The query pipeline:

1. **Pronoun resolution** — when chat history exists, the LLM rewrites the question to be self-contained, preserving scope without adding topical anchors.
2. **Vector search** — embed the question with `nomic-embed-text` and pull top-k chunks from the Neo4j vector index.
3. **Conditional Cypher generation** — if vector confidence is high (cosine ≥ 0.85), Cypher generation is skipped to save latency. Otherwise the LLM writes Cypher against the cached schema (labels + relationship types + sample property values), with a regex-based safety fixer for known hallucinations and a one-shot LLM repair pass on empty/error results.
4. **Provenance lookup** — for any rows returned, find the papers that mention the result entities via `MENTIONED_IN` / `HAS_CHUNK` edges.
5. **Synthesis** — combine structured rows, vector chunks, and provenance into the answer. Synthesis is history-free; the resolved standalone question is the only conversational signal.

All LLM calls run at `temperature=0` for reproducibility.

## Limitations

- **Best-effort canonicalization**: only proteins, genes, and drugs are routed. Disease/pathway/symptom types remain as the LLM named them.
- **Local LLM latency**: Gemma 3 4B answers in roughly 15-30 seconds. For sub-10s responses, swap in a hosted model (the `ChatOllama` interface is the only point of contact).
- **Research-grade, not clinical software**: there is no human review of extracted facts. Suitable for exploration, not decision support.
