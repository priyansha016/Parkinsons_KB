import requests
import time
from typing import List, Dict, Any

KEGG_BASE = "https://rest.kegg.jp"
PARKINSON_PATHWAY = "hsa05012"  # KEGG Parkinson's Disease pathway (human)
BATCH_SIZE = 10


def fetch_kegg_data() -> Dict[str, List[Any]]:
    """
    Fetches genes and pathway data for Parkinson's disease from the KEGG REST API.

    Returns:
        Dict with 'nodes' (Gene, Pathway) and 'relationships' (PART_OF_PATHWAY).
    """
    print("\n--- AGENT: KEGG LOADER STARTING ---")
    nodes = []
    relationships = []
    seen_ids = set()

    # --- Step 1: Add the Parkinson's pathway node ---
    pathway_node_id = "ParkinsonsPathway_hsa05012"
    nodes.append({"id": pathway_node_id, "type": "Pathway", "name": "Parkinson's Disease Pathway (KEGG hsa05012)"})
    seen_ids.add(pathway_node_id)

    # --- Step 2: Get all gene IDs linked to this pathway ---
    print(f"  Fetching gene IDs from KEGG pathway {PARKINSON_PATHWAY}...")
    try:
        resp = requests.get(f"{KEGG_BASE}/link/hsa/{PARKINSON_PATHWAY}", timeout=30)
        resp.raise_for_status()
    except Exception as e:
        print(f"❌ ERROR fetching KEGG pathway genes: {e}")
        return {"nodes": nodes, "relationships": relationships}

    # Response format: "hsa05012\thsa:10000" (one line per gene)
    gene_ids = []
    for line in resp.text.strip().split("\n"):
        if "\t" in line:
            _, gene_part = line.split("\t", 1)
            gene_ids.append(gene_part.strip())  # e.g., "hsa:10000"

    print(f"  Found {len(gene_ids)} genes. Fetching names in batches of {BATCH_SIZE}...")

    # --- Step 3: Batch-fetch gene names ---
    for i in range(0, len(gene_ids), BATCH_SIZE):
        batch = gene_ids[i : i + BATCH_SIZE]
        query = "+".join(batch)
        try:
            resp = requests.get(f"{KEGG_BASE}/list/{query}", timeout=30)
            if resp.status_code != 200:
                print(f"  ⚠️  Batch {i // BATCH_SIZE + 1}: status {resp.status_code}, skipping.")
                continue

            for line in resp.text.strip().split("\n"):
                if "\t" not in line:
                    continue
                kegg_id, description = line.split("\t", 1)

                # Grab the gene symbol: first token before semicolon or comma
                symbol = description.split(";")[0].split(",")[0].strip().split(" ")[0]
                node_id = (symbol + "Gene").replace("-", "").replace("/", "").replace(" ", "")
                if not node_id or node_id == "Gene":
                    node_id = kegg_id.replace("hsa:", "") + "Gene"

                if node_id not in seen_ids:
                    nodes.append({"id": node_id, "type": "Gene", "name": symbol})
                    seen_ids.add(node_id)

                relationships.append({
                    "source_id": node_id,
                    "target_id": pathway_node_id,
                    "type": "PART_OF_PATHWAY",
                })

        except Exception as e:
            print(f"  ⚠️  Batch {i // BATCH_SIZE + 1} error: {e}")

        time.sleep(0.3)  # Be polite to KEGG's rate limits

    print(f"✅ KEGG: {len(nodes)} nodes, {len(relationships)} relationships extracted.")
    return {"nodes": nodes, "relationships": relationships}
