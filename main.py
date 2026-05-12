import os
import sys
from dotenv import load_dotenv

from agents.pdf_loader_agent import load_document
from agents.schema_aligner_agent import extract_schema_from_text
from agents.canonicalizer_agent import canonicalize_entities
from agents.embedder_agent import embed_chunks
from agents.neo4j_loader_agent import write_chunked_to_neo4j

load_dotenv()

PROCESSED_LOG = "processed_files.txt"


def is_processed(file_path: str) -> bool:
    if not os.path.exists(PROCESSED_LOG):
        return False
    with open(PROCESSED_LOG, "r") as f:
        return os.path.basename(file_path) in f.read().splitlines()


def mark_as_processed(file_path: str) -> None:
    with open(PROCESSED_LOG, "a") as f:
        f.write(os.path.basename(file_path) + "\n")


def run_pipeline(pdf_filename: str) -> None:
    """PDF → chunks → per-chunk LLM extraction → Neo4j with provenance."""
    print(f"🚀 Starting RAG Pipeline for: {pdf_filename}")

    chunks = load_document(pdf_filename)
    print(f"{len(chunks)} text chunks created.")
    if not chunks:
        return

    per_chunk = extract_schema_from_text(chunks)
    per_chunk = canonicalize_entities(per_chunk)
    per_chunk = embed_chunks(per_chunk)

    paper_metadata = {"source_path": pdf_filename}
    write_chunked_to_neo4j(per_chunk, paper_metadata=paper_metadata)

    mark_as_processed(pdf_filename)


if __name__ == "__main__":
    # Priority: CLI arg → env var → fallback to ./data/pdfs
    DATA_PATH = (
        sys.argv[1] if len(sys.argv) > 1
        else os.getenv("DATA_PATH", "./data/pdfs")
    )

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
        print(f"❌ Could not find {DATA_PATH}.")
        print("Provide a path as the first argument, set DATA_PATH env var, "
              "or create ./data/pdfs/ with your PDFs.")
        sys.exit(1)
