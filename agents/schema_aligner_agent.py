import concurrent.futures
from typing import List, Dict, Any
from langchain_ollama import ChatOllama
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.output_parsers import JsonOutputParser
from langchain_core.documents import Document
from utils.models import KnowledgeGraphSchema

llm = ChatOllama(model="llama3", temperature=0.0, format="json")
parser = JsonOutputParser(pydantic_object=KnowledgeGraphSchema)

SYSTEM_PROMPT = """
You are an expert Knowledge Graph extractor. Your task is to analyze the provided scientific text
and extract entities (Nodes) and their relationships (Relationships) strictly based
on the JSON schema provided below.

# Instructions:
1. **Nodes (Entities):** Extract concepts like Genes, Proteins, Diseases, and Drugs relevant to Parkinson's research.
   - The 'id' must be a concise, unique name (e.g., 'LRRK2Gene', 'ParkinsonsDisease'). Use CamelCase.
   - The 'type' must be the high-level category (e.g., 'Gene', 'Disease', 'Compound').
2. **Relationships:** Identify directed relationships between the extracted Nodes.
   - 'source_id' and 'target_id' MUST match the 'id' of an extracted Node exactly.
   - 'type' MUST be uppercase with underscores (e.g., 'TARGETS', 'CAUSES_RISK', 'MITIGATES_EFFECT').
3. **Strict Compliance:** Your output MUST be a single, valid JSON object that strictly adheres
   to the provided JSON schema.
   - **DO NOT** include any explanatory text, preambles, or postscripts.
   - **DO NOT** wrap the output in markdown code blocks (like ```json ... ```).
   - Return **ONLY** the raw JSON string.

# JSON Schema:
{format_instructions}
"""

prompt = ChatPromptTemplate.from_messages([
    ("system", SYSTEM_PROMPT),
    ("user", "Extract the Knowledge Graph from this text: \n\n--- TEXT ---\n\n{text}"),
])

kg_extraction_chain = prompt | llm | parser


def extract_schema_from_text(documents: List[Document]) -> List[Dict[str, Any]]:
    """
    Extracts nodes and relationships per chunk, preserving provenance metadata
    so each extracted fact knows which paper + page + chunk it came from.

    Returns:
        List of dicts, one per chunk, each with:
          {
            "chunk_metadata": {paper_id, page, chunk_id, chunk_index, text},
            "nodes": [...],
            "relationships": [...],
          }
    """
    print("\n--- AGENT: SCHEMA ALIGNER STARTING (Parallel) ---")

    def process_chunk(index: int, doc: Document) -> Dict[str, Any]:
        print(f"Processing chunk {index + 1}/{len(documents)}...")
        meta = {
            "paper_id": doc.metadata.get("paper_id"),
            "page": doc.metadata.get("page"),
            "chunk_id": doc.metadata.get("chunk_id"),
            "chunk_index": doc.metadata.get("chunk_index"),
            "text": doc.page_content,
        }
        try:
            result = kg_extraction_chain.invoke({
                "text": doc.page_content,
                "format_instructions": parser.get_format_instructions(),
            })
            return {
                "chunk_metadata": meta,
                "nodes": result.get("nodes", []) if isinstance(result, dict) else [],
                "relationships": result.get("relationships", []) if isinstance(result, dict) else [],
            }
        except Exception as e:
            print(f"⚠️ Error extracting from chunk {index + 1}: {e}")
            return {"chunk_metadata": meta, "nodes": [], "relationships": []}

    per_chunk: List[Dict[str, Any]] = []
    with concurrent.futures.ThreadPoolExecutor(max_workers=10) as executor:
        futures = {executor.submit(process_chunk, i, doc): i for i, doc in enumerate(documents)}
        # Preserve order via the future->index map (results may arrive out of order)
        ordered: Dict[int, Dict[str, Any]] = {}
        for future in concurrent.futures.as_completed(futures):
            i = futures[future]
            ordered[i] = future.result()
        per_chunk = [ordered[i] for i in sorted(ordered)]

    total_nodes = sum(len(r["nodes"]) for r in per_chunk)
    total_rels = sum(len(r["relationships"]) for r in per_chunk)
    print(f"✅ Extracted {total_nodes} nodes / {total_rels} relationships across {len(per_chunk)} chunks.")
    return per_chunk
