import os
from typing import List, Dict, Any
from langchain_ollama import ChatOllama
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.output_parsers import JsonOutputParser
from langchain_core.documents import Document
from utils.models import KnowledgeGraphSchema, ExtractedNode, ExtractedRelationship

# Initialize the LLM and Parser globally or within function
# Ensure Ollama is running with 'llama3'
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

prompt = ChatPromptTemplate.from_messages(
    [
        ("system", SYSTEM_PROMPT),
        ("user", "Extract the Knowledge Graph from this text: \n\n--- TEXT ---\n\n{text}"),
    ]
)

kg_extraction_chain = prompt | llm | parser

def extract_schema_from_text(documents: List[Document]) -> Dict[str, List[Any]]:
    """
    Extracts Knowledge Graph nodes and relationships from a list of text documents.
    
    Args:
        documents (List[Document]): The chunked documents to process.
        
    Returns:
        Dict[str, List[Any]]: A dictionary containing aggregated 'nodes' and 'relationships'.
    """
    print("\n--- AGENT: SCHEMA ALIGNER STARTING (Parallel) ---")
    
    aggregated_nodes = []
    aggregated_relationships = []
    
    # Helper function for a single chunk
    def process_chunk(index, doc):
        print(f"Processing chunk {index+1}/{len(documents)}...")
        try:
            result = kg_extraction_chain.invoke(
                {
                    "text": doc.page_content,
                    "format_instructions": parser.get_format_instructions(),
                }
            )
            return result
        except Exception as e:
            print(f"⚠️ Error extracting from chunk {index+1}: {e}")
            return None

    import concurrent.futures

    # Adjust max_workers based on your system (e.g., 2-4 for local LLMs)
    with concurrent.futures.ThreadPoolExecutor(max_workers=10) as executor:
        # Submit all tasks
        futures = {executor.submit(process_chunk, i, doc): i for i, doc in enumerate(documents)}
        
        for future in concurrent.futures.as_completed(futures):
            result = future.result()
            if result:
                # Validate/Access safely
                nodes = result.get("nodes", [])
                relationships = result.get("relationships", [])
                
                aggregated_nodes.extend(nodes)
                aggregated_relationships.extend(relationships)

    print(f"✅ Total extracted: {len(aggregated_nodes)} nodes, {len(aggregated_relationships)} relationships.")
    
    return {
        "nodes": aggregated_nodes,
        "relationships": aggregated_relationships
    }
