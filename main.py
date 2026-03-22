import os
from dotenv import load_dotenv

# Importing logic from your specialized agent files
# Note: Ensure these functions are defined in your respective agent files
from agents.pdf_loader_agent import load_document
from agents.schema_aligner_agent import extract_schema_from_text
from agents.neo4j_loader_agent import write_to_neo4j

# Load environment variables (Neo4j credentials, etc.)
load_dotenv()

PROCESSED_LOG = "processed_files.txt"

def is_processed(file_path):
    if not os.path.exists(PROCESSED_LOG):
        return False
    with open(PROCESSED_LOG, "r") as f:
        processed = f.read().splitlines()
    return os.path.basename(file_path) in processed

def mark_as_processed(file_path):
    with open(PROCESSED_LOG, "a") as f:
        f.write(os.path.basename(file_path) + "\n")

def run_pipeline(pdf_filename):
    """
    Orchestrates the flow of data from a PDF to the Neo4j Graph.
    """
    print(f"🚀 Starting RAG Pipeline for: {pdf_filename}")

    # 1. Ingest: Read the PDF and split it into manageable chunks
    # This uses the agent responsible for document processing
    documents = load_document(pdf_filename)
    print(f"{len(documents)} text chunks created.")

    # 2. Extract: Send chunks to Llama 3 via Ollama to find entities/relationships
    # This uses the schema aligner and your Pydantic models
    graph_documents = extract_schema_from_text(documents)
    print(f"{len(graph_documents)} entities/relationships extracted.")

    # 3. Load: Write the extracted data into your Neo4j Desktop instance
    # This uses the credentials from your .env file
    write_to_neo4j(graph_documents)
    print(f"Data is now live in Neo4j.")
    
    # 4. Success: Mark this file as processed to skip it next time
    mark_as_processed(pdf_filename)

if __name__ == "__main__":
    # Specify the path (File or Directory)
    DATA_PATH = "/Users/priyanshasinha/Documents/Parkinsons/"

    if os.path.isdir(DATA_PATH):
        print(f"Detected Directory: {DATA_PATH}")
        pdf_files = [f for f in os.listdir(DATA_PATH) if f.lower().endswith(".pdf")]
        print(f"Found {len(pdf_files)} PDF files.")
        
        for pdf_file in pdf_files:
            full_path = os.path.join(DATA_PATH, pdf_file)
            if is_processed(full_path):
                print(f"⏩ Skipping (already processed): {pdf_file}")
                continue
            run_pipeline(full_path)
            
    elif os.path.isfile(DATA_PATH):
        print(f"📄 Detected Single File: {DATA_PATH}")
        run_pipeline(DATA_PATH)
        
    else:
        print(f"Error: Could not find {DATA_PATH}. Please check the path.")