import os
import threading
from typing import List, Dict, Any, Optional, Tuple, Iterator
from langchain_ollama import ChatOllama
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.output_parsers import StrOutputParser
from neo4j import GraphDatabase, basic_auth
from dotenv import load_dotenv

load_dotenv()


class QueryAgent:
    def __init__(self):
        self.llm = ChatOllama(model="llama3", temperature=0.0)

        uri = os.getenv("NEO4J_URI", "bolt://localhost:7687")
        user = os.getenv("NEO4J_USERNAME", "neo4j")
        password = os.getenv("NEO4J_PASSWORD", "password")
        self.driver = GraphDatabase.driver(uri, auth=basic_auth(user, password))

        self.cached_schema: Optional[str] = None

        # Warm up Ollama in the background so the first user query doesn't
        # pay the model-load cost.
        threading.Thread(target=self._warmup, daemon=True).start()

    def _warmup(self):
        try:
            self.llm.invoke("hi")
        except Exception:
            pass

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
        """Rewrite a follow-up question as standalone. Skips the LLM when no
        history exists or no obvious pronoun is present."""
        if not chat_history:
            return question

        lower_padded = " " + question.lower() + " "
        pronouns = [" it ", " its ", " they ", " them ", " their ", " this ",
                    " that ", " these ", " those ", " which "]
        if not any(p in lower_padded for p in pronouns):
            return question

        history_str = "\n".join(
            f"{m['role']}: {m['content']}" for m in chat_history[-3:]
        )

        prompt = ChatPromptTemplate.from_template("""
Rewrite the follow-up question as a standalone question.
Resolve any pronouns (it, they, this, that, which) using the conversation history.
Return ONLY the rewritten question. No preamble.

History:
{history}

Follow-up: {question}

Standalone question:""")

        chain = prompt | self.llm | StrOutputParser()
        try:
            return chain.invoke({"history": history_str, "question": question}).strip()
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

        if "parkinson" in cypher.lower() or "pd" in cypher.lower():
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

    def _synthesis_chain(self, results: List[Dict[str, Any]]):
        """Build the prompt+chain used for synthesis. Shared by streaming and
        non-streaming paths so they stay in sync."""
        if not results:
            prompt = ChatPromptTemplate.from_template("""
The local Knowledge Graph did not contain structural data for this query.
However, you are a helpful medical research assistant. Provide a concise,
high-quality answer using your general medical knowledge.
Start your answer by mentioning: "(General Knowledge Fallback)" so the user
knows this didn't come from the Neo4j graph.

Question: {question}
""")
        else:
            prompt = ChatPromptTemplate.from_template("""
Synthesize a concise answer based on the question and database results.
Results: {results}
Question: {question}
""")
        return prompt | self.llm | StrOutputParser()

    def _synthesize_answer(self, question: str, results: List[Dict[str, Any]]) -> str:
        chain = self._synthesis_chain(results)
        return chain.invoke({"question": question, "results": str(results)})

    GREETING_REPLY = (
        "Hello! 👋 I am your Parkinson's Knowledge Graph Research Assistant. "
        "I can help you explore clinical trials, genes, and protein networks "
        "extracted from scientific literature. How can I assist your research today?"
    )

    GREETINGS = {"hi", "hello", "hey", "who are you", "what can you do",
                 "help", "how are you", "howdy"}

    def _prepare(self, question: str, chat_history: List[Dict[str, str]]
                 ) -> Tuple[str, List[Dict[str, Any]]]:
        """Steps 1-3: resolve pronouns, generate Cypher, execute (with repair).
        Returns (resolved_question, rows)."""
        resolved_q = self._resolve_pronouns(question, chat_history)
        schema = self._get_schema()
        cypher = self._generate_cypher(resolved_q, schema)

        rows, error = self._execute_cypher(cypher)
        if not rows:
            print("🔧 Attempting one-shot repair...")
            repaired = self._repair_cypher(resolved_q, schema, cypher, error)
            if repaired and repaired != cypher:
                rows, _ = self._execute_cypher(repaired)
        return resolved_q, rows

    def ask(self, question: str, chat_history: List[Dict[str, str]] = None) -> str:
        chat_history = chat_history or []
        if question.strip().lower().rstrip(".?!") in self.GREETINGS:
            return self.GREETING_REPLY

        resolved_q, rows = self._prepare(question, chat_history)
        return self._synthesize_answer(resolved_q, rows)

    def ask_stream(self, question: str,
                   chat_history: List[Dict[str, str]] = None) -> Iterator[str]:
        """Same as ask() but yields the synthesis token-by-token. Steps 1-3
        still run synchronously (the user sees a spinner), then synthesis
        streams to the UI."""
        chat_history = chat_history or []
        if question.strip().lower().rstrip(".?!") in self.GREETINGS:
            yield self.GREETING_REPLY
            return

        resolved_q, rows = self._prepare(question, chat_history)
        chain = self._synthesis_chain(rows)
        for chunk in chain.stream({"question": resolved_q, "results": str(rows)}):
            yield chunk

    def close(self):
        self.driver.close()
