import requests
from typing import List, Dict, Any

STRING_API = "https://string-db.org/api/json"
SPECIES_HUMAN = 9606
MIN_SCORE = 700  # STRING uses 0-1000 scale; 700 = 0.7 confidence

# Known Parkinson's-related seed proteins to query
SEED_PROTEINS = [
    "LRRK2", "SNCA", "PINK1", "PRKN", "GBA",
    "DJ1",   "VPS35", "CHCHD2", "DNAJC6", "SYNJ1",
    "ATP13A2", "PLA2G6", "FBXO7", "MAPT", "UCHL1",
]


def fetch_string_data() -> Dict[str, List[Any]]:
    """
    Fetches protein-protein interaction data from the STRING database for
    known Parkinson's-related seed proteins.

    Returns:
        Dict with 'nodes' (Protein) and 'relationships' (INTERACTS_WITH).
    """
    print("\n--- AGENT: STRING LOADER STARTING ---")
    nodes = []
    relationships = []
    seen_ids = set()

    # --- Step 1: Resolve seed protein names to STRING IDs ---
    print(f"  Resolving {len(SEED_PROTEINS)} seed proteins via STRING...")
    try:
        resp = requests.post(
            f"{STRING_API}/get_string_ids",
            data={
                "identifiers": "\r\n".join(SEED_PROTEINS),
                "species": SPECIES_HUMAN,
                "limit": 1,  # Best match per protein
                "caller_identity": "parkinsons_kg_project",
            },
            timeout=30,
        )
        resp.raise_for_status()
        resolved = resp.json()
    except Exception as e:
        print(f"❌ ERROR resolving STRING identifiers: {e}")
        return {"nodes": [], "relationships": []}

    # Build STRING ID list and add seed proteins as Protein nodes
    string_ids = []
    for entry in resolved:
        preferred = entry.get("preferredName", "")
        sid = entry.get("stringId", "")
        if preferred and sid:
            string_ids.append(sid)
            node_id = preferred + "Protein"
            if node_id not in seen_ids:
                nodes.append({"id": node_id, "type": "Protein", "name": preferred})
                seen_ids.add(node_id)

    print(f"  Resolved {len(string_ids)} proteins. Fetching interaction network...")

    # --- Step 2: Fetch the interaction network ---
    try:
        resp = requests.post(
            f"{STRING_API}/network",
            data={
                "identifiers": "\r\n".join(string_ids),
                "species": SPECIES_HUMAN,
                "required_score": MIN_SCORE,
                "network_type": "functional",
                "caller_identity": "parkinsons_kg_project",
            },
            timeout=60,
        )
        resp.raise_for_status()
        interactions = resp.json()
    except Exception as e:
        print(f"❌ ERROR fetching STRING network: {e}")
        return {"nodes": nodes, "relationships": relationships}

    # --- Step 3: Parse interactions and build relationships ---
    for interaction in interactions:
        prot_a = interaction.get("preferredName_A", "")
        prot_b = interaction.get("preferredName_B", "")

        if not prot_a or not prot_b:
            continue

        node_id_a = prot_a + "Protein"
        node_id_b = prot_b + "Protein"

        # Add any new proteins we encounter
        for nid, name in [(node_id_a, prot_a), (node_id_b, prot_b)]:
            if nid not in seen_ids:
                nodes.append({"id": nid, "type": "Protein", "name": name})
                seen_ids.add(nid)

        relationships.append({
            "source_id": node_id_a,
            "target_id": node_id_b,
            "type": "INTERACTS_WITH",
        })

    print(f"✅ STRING: {len(nodes)} proteins, {len(relationships)} interactions extracted.")
    return {"nodes": nodes, "relationships": relationships}
