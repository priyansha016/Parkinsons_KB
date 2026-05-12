import os
import hashlib
from typing import List
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_core.documents import Document
import fitz  # PyMuPDF


def _chunk_id(paper_id: str, page: int, idx: int, text: str) -> str:
    """Stable chunk ID: paper + page + first 8 chars of content hash."""
    h = hashlib.sha1(text[:512].encode("utf-8", errors="ignore")).hexdigest()[:8]
    return f"{paper_id}::p{page}::{idx}::{h}"


def load_document(file_path: str) -> List[Document]:
    """
    Loads text from a PDF, splits it into chunks, and attaches provenance
    metadata to each chunk (paper_id, page number, chunk_id).
    """
    print(f"\n--- AGENT: PDF LOADER STARTING for {os.path.basename(file_path)} ---")

    if not file_path or not os.path.exists(file_path):
        print(f"❌ ERROR: File path not found: {file_path}")
        return []

    paper_id = os.path.basename(file_path)
    splitter = RecursiveCharacterTextSplitter(
        chunk_size=2000,
        chunk_overlap=200,
        separators=["\n\n", "\n", " ", ""],
    )

    all_chunks: List[Document] = []

    try:
        with fitz.open(file_path) as doc:
            print(f"Loading {doc.page_count} pages...")
            for page_num, page in enumerate(doc, start=1):
                page_text = page.get_text("text").strip()
                if not page_text:
                    continue

                # Split *within* the page so chunks inherit a real page number
                page_chunks = splitter.split_text(page_text)
                for idx, chunk_text in enumerate(page_chunks):
                    cid = _chunk_id(paper_id, page_num, idx, chunk_text)
                    all_chunks.append(Document(
                        page_content=chunk_text,
                        metadata={
                            "source": file_path,
                            "paper_id": paper_id,
                            "page": page_num,
                            "chunk_index": idx,
                            "chunk_id": cid,
                        },
                    ))

        print(f"✅ Split {paper_id} into {len(all_chunks)} chunks across pages.")
        return all_chunks

    except Exception as e:
        print(f"❌ ERROR loading PDF: {e}")
        return []
