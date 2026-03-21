import requests
from typing import List, Dict, Any

CT_API_BASE = "https://clinicaltrials.gov/api/v2/studies"
PAGE_SIZE = 100  # Max allowed by the API


def _clean_node_id(name: str, suffix: str = "") -> str:
    """Normalizes a name into a safe Neo4j node ID."""
    return (
        name.strip()
        .replace(" ", "")
        .replace("-", "")
        .replace("/", "")
        .replace("(", "")
        .replace(")", "")
        .replace(",", "")
        + suffix
    )


def fetch_clinical_trials_data(max_trials: int = 200) -> Dict[str, List[Any]]:
    """
    Fetches Parkinson's Disease clinical trials from ClinicalTrials.gov REST API v2.

    Extracts ClinicalTrial nodes and INVESTIGATES relationships linking
    trials to Drug/Intervention nodes.

    Args:
        max_trials: Maximum number of trial records to fetch.

    Returns:
        Dict with 'nodes' (ClinicalTrial, Drug) and 'relationships' (INVESTIGATES).
    """
    print("\n--- AGENT: CLINICAL TRIALS LOADER STARTING ---")
    nodes = []
    relationships = []
    seen_ids = set()

    params = {
        "query.cond": "Parkinson's Disease",
        "pageSize": PAGE_SIZE,
        "format": "json",
    }

    trials_fetched = 0
    next_page_token = None
    page = 1

    print(f"  Fetching up to {max_trials} trials from ClinicalTrials.gov...")

    while trials_fetched < max_trials:
        if next_page_token:
            params["pageToken"] = next_page_token
        elif "pageToken" in params:
            del params["pageToken"]

        try:
            resp = requests.get(CT_API_BASE, params=params, timeout=30)
            resp.raise_for_status()
            data = resp.json()
        except Exception as e:
            print(f"  ❌ ERROR on page {page}: {e}")
            break

        studies = data.get("studies", [])
        if not studies:
            print("  No more studies found.")
            break

        for study in studies:
            if trials_fetched >= max_trials:
                break

            protocol = study.get("protocolSection", {})

            # --- Identification ---
            id_module = protocol.get("identificationModule", {})
            nct_id = id_module.get("nctId", "")
            title = id_module.get("briefTitle", "")
            if not nct_id:
                continue

            # --- Status ---
            status_module = protocol.get("statusModule", {})
            status = status_module.get("overallStatus", "UNKNOWN")

            # --- ClinicalTrial Node ---
            trial_node_id = nct_id  # e.g. NCT01234567
            if trial_node_id not in seen_ids:
                nodes.append({
                    "id": trial_node_id,
                    "type": "ClinicalTrial",
                    "name": title[:120] if title else nct_id,
                    "status": status,
                })
                seen_ids.add(trial_node_id)
                trials_fetched += 1

            # --- Interventions → Drug nodes ---
            arms_module = protocol.get("armsInterventionsModule", {})
            interventions = arms_module.get("interventions", [])

            for intervention in interventions:
                int_name = intervention.get("name", "").strip()
                int_type = intervention.get("type", "OTHER")
                if not int_name:
                    continue

                # Only link Drug / Biological interventions (skip "Other", "Procedure", etc.)
                if int_type.upper() not in ("DRUG", "BIOLOGICAL", "GENETIC"):
                    continue

                drug_node_id = _clean_node_id(int_name, suffix="Drug")
                if drug_node_id not in seen_ids:
                    nodes.append({
                        "id": drug_node_id,
                        "type": "Drug",
                        "name": int_name,
                    })
                    seen_ids.add(drug_node_id)

                relationships.append({
                    "source_id": trial_node_id,
                    "target_id": drug_node_id,
                    "type": "INVESTIGATES",
                })

        next_page_token = data.get("nextPageToken")
        print(f"  Page {page}: fetched {trials_fetched} trials so far...")
        page += 1

        if not next_page_token:
            break

    print(f"✅ Clinical Trials: {len(nodes)} nodes, {len(relationships)} relationships extracted.")
    return {"nodes": nodes, "relationships": relationships}
