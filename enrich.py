import os
from dotenv import load_dotenv

from agents.kegg_agent import fetch_kegg_data
from agents.string_agent import fetch_string_data
from agents.clinical_trials_agent import fetch_clinical_trials_data
from agents.neo4j_loader_agent import write_to_neo4j

# Load Neo4j credentials from .env
load_dotenv()


def run_enrichment():
    """
    Enriches the existing Parkinson's Knowledge Graph with data from:
      - KEGG REST API       (genes & pathways)
      - STRING API          (protein-protein interactions)
      - ClinicalTrials.gov  (clinical trials & drugs)
    """
    print("=" * 60)
    print("🔬  Starting KG Enrichment Pipeline")
    print("=" * 60)

    # ── Phase 2a: KEGG ────────────────────────────────────────────
    print("\n[Phase 2a]  KEGG Biological Database")
    print("-" * 60)
    kegg_data = fetch_kegg_data()
    write_to_neo4j(kegg_data)

    # ── Phase 2b: STRING ──────────────────────────────────────────
    print("\n[Phase 2b]  STRING Protein–Protein Interactions")
    print("-" * 60)
    string_data = fetch_string_data()
    write_to_neo4j(string_data)

    # ── Phase 3: ClinicalTrials.gov ───────────────────────────────
    print("\n[Phase 3]   ClinicalTrials.gov")
    print("-" * 60)
    ct_data = fetch_clinical_trials_data(max_trials=200)
    write_to_neo4j(ct_data)

    print("\n" + "=" * 60)
    print("✅  Enrichment complete! Run the following in Neo4j Browser")
    print("    to verify new nodes:")
    print()
    print("    MATCH (n) RETURN labels(n)[0] AS label, count(n) AS count")
    print("    ORDER BY count DESC")
    print("=" * 60)


if __name__ == "__main__":
    run_enrichment()
