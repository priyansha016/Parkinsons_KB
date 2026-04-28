# Parkinson's Knowledge Graph RAG

An advanced Retrieval-Augmented Generation (RAG) system built around a Neo4j Knowledge Graph specifically tailored for Parkinson's Disease research. This application ingests scientific literature, enriches it dynamically from external biological databases, and provides a conversational interface to explore complex medical data.

## Features

- **Document Ingestion**: Processes PDFs and builds a Neo4j graph representing entities (Genes, Proteins, Drugs, Diseases) and relationships.
- **Dynamic API Enrichment**: Proactively fetches missing context during queries:
  - **KEGG**: Biological pathways and genomic data.
  - **STRING**: Protein-protein interaction networks.
  - **ClinicalTrials.gov**: Real-world status of ongoing drug trials.
- **Conversational Memory**: Understands context and follow-up questions within the chat interface.
- **Hallucination Shield**: Implements a robust "Rule-Based Cypher Fixer" to intercept and correct LLM-generated graph queries, ensuring high accuracy and preventing syntax errors.
- **Streamlit Web UI**: A beautiful, chat-based interface showing real-time graph statistics.

## Tech Stack
- **Graph Database**: Neo4j
- **LLM Engine**: LangChain & Ollama (Llama 3 locally)
- **Web Framework**: Streamlit
- **Package Manager**: `uv`

## Getting Started

### Prerequisites
1. **Neo4j Desktop / Aura**: Ensure you have a running instance.
2. **Ollama**: Running locally with the `llama3` model installed (`ollama pull llama3`).
3. Configure your `.env` file at the project root:
   ```env
   NEO4J_URI=bolt://localhost:7687
   NEO4J_USERNAME=neo4j
   NEO4J_PASSWORD=<YOUR_NEO4J_PASSWORD> # Replace with your actual password
   ```

### Running the Application

1. **Start the Web UI** (Requires `uv` installed):
   ```bash
   uv run streamlit run app.py
   ```

2. **CLI Interface** (Alternative):
   ```bash
   uv run python ask.py
   ```

## Loading the Included Knowledge Graph

A pre-built knowledge graph extracted from the original reference papers is included at [`data/parkinsons_kg.cypher`](data/parkinsons_kg.cypher) — **2,509 nodes** and **3,347 relationships** covering genes, proteins, drugs, clinical trials, therapies, and more.

To load it into your own Neo4j instance:

1. Start a fresh Neo4j database (Desktop or Aura).
2. In **Neo4j Browser**, run:
   ```
   :source /absolute/path/to/data/parkinsons_kg.cypher
   ```
   Or via `cypher-shell`:
   ```bash
   cypher-shell -u neo4j -p <password> < data/parkinsons_kg.cypher
   ```

That's it — you now have the same starting graph as this project.

## Extending the Graph with Your Own Papers

The ingestion pipeline is designed so anyone can add new scientific papers on top of the included graph:

1. Load the included KG (above).
2. Drop your own PDFs into a folder.
3. Edit `DATA_PATH` in [`main.py`](main.py) to point at that folder.
4. Run:
   ```bash
   uv run python main.py
   ```

The loader uses Neo4j `MERGE` semantics, so existing nodes are extended (not duplicated) when relationships from new papers reference them.

> **⚠️ Caveat: Entity identity.** The schema-aligner uses an LLM to invent node IDs from the text (e.g. it may call alpha-synuclein `"AlphaSynuclein"` in one run and `"Alpha_Synuclein"` in another). Because `MERGE` matches on the exact ID string, the same biological entity may end up as two separate nodes when extracted across different runs. After ingestion, it's worth running a dedup pass — e.g. using `apoc.text.levenshteinSimilarity` — or normalising IDs against a controlled vocabulary (UniProt for proteins, HGNC for genes, DrugBank for drugs).

## Architecture Notes
To optimize response times, the Query Agent utilizes a two-step LLM strategy. Initially, a fast JSON-mode LLM call resolves the chat history context and detects if external API enrichment is needed (KEGG, STRING, ClinicalTrials). Afterwards, it generates a Strict Cypher query against a cached graph schema. An aggressive Python rule-based fixer runs post-generation to intercept known LLM hallucinations before execution.
