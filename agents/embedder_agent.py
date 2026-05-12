import concurrent.futures
from typing import List, Dict, Any
from langchain_ollama import OllamaEmbeddings

EMBED_MODEL = "nomic-embed-text"
EMBED_DIM = 768

_embeddings = OllamaEmbeddings(model=EMBED_MODEL)


def embed_chunks(per_chunk: List[Dict[str, Any]],
                 max_workers: int = 4) -> List[Dict[str, Any]]:
    """
    Adds an 'embedding' field to each chunk_metadata via Ollama's
    nomic-embed-text model. Parallelized to keep ingestion responsive.

    Returns the same per_chunk list, mutated in place.
    """
    print(f"\n--- AGENT: EMBEDDER STARTING ({EMBED_MODEL}) ---")

    def embed_one(item):
        idx, text = item
        if not text:
            return idx, None
        try:
            return idx, _embeddings.embed_query(text)
        except Exception as e:
            print(f"⚠️ embed failed for chunk {idx}: {e}")
            return idx, None

    items = [(i, e["chunk_metadata"].get("text", "")) for i, e in enumerate(per_chunk)]

    with concurrent.futures.ThreadPoolExecutor(max_workers=max_workers) as ex:
        results = list(ex.map(embed_one, items))

    for idx, vec in results:
        if vec is not None:
            per_chunk[idx]["chunk_metadata"]["embedding"] = vec

    embedded = sum(1 for r in per_chunk if r["chunk_metadata"].get("embedding"))
    print(f"✅ Embedded {embedded}/{len(per_chunk)} chunks ({EMBED_DIM}-dim).")
    return per_chunk


def embed_query(text: str) -> List[float]:
    """Embed a single query for vector search at query time."""
    return _embeddings.embed_query(text)
