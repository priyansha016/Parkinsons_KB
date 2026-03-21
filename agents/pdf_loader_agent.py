import os
import fitz  # PyMuPDF
from typing import List
from langchain_text_splitters import RecursiveCharacterTextSplitter
from langchain_core.documents import Document

def load_document(file_path: str) -> List[Document]:
    """
    Loads text from a PDF file and splits it into manageable chunks.
    
    Args:
        file_path (str): The absolute path to the PDF file.
        
    Returns:
        List[Document]: A list of LangChain Document objects containing the chunked text.
    """
    print(f"\n--- AGENT: PDF LOADER STARTING for {os.path.basename(file_path)} ---")
    
    if not file_path or not os.path.exists(file_path):
        print(f"❌ ERROR: File path not found: {file_path}")
        return []

    full_text = ""
    try:
        with fitz.open(file_path) as doc:
            print(f"Loading {doc.page_count} pages...")
            for page in doc:
                full_text += page.get_text("text") + "\n\n"
        
        print(f"✅ Extracted raw text length: {len(full_text)}")
        
        # Split the text into chunks
        text_splitter = RecursiveCharacterTextSplitter(
            chunk_size=2000,
            chunk_overlap=200,
            separators=["\n\n", "\n", " ", ""]
        )
        
        # Create a single document first (or split directly from text)
        # We wrap it in a Document to keep metadata if needed later
        docs = [Document(page_content=full_text, metadata={"source": file_path})]
        
        split_docs = text_splitter.split_documents(docs)
        print(f"✅ Split into {len(split_docs)} chunks.")
        
        return split_docs

    except Exception as e:
        print(f"❌ ERROR loading PDF: {e}")
        return []
