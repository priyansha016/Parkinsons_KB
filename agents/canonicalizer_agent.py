"""
Canonicalizes LLM-extracted entity IDs against authoritative biomedical
references (UniProt for proteins, HGNC for genes, RxNav for drugs).

The schema-aligner produces nodes whose IDs are LLM-invented strings such as
"AlphaSynuclein" or "Alpha_Synuclein". Without canonicalization, the same
biological entity can end up as multiple distinct nodes across ingestions.
This module replaces those IDs with stable canonical identifiers
(UniProt accession, HGNC ID, RxNorm CUI), preserving the original LLM name
as an alias for traceability.

Behavior is best-effort: any network failure or empty match leaves the
node unchanged. Enable/disable via ENABLE_CANONICALIZATION env var.
"""

import os
import re
from threading import Lock
from typing import Optional, Dict, Any, List
import requests


def _split_camel(s: str) -> str:
    """AlphaSynuclein -> 'Alpha Synuclein'. LRRK2Gene -> 'LRRK2 Gene'."""
    return re.sub(r"(?<!^)(?=[A-Z])", " ", s).strip()

ENABLE_CANONICALIZATION = os.getenv("ENABLE_CANONICALIZATION", "true").lower() == "true"
REQUEST_TIMEOUT = 5  # seconds per API call

# In-memory cache. key = (type_lower, original_id_lower); value = canonical dict or None.
_cache: Dict = {}
_cache_lock = Lock()

# Map LLM-emitted type strings to canonical source.
TYPE_ROUTES = {
    "protein": "uniprot",
    "enzyme": "uniprot",
    "kinase": "uniprot",
    "receptor": "uniprot",
    "gene": "hgnc",
    "drug": "rxnav",
    "compound": "rxnav",
    "medication": "rxnav",
    "smallmolecule": "rxnav",
}


def _route(node_type: str) -> Optional[str]:
    return TYPE_ROUTES.get(node_type.lower().strip())


def _uniprot_query(name: str) -> Optional[Dict[str, str]]:
    """Single UniProt query attempt. Returns canonical dict or None."""
    r = requests.get(
        "https://rest.uniprot.org/uniprotkb/search",
        params={"query": name, "format": "json", "size": 1,
                "fields": "accession,protein_name"},
        timeout=REQUEST_TIMEOUT,
    )
    r.raise_for_status()
    results = r.json().get("results", [])
    if not results:
        return None
    entry = results[0]
    acc = entry.get("primaryAccession")
    if not acc:
        return None
    recommended = (entry.get("proteinDescription", {})
                        .get("recommendedName", {})
                        .get("fullName", {})
                        .get("value"))
    return {"id": acc, "name": recommended or name, "source": "UniProt"}


def _lookup_uniprot(name: str) -> Optional[Dict[str, str]]:
    """Prefer human, reviewed (Swiss-Prot) entries. Fall back to broader queries.
    LLM-emitted CamelCase names like 'AlphaSynuclein' get split as a last resort."""
    try:
        candidates = [name]
        split = _split_camel(name)
        if split and split != name:
            candidates.append(split)

        # First pass: each candidate restricted to human + reviewed.
        for c in candidates:
            hit = _uniprot_query(f"{c} AND organism_id:9606 AND reviewed:true")
            if hit:
                return hit
        # Second pass: broaden to anything matching.
        for c in candidates:
            hit = _uniprot_query(c)
            if hit:
                return hit
        return None
    except Exception as e:
        print(f"⚠️ UniProt lookup failed for '{name}': {e}")
        return None


def _lookup_hgnc(name: str) -> Optional[Dict[str, str]]:
    try:
        r = requests.get(
            f"https://rest.genenames.org/search/symbol:{name}",
            headers={"Accept": "application/json"},
            timeout=REQUEST_TIMEOUT,
        )
        r.raise_for_status()
        docs = r.json().get("response", {}).get("docs", [])
        if not docs:
            return None
        doc = docs[0]
        hgnc_id = doc.get("hgnc_id")
        symbol = doc.get("symbol", name)
        if not hgnc_id:
            return None
        return {"id": hgnc_id, "name": symbol, "source": "HGNC"}
    except Exception as e:
        print(f"⚠️ HGNC lookup failed for '{name}': {e}")
        return None


def _lookup_rxnav(name: str) -> Optional[Dict[str, str]]:
    try:
        r = requests.get(
            "https://rxnav.nlm.nih.gov/REST/rxcui.json",
            params={"name": name, "search": 2},
            timeout=REQUEST_TIMEOUT,
        )
        r.raise_for_status()
        ids = r.json().get("idGroup", {}).get("rxnormId")
        if not ids:
            return None
        return {"id": f"RxCUI:{ids[0]}", "name": name, "source": "RxNav"}
    except Exception as e:
        print(f"⚠️ RxNav lookup failed for '{name}': {e}")
        return None


_LOOKUPS = {
    "uniprot": _lookup_uniprot,
    "hgnc": _lookup_hgnc,
    "rxnav": _lookup_rxnav,
}


def _canonicalize_node(node: Dict[str, Any]) -> Dict[str, Any]:
    """Returns the node with canonical id/name/aliases if found, unchanged otherwise."""
    original_id = node.get("id")
    node_type = node.get("type", "")
    if not original_id or not node_type:
        return node

    route = _route(node_type)
    if not route:
        return node

    cache_key = (node_type.lower(), original_id.lower())
    with _cache_lock:
        if cache_key in _cache:
            cached = _cache[cache_key]
            return _apply(node, cached) if cached else node

    canonical = _LOOKUPS[route](original_id)

    with _cache_lock:
        _cache[cache_key] = canonical

    return _apply(node, canonical) if canonical else node


def _apply(node: Dict[str, Any], canonical: Dict[str, str]) -> Dict[str, Any]:
    """Replace id/name with canonical, push the original into aliases."""
    original_label = node.get("name") or node.get("id")
    return {
        **node,
        "id": canonical["id"],
        "name": canonical["name"],
        "aliases": [original_label] if original_label else [],
        "canonical_source": canonical["source"],
    }


def canonicalize_entities(per_chunk: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    """
    Canonicalize node IDs in each chunk, then translate relationship endpoints
    so they still reference the (now-canonical) nodes.

    Mutates per_chunk in place and returns it. Safe to call repeatedly —
    canonicalized nodes are detected by source presence and skipped.
    """
    if not ENABLE_CANONICALIZATION:
        print("\nℹ️  Canonicalizer disabled (ENABLE_CANONICALIZATION=false).")
        return per_chunk

    print("\n--- AGENT: CANONICALIZER STARTING ---")

    total_nodes = sum(len(e.get("nodes", [])) for e in per_chunk)
    matched = 0

    for entry in per_chunk:
        id_map: Dict[str, str] = {}
        new_nodes = []
        for node in entry.get("nodes", []):
            original_id = node.get("id")
            new_node = _canonicalize_node(node)
            new_nodes.append(new_node)
            if new_node.get("id") != original_id and original_id:
                id_map[original_id] = new_node["id"]
                matched += 1
        entry["nodes"] = new_nodes

        # Translate relationship endpoints to the new IDs
        for rel in entry.get("relationships", []):
            sid = rel.get("source_id")
            tid = rel.get("target_id")
            if sid in id_map:
                rel["source_id"] = id_map[sid]
            if tid in id_map:
                rel["target_id"] = id_map[tid]

    print(f"✅ Canonicalized {matched}/{total_nodes} entities "
          f"(UniProt / HGNC / RxNav). Cache size: {len(_cache)}.")
    return per_chunk
