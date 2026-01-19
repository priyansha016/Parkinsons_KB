# agents/pdf_loader_agent.py

import os
import fitz # PyMuPDF
from typing import Dict, Any
from utils.models import GraphState # Import the shared state

# Define the function for the PDF loading node
def load_document(state: GraphState) -> Dict[str, Any]:
    """
    LangGraph node function to load text from a PDF file path using PyMuPDF (fitz) 
    for better structural preservation.
    """
    print("\n--- NODE: PDF LOADER STARTING ---")
    file_path = state["file_path"]
    full_text = ""

    if not file_path or not os.path.exists(file_path):
        print(f"❌ ERROR: File path not found or missing: {file_path}")
        return {
            "text": "",
            "error_message": "PDF file not found."
        }

    try:
        with fitz.open(file_path) as doc:
            print(f"Loading {doc.page_count} pages from {file_path}...")
            
            # Use 'text' method to preserve reading order (best for scientific papers)
            for page in doc:
                full_text += page.get_text("text") + "\n\n"
        
        print(f"✅ SUCCESS: Loaded text of length: {len(full_text)}")
        
        # Return the extracted text to the state's 'text' key
        return {
            "text": full_text, 
            "error_message": None 
        }

    except Exception as e:
        print(f"❌ ERROR loading PDF with PyMuPDF: {e}")
        return {
            "text": "",
            "error_message": str(e)
        }