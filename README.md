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

## Architecture Notes
To optimize response times, the Query Agent utilizes a two-step LLM strategy. Initially, a fast JSON-mode LLM call resolves the chat history context and detects if external API enrichment is needed (KEGG, STRING, ClinicalTrials). Afterwards, it generates a Strict Cypher query against a cached graph schema. An aggressive Python rule-based fixer runs post-generation to intercept known LLM hallucinations before execution.
