import os
import threading
from typing import List, Dict, Any, Optional, Tuple, Iterator
from langchain_ollama import ChatOllama
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.output_parsers import StrOutputParser
from neo4j import GraphDatabase, basic_auth
from dotenv import load_dotenv

from agents.embedder_agent import embed_query
from agents.neo4j_loader_agent import ensure_vector_index, VECTOR_INDEX_NAME

load_dotenv()

# If the top-scoring vector chunk is at least this similar to the question,
# skip Cypher generation entirely — the passages are good enough and Cypher
# would just add ~30s of LLM latency without improving the answer.
# Bumped to 0.85 after observing that with a small chunk corpus, many
# off-topic questions still score ~0.75-0.80 just by virtue of being the
# closest match. 0.85 is a stronger signal that the passages truly answer
# the question.
VECTOR_CONFIDENCE_THRESHOLD = 0.85

# How many prior turns of conversation to include in the synthesis prompt
# so the model can interpret follow-up questions in context.
HISTORY_TURNS_FOR_SYNTHESIS = 3


class QueryAgent:
    def __init__(self):
        self.llm = ChatOllama(model="gemma3:4b", temperature=0.0)

        uri = os.getenv("NEO4J_URI", "bolt://localhost:7687")
        user = os.getenv("NEO4J_USERNAME", "neo4j")
        password = os.getenv("NEO4J_PASSWORD", "password")
        self.driver = GraphDatabase.driver(uri, auth=basic_auth(user, password))

        self.cached_schema: Optional[str] = None

        # Diagnostics from the most recent ask() / ask_stream() call.
        # The Streamlit UI surfaces these in a "Query details" expander.
        self.last_cypher: Optional[str] = None
        self.last_chunks: List[Dict[str, Any]] = []
        self.last_skip_reason: Optional[str] = None
        self.last_resolved_q: Optional[str] = None
        self.last_original_q: Optional[str] = None

        # Ensure the chunk vector index exists (idempotent).
        try:
            with self.driver.session() as session:
                ensure_vector_index(session)
        except Exception as e:
            print(f"⚠️ Vector index init in QueryAgent: {e}")

        # Warm up Ollama in the background so the first user query doesn't
        # pay the model-load cost.
        threading.Thread(target=self._warmup, daemon=True).start()

    def _warmup(self):
        try:
            self.llm.invoke("hi")
        except Exception:
            pass

    def _vector_search(self, question: str, k: int = 5) -> List[Dict[str, Any]]:
        """Embed the question and return top-k semantically similar chunks
        with their source paper. Empty list if no chunks exist or model fails."""
        try:
            vec = embed_query(question)
        except Exception as e:
            print(f"⚠️ Question embedding failed: {e}")
            return []

        try:
            with self.driver.session() as session:
                rows = session.run(
                    f"CALL db.index.vector.queryNodes('{VECTOR_INDEX_NAME}', $k, $vec) "
                    f"YIELD node, score "
                    f"OPTIONAL MATCH (node)<-[:HAS_CHUNK]-(p:Paper) "
                    f"RETURN node.text AS text, node.page AS page, "
                    f"       p.id AS paper, score "
                    f"ORDER BY score DESC",
                    k=k, vec=vec,
                ).data()
            return rows
        except Exception as e:
            # Most common reason: no Chunk nodes yet (cold start)
            print(f"⚠️ Vector search returned nothing: {e}")
            return []

    def _get_schema(self) -> str:
        """Labels, relationship types, property keys, and sample values per label."""
        if self.cached_schema:
            return self.cached_schema

        with self.driver.session() as session:
            labels = session.run("CALL db.labels()").value()
            rel_types = session.run("CALL db.relationshipTypes()").value()
            props: Dict[str, List[str]] = {}
            samples: Dict[str, List[str]] = {}
            for label in labels:
                keys = session.run(
                    f"MATCH (n:`{label}`) RETURN keys(n) LIMIT 1"
                ).value()
                if keys:
                    props[label] = keys[0]
                    if "name" in keys[0]:
                        vals = session.run(
                            f"MATCH (n:`{label}`) WHERE n.name IS NOT NULL "
                            f"RETURN DISTINCT n.name LIMIT 5"
                        ).value()
                        if vals:
                            samples[label] = vals

        sample_lines = "\n".join(
            f"  {label} sample names: {names}" for label, names in samples.items()
        ) or "  (none)"

        self.cached_schema = (
            f"Node Labels: {labels}\n"
            f"Relationship Types: {rel_types}\n"
            f"Property Keys: {props}\n"
            f"Sample Values:\n{sample_lines}"
        )
        return self.cached_schema

    def _resolve_pronouns(self, question: str, chat_history: List[Dict[str, str]]) -> str:
        """Rewrite a follow-up as a standalone question, using conversation
        history. Runs unconditionally when history exists — the previous
        keyword heuristic ('it', 'they', ...) missed real follow-ups like
        'on physical level, what are the symptoms', where the context cue
        is an implicit definite article rather than a pronoun.

        The prompt is tuned to return the question verbatim when it's
        already standalone, so cost on genuinely-fresh questions is bounded."""
        if not chat_history:
            return question

        history_str = "\n".join(
            f"{m['role']}: {m['content']}" for m in chat_history[-3:]
        )

        prompt = ChatPromptTemplate.from_template("""
Rewrite the follow-up question to be self-contained, ONLY filling in
references that are genuinely missing from the question text.

Fill in:
- Pronouns (it, they, this) → the entity they refer to
- Definite back-references ("the symptoms" → "the {{topic}}'s symptoms" if topic was named)
- Sentence fragments that depend on prior context ("on physical level" → expand)

DO NOT:
- Add topical anchors that aren't in the original question (e.g. don't
  add "related to LRRK2" just because LRRK2 was the previous topic)
- Narrow a broad question into a specific one
- Change the scope of the question

If the question is already self-contained, return it VERBATIM.

Return ONLY the rewritten question. No preamble, no quotes, no commentary.

History:
{history}

Follow-up: {question}

Standalone question:""")

        chain = prompt | self.llm | StrOutputParser()
        try:
            rewritten = chain.invoke({"history": history_str, "question": question}).strip()
            # Strip accidental wrappers some models add
            rewritten = rewritten.strip('"').strip("'").strip()
            return rewritten or question
        except Exception:
            return question

    def _generate_cypher(self, question: str, schema: str) -> str:
        """Generate Cypher with few-shot examples + sampled schema values."""
        prompt = ChatPromptTemplate.from_template("""
Task: Create a Cypher query based on the schema and examples below.

Schema:
{schema}

Examples:
Q: "drugs for parkinson"
Cypher: MATCH (t:ClinicalTrial)-[:INVESTIGATES]->(d:Drug) WHERE toLower(t.name) CONTAINS 'parkinson' RETURN d.name, t.status

Q: "pathways for LRRK2"
Cypher: MATCH (g:Gene)-[:PART_OF_PATHWAY]->(p:Pathway) WHERE toLower(g.name) CONTAINS 'lrrk2' RETURN p.name

Q: "proteins interacting with SNCA"
Cypher: MATCH (p1:Protein)-[:INTERACTS_WITH]-(p2:Protein) WHERE toLower(p1.name) CONTAINS 'snca' RETURN p2.name

Rules:
1. Use ONLY the labels and relationships provided in the Schema.
2. For clinical trials, ALWAYS use (t:ClinicalTrial)-[:INVESTIGATES]->(d:Drug).
3. ALWAYS use fuzzy matching: WHERE toLower(n.name) CONTAINS 'term'.
   Some nodes also have an `aliases` list (canonicalized via UniProt/HGNC/RxNav).
   To match either, prefer:
     WHERE toLower(n.name) CONTAINS 'term' OR ANY(a IN coalesce(n.aliases,[]) WHERE toLower(a) CONTAINS 'term')
4. Prefer terms that resemble the Sample Values shown in the schema.
5. NEVER guess or hardcode list of drug or gene names. Query the DB to find them.
6. Keep queries syntactically simple (use a single MATCH clause). DO NOT chain MATCH patterns with OR.
7. DO NOT use properties like d.approved, d.fda_approved, or t.drug. They do not exist.
8. Return ONLY the raw Cypher string. No preamble.

Question: {question}
Cypher Query:
""")

        chain = prompt | self.llm | StrOutputParser()
        raw_output = chain.invoke({"question": question, "schema": schema}).strip()
        return self._extract_cypher(raw_output)

    def _extract_cypher(self, raw: str) -> str:
        lines = raw.split("\n")
        cypher_lines: List[str] = []
        found_match = False
        keywords = ["MATCH", "WHERE", "RETURN", "WITH", "LIMIT", "UNWIND",
                    "OPTIONAL", "MERGE", "CREATE", "SET"]
        for line in lines:
            clean = line.strip()
            if any(clean.upper().startswith(k) for k in keywords):
                found_match = True
                cypher_lines.append(clean)
            elif found_match and clean:
                if len(clean.split()) > 10:
                    break
                cypher_lines.append(clean)
            elif found_match and not clean:
                break
        return "\n".join(cypher_lines).strip().rstrip("`").rstrip(".")

    def _fix_cypher(self, cypher: str) -> str:
        """Rule-based safety net for common medical-query hallucinations."""
        import re

        for s in ['COMPLETED', 'RECRUITING', 'NOT_YET_RECRUITING',
                  'ACTIVE_NOT_RECRUITING', 'TERMINATED', 'WITHDRAWN', 'UNKNOWN']:
            cypher = re.sub(rf"status\s*=\s*['\"]{s}['\"]", f"status = '{s}'",
                            cypher, flags=re.IGNORECASE)

        ongoing_statuses = ['in progress', 'ongoing', 'active', 'in trial',
                            'trial phase', 'recruiting']
        for s in ongoing_statuses:
            cypher = re.sub(rf"status\s*=\s*['\"]{s}['\"]", "status = 'RECRUITING'",
                            cypher, flags=re.IGNORECASE)

        cypher = re.sub(r"(t\.)?status\s*=\s*['\"]approved['\"]",
                        "t.status = 'COMPLETED'", cypher, flags=re.IGNORECASE)
        cypher = re.sub(r"\b(AND|OR)?\s*d\.(fda_)?approved\s*=\s*\w+", "",
                        cypher, flags=re.IGNORECASE)

        replacements = {
            "INDICATED_FOR": "name",
            "approval_status": "name",
            "[:STUDIES]": "[:INVESTIGATES]",
            "t.drug": "d.name",
            "[:TREATS]": "[:INVESTIGATES]"
        }
        for old, new in replacements.items():
            if old in cypher:
                cypher = cypher.replace(old, new)

        # Only trigger the Parkinson's-specific rewrite when 'parkinson' or 'pd'
        # appears as a quoted CONTAINS argument, not as an incidental substring
        # (which previously matched things like UPDATED, compound, etc.).
        pd_in_quotes = re.search(
            r"CONTAINS\s+['\"](parkinson[^'\"]*|pd)['\"]",
            cypher, flags=re.IGNORECASE,
        )
        if pd_in_quotes:
            cypher = cypher.replace("d.name CONTAINS", "t.name CONTAINS")
            cypher = cypher.replace("d.id CONTAINS", "t.id CONTAINS")
            replacement = ("(toLower(t.name) CONTAINS 'parkinson' OR "
                           "toLower(t.id) CONTAINS 'parkinson' OR "
                           "toLower(t.name) CONTAINS 'pd')")
            cypher = re.sub(r"(t|d)\.(name|id)\s+CONTAINS\s+['\"].*?['\"]",
                            replacement, cypher, flags=re.IGNORECASE)

        return cypher.strip()

    def _execute_cypher(self, cypher: str) -> Tuple[List[Dict[str, Any]], Optional[str]]:
        """Returns (rows, error). error is None on success (empty result is not an error)."""
        if not cypher:
            return [], "empty cypher"

        cypher = self._fix_cypher(cypher)
        print(f"🤖 Final Cypher: {cypher}")

        try:
            with self.driver.session() as session:
                result = session.run(cypher)
                return [record.data() for record in result], None
        except Exception as e:
            print(f"⚠️ Cypher Error: {e}")
            return [], str(e)

    def _repair_cypher(self, question: str, schema: str,
                       failed_cypher: str, error: Optional[str]) -> str:
        """One-shot repair attempt for a failing or empty query."""
        problem = (f"Cypher raised an error: {error}" if error
                   else "Cypher ran but returned 0 rows.")

        prompt = ChatPromptTemplate.from_template("""
The previous Cypher query did not work. Produce a corrected version.

Schema:
{schema}

Original question: {question}
Previous Cypher:
{failed}

Problem: {problem}

Likely fixes to consider:
- The CONTAINS substring may not match any stored value. Try a shorter substring,
  or use a different term that resembles the Sample Values in the schema.
- The relationship direction may be wrong. Try undirected -[r]- or flip the arrow.
- A property name may not exist. Use only the Property Keys shown in the schema.
- Always use toLower(n.name) CONTAINS 'term' for fuzzy matching.

Return ONLY the corrected Cypher string. No preamble.

Corrected Cypher:""")

        chain = prompt | self.llm | StrOutputParser()
        try:
            raw = chain.invoke({
                "schema": schema, "question": question,
                "failed": failed_cypher, "problem": problem
            }).strip()
        except Exception:
            return ""
        return self._extract_cypher(raw)

    # Status / enum values that show up in Cypher results but are never
    # entity names — passing these to the provenance lookup wastes a query
    # and surfaces spurious "Sources" attributed to whichever paper happened
    # to mention the same word.
    _PROVENANCE_NOISE = {
        "COMPLETED", "RECRUITING", "NOT_YET_RECRUITING", "ACTIVE_NOT_RECRUITING",
        "TERMINATED", "WITHDRAWN", "UNKNOWN", "SUSPENDED",
        "APPROVED", "PENDING", "ACTIVE", "INACTIVE",
        "YES", "NO", "TRUE", "FALSE", "NONE", "NULL",
    }

    def _lookup_provenance(self, results: List[Dict[str, Any]]
                           ) -> List[Dict[str, Any]]:
        """Given Cypher result rows, find which Paper(s) mention the entities
        that appear in those rows. Used to surface citations during synthesis.

        Filters out obvious non-entity values (status enums, NCT trial IDs,
        very short/long strings) to avoid spurious provenance hits."""
        if not results:
            return []

        import re as _re
        nct_pattern = _re.compile(r"^NCT\d+$")

        candidates = set()
        for row in results:
            for v in row.values():
                if not isinstance(v, str):
                    continue
                s = v.strip()
                if not s or len(s) < 3 or len(s) > 80:
                    continue
                if s.upper() in self._PROVENANCE_NOISE:
                    continue
                if nct_pattern.match(s):
                    continue
                candidates.add(s)
        if not candidates:
            return []

        try:
            with self.driver.session() as session:
                rows = session.run(
                    "MATCH (n)-[:MENTIONED_IN]->(:Chunk)<-[:HAS_CHUNK]-(p:Paper) "
                    "WHERE n.name IN $names OR n.id IN $names "
                    "WITH p, collect(DISTINCT n.name)[0..3] AS entities "
                    "RETURN p.id AS paper, entities "
                    "ORDER BY size(entities) DESC LIMIT 5",
                    names=list(candidates),
                ).data()
            return rows
        except Exception as e:
            print(f"⚠️ Provenance lookup failed: {e}")
            return []

    def _synthesis_chain(self, results: List[Dict[str, Any]],
                         provenance: List[Dict[str, Any]],
                         chunks: List[Dict[str, Any]]):
        """Pick a synthesis prompt based on what retrieval surfaced:
        graph rows, vector-retrieved passages, both, or neither.

        Chat history is intentionally NOT passed here. Small instruction-tuned
        models tend to "continue the previous thread" when they see history,
        even when the current question is genuinely broader. Pronoun
        resolution upstream is responsible for making each question
        self-contained; synthesis then answers it fresh."""
        has_results = bool(results)
        has_chunks = bool(chunks)

        if not has_results and not has_chunks:
            prompt = ChatPromptTemplate.from_template("""
Neither the structured Knowledge Graph nor the indexed paper passages
contained relevant information for this query. You are a helpful medical
research assistant — answer concisely from general knowledge.
Start your answer with: "(General Knowledge Fallback)".

Question: {question}
""")
        elif has_results and has_chunks:
            prompt = ChatPromptTemplate.from_template("""
You are answering a question in an ongoing conversation. Use BOTH the
structured database results AND the relevant paper passages below.
Prefer specifics from the structured results; use the passages for
context and quotation.

⚠️  COVERAGE NOTE: Retrieved passages come from these papers only:
{source_papers}
If the question is broader than what these papers cover (e.g. asking
about a disease generally while passages only discuss one gene), say so
explicitly and supplement with general knowledge.

Question: {question}

Structured Results: {results}

Source Papers (entities → papers): {provenance}

Relevant Passages (semantic match):
{chunks}

End your answer with exactly this line (no other format):
Sources: {source_papers}

Do NOT cite references mentioned inside the passage text itself
(e.g. "Smith et al. 2023"). Only cite the papers listed above.
""")
        elif has_chunks:
            prompt = ChatPromptTemplate.from_template("""
You are answering a question in an ongoing conversation. The structured
graph returned no direct rows, but the passages below were retrieved
semantically from the source papers.

⚠️  COVERAGE NOTE: All retrieved passages come from these papers only:
{source_papers}
If the question is broader than what these papers cover (e.g. asking
about Parkinson's symptoms generally while passages only discuss LRRK2),
START your answer with "(Passages covered limited scope — supplementing
with general knowledge)" and then answer broadly.

Question: {question}

Relevant Passages:
{chunks}

If you used any passage content, end your answer with exactly this line:
Sources: {source_papers}

Do NOT cite references mentioned inside the passage text itself.
""")
        elif provenance:
            prompt = ChatPromptTemplate.from_template("""
You are answering a question in an ongoing conversation. Synthesize a
concise answer based on the database results below.

Question: {question}

Results: {results}

Source Papers: {provenance}

End with a "Sources:" line listing the contributing papers.
""")
        else:
            prompt = ChatPromptTemplate.from_template("""
You are answering a question in an ongoing conversation. Synthesize a
concise answer based on the database results.

Question: {question}

Results: {results}
""")
        return prompt | self.llm | StrOutputParser()

    def _format_history(self, chat_history: List[Dict[str, str]]) -> str:
        """Render the last N turns for inclusion in synthesis prompts."""
        if not chat_history:
            return "(no prior turns)"
        recent = chat_history[-(HISTORY_TURNS_FOR_SYNTHESIS * 2):]
        return "\n".join(f"{m['role']}: {m['content']}" for m in recent)

    def _unique_papers(self, chunks: List[Dict[str, Any]]) -> str:
        """Comma-separated, deduplicated list of paper IDs from vector chunks.
        Avoids the synthesizer parroting "PaperA, PaperA, PaperA" by handing
        it an already-clean list."""
        papers = sorted({c.get("paper") for c in chunks if c.get("paper")})
        return ", ".join(papers) if papers else "(none)"

    def _synthesize_answer(self, question: str,
                           results: List[Dict[str, Any]],
                           chunks: List[Dict[str, Any]],
                           chat_history: List[Dict[str, str]]) -> str:
        provenance = self._lookup_provenance(results) if results else []
        chain = self._synthesis_chain(results, provenance, chunks)
        return chain.invoke({
            "question": question,
            "results": str(results),
            "provenance": str(provenance),
            "chunks": str(chunks),
            "source_papers": self._unique_papers(chunks),
        })

    GREETING_REPLY = (
        "Hello! 👋 I am your Parkinson's Knowledge Graph Research Assistant. "
        "I can help you explore clinical trials, genes, and protein networks "
        "extracted from scientific literature. How can I assist your research today?"
    )

    GREETINGS = {"hi", "hello", "hey", "who are you", "what can you do",
                 "help", "how are you", "howdy"}

    def _prepare(self, question: str, chat_history: List[Dict[str, str]]
                 ) -> Tuple[str, List[Dict[str, Any]], List[Dict[str, Any]]]:
        """Resolve pronouns, run vector search, then conditionally generate Cypher.

        Cypher generation costs ~30s on local Gemma 3 4B. If the top vector chunk
        is already a strong semantic match, we skip Cypher and let the passages
        carry the answer. This is the largest single latency win available."""
        self.last_original_q = question
        resolved_q = self._resolve_pronouns(question, chat_history)
        self.last_resolved_q = resolved_q

        # Vector search runs first because it's cheap (~1s) and tells us
        # whether Cypher is worth the wait.
        chunks = self._vector_search(resolved_q, k=5)
        top_score = max((c.get("score", 0.0) for c in chunks), default=0.0)
        skip_cypher = top_score >= VECTOR_CONFIDENCE_THRESHOLD

        rows: List[Dict[str, Any]] = []
        cypher_used: Optional[str] = None

        if skip_cypher:
            self.last_skip_reason = f"Top vector score {top_score:.2f} ≥ {VECTOR_CONFIDENCE_THRESHOLD}"
            print(f"⚡ Skipping Cypher generation — {self.last_skip_reason}")
        else:
            self.last_skip_reason = None
            schema = self._get_schema()
            cypher_used = self._generate_cypher(resolved_q, schema)
            rows, error = self._execute_cypher(cypher_used)
            if not rows:
                print("🔧 Attempting one-shot repair...")
                repaired = self._repair_cypher(resolved_q, schema, cypher_used, error)
                if repaired and repaired != cypher_used:
                    rows, _ = self._execute_cypher(repaired)
                    cypher_used = repaired

        # Store diagnostics for the UI
        self.last_cypher = cypher_used
        self.last_chunks = chunks
        return resolved_q, rows, chunks

    def ask(self, question: str, chat_history: List[Dict[str, str]] = None) -> str:
        chat_history = chat_history or []
        if question.strip().lower().rstrip(".?!") in self.GREETINGS:
            return self.GREETING_REPLY

        resolved_q, rows, chunks = self._prepare(question, chat_history)
        return self._synthesize_answer(resolved_q, rows, chunks, chat_history)

    def ask_stream(self, question: str,
                   chat_history: List[Dict[str, str]] = None) -> Iterator[str]:
        """Same as ask() but yields synthesis token-by-token."""
        chat_history = chat_history or []
        if question.strip().lower().rstrip(".?!") in self.GREETINGS:
            yield self.GREETING_REPLY
            return

        resolved_q, rows, chunks = self._prepare(question, chat_history)
        provenance = self._lookup_provenance(rows) if rows else []
        chain = self._synthesis_chain(rows, provenance, chunks)
        for stream_chunk in chain.stream({
            "question": resolved_q,
            "results": str(rows),
            "provenance": str(provenance),
            "chunks": str(chunks),
            "source_papers": self._unique_papers(chunks),
        }):
            yield stream_chunk

    def close(self):
        self.driver.close()
