import os
import requests
from typing import List, Dict, Any, Optional
from langchain_ollama import ChatOllama
from langchain_core.prompts import ChatPromptTemplate
from langchain_core.output_parsers import JsonOutputParser, StrOutputParser
from neo4j import GraphDatabase, basic_auth
from dotenv import load_dotenv

# Import our existing enrichment agents
from agents.kegg_agent import fetch_kegg_data
from agents.string_agent import fetch_string_data
from agents.clinical_trials_agent import fetch_clinical_trials_data
from agents.neo4j_loader_agent import write_to_neo4j

load_dotenv()

class QueryAgent:
    def __init__(self):
        self.llm = ChatOllama(model="llama3", temperature=0.0)
        self.json_llm = ChatOllama(model="llama3", temperature=0.0, format="json")
        
        # Neo4j connection
        uri = os.getenv("NEO4J_URI", "bolt://localhost:7687")
        user = os.getenv("NEO4J_USERNAME", "neo4j")
        password = os.getenv("NEO4J_PASSWORD", "password")
        self.driver = GraphDatabase.driver(uri, auth=basic_auth(user, password))
        
        # Cache schema to save time
        self.cached_schema = None

    def _get_schema(self) -> str:
        """Fetches and caches labels, relationships, and property names."""
        if self.cached_schema:
            return self.cached_schema
            
        with self.driver.session() as session:
            labels = session.run("CALL db.labels()").value()
            rel_types = session.run("CALL db.relationshipTypes()").value()
            props = {}
            for label in labels:
                p = session.run(f"MATCH (n:`{label}`) RETURN keys(n) LIMIT 1").value()
                if p: props[label] = p[0]
        
        self.cached_schema = f"Node Labels: {labels}\nRelationship Types: {rel_types}\nProperty Keys: {props}"
        return self.cached_schema

    def _preprocess_query(self, question: str, chat_history: List[Dict[str, str]]) -> Dict[str, Any]:
        """Combines context resolution and enrichment detection into ONE LLM call."""
        history_str = "\n".join([f"{m['role']}: {m['content']}" for m in chat_history[-3:]])
        
        prompt = ChatPromptTemplate.from_template("""
        Task: Analyze the follow-up research question and conversation history.
        
        1. Resolve any pronouns (like 'it', 'they', 'which') to their full entities based on history.
        2. Determine if we need fresh data from: KEGG, STRING, or ClinicalTrials.
        
        Return JSON ONLY:
        {{
            "standalone_question": "...", 
            "needs_enrichment": boolean,
            "target_api": "KEGG"|"STRING"|"ClinicalTrials"|"None",
            "entities": ["LRRK2", "Levodopa", etc]
        }}

        History: {history}
        Follow-up: {question}
        """)
        
        chain = prompt | self.json_llm | JsonOutputParser()
        return chain.invoke({"history": history_str, "question": question})

    def _enrich_on_demand(self, detection: Dict[str, Any]):
        """Triggers the relevant agent if info is missing."""
        api = detection.get("target_api")
        entities = detection.get("entities", [])
        if not api or api == "None": return

        print(f"🔍 Dynamic Enrichment triggered for {api}...")
        data = {"nodes": [], "relationships": []}
        if api == "KEGG": data = fetch_kegg_data()
        elif api == "STRING": data = fetch_string_data()
        elif api == "ClinicalTrials": data = fetch_clinical_trials_data(max_trials=50)

        if data["nodes"]:
            write_to_neo4j(data)
            self.cached_schema = None # Invalidate cache as we added data

    def _generate_cypher(self, question: str, schema: str) -> str:
        """Generates Cypher using FEW-SHOT EXAMPLES for better accuracy."""
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
        4. NEVER guess or hardcode list of drug or gene names. You must query the DB to find them.
        5. Keep queries syntactically simple (use a single MATCH clause). DO NOT chain MATCH patterns with OR.
        6. DO NOT use properties like d.approved, d.fda_approved, or t.drug. They do not exist.
        7. Return ONLY the raw Cypher string. No preamble.

        Question: {question}
        Cypher Query:
        """)
        
        chain = prompt | self.llm | StrOutputParser()
        raw_output = chain.invoke({"question": question, "schema": schema}).strip()
        
        # Cleanup: Keep only the Cypher part
        lines = raw_output.split("\n")
        cypher_lines = []
        found_match = False
        keywords = ["MATCH", "WHERE", "RETURN", "WITH", "LIMIT", "UNWIND", "OPTIONAL", "MERGE", "CREATE", "SET"]
        for line in lines:
            clean = line.strip()
            if any(clean.upper().startswith(k) for k in keywords):
                found_match = True
                cypher_lines.append(clean)
            elif found_match and clean:
                if len(clean.split()) > 10: break # stop at explanation
                cypher_lines.append(clean)
            elif found_match and not clean: break
            
        return "\n".join(cypher_lines).strip().rstrip("`").rstrip(".")

    def _fix_cypher(self, cypher: str) -> str:
        """Ultimate safety net for medical drug queries with aggressive filtering."""
        import re
        
        # 1. Broadly fix status (casing and hallucination)
        for s in ['COMPLETED', 'RECRUITING', 'NOT_YET_RECRUITING', 'ACTIVE_NOT_RECRUITING', 'TERMINATED', 'WITHDRAWN', 'UNKNOWN']:
            cypher = re.sub(rf"status\s*=\s*['\"]{s}['\"]", f"status = '{s}'", cypher, flags=re.IGNORECASE)
            
        # Map conversational trial states to DB enums
        ongoing_statuses = ['in progress', 'ongoing', 'active', 'in trial', 'trial phase', 'recruiting']
        for s in ongoing_statuses:
            cypher = re.sub(rf"status\s*=\s*['\"]{s}['\"]", "status = 'RECRUITING'", cypher, flags=re.IGNORECASE)
            
        cypher = re.sub(r"(t\.)?status\s*=\s*['\"]approved['\"]", "t.status = 'COMPLETED'", cypher, flags=re.IGNORECASE)
        
        # Fix d.approved=true or similar hallucinations aggressively
        cypher = re.sub(r"\b(AND|OR)?\s*d\.(fda_)?approved\s*=\s*\w+", "", cypher, flags=re.IGNORECASE)
        
        # 2. Fix common hallucinated properties/relationships
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
        
        # 3. Detect any attempt to find 'Parkinson' and force the correct pattern
        if "parkinson" in cypher.lower() or "pd" in cypher.lower():
            # If d.name CONTAINS 'parkinson', it's always wrong. Let's fix it.
            cypher = cypher.replace("d.name CONTAINS", "t.name CONTAINS")
            cypher = cypher.replace("d.id CONTAINS", "t.id CONTAINS")
            
            # Use a broad pattern to inject fuzzy name/id matching for trials
            replacement = "(toLower(t.name) CONTAINS 'parkinson' OR toLower(t.id) CONTAINS 'parkinson' OR toLower(t.name) CONTAINS 'pd')"
            cypher = re.sub(r"(t|d)\.(name|id)\s+CONTAINS\s+['\"].*?['\"]", replacement, cypher, flags=re.IGNORECASE)
        
        return cypher.strip()

    def _execute_cypher(self, cypher: str) -> List[Dict[str, Any]]:
        """Runs the generated Cypher on Neo4j."""
        if not cypher: return []
        
        # Apply the Rule-Based Fixer
        cypher = self._fix_cypher(cypher)
        print(f"🤖 Final Cypher: {cypher}")
        
        try:
            with self.driver.session() as session:
                result = session.run(cypher)
                return [record.data() for record in result]
        except Exception as e:
            print(f"⚠️ Cypher Error: {e}")
            return []

    def _synthesize_answer(self, question: str, results: List[Dict[str, Any]]) -> str:
        """Summarizes results into natural language."""
        if not results:
            return "I couldn't find any information in the Knowledge Graph. Note: The graph current focuses on Clinical Trials, Genes, and Proteins from your papers."

        prompt = ChatPromptTemplate.from_template("""
        Synthesize aconcise answer based on the question and database results.
        Results: {results}
        Question: {question}
        """)
        chain = prompt | self.llm | StrOutputParser()
        return chain.invoke({"question": question, "results": str(results)})

    def ask(self, question: str, chat_history: List[Dict[str, str]] = []) -> str:
        """Optimized entry point."""
        # 1. Preprocess (Context + Intent) - 1 LLM Call
        prep = self._preprocess_query(question, chat_history)
        resolved_q = prep.get("standalone_question", question)
        
        # 2. Enrich if needed
        if prep.get("needs_enrichment"):
            self._enrich_on_demand(prep)

        # 3. Generate Cypher (1 LLM Call)
        schema = self._get_schema()
        cypher = self._generate_cypher(resolved_q, schema)

        # 4. Execute and Synthesize (1 LLM Call)
        results = self._execute_cypher(cypher)
        return self._synthesize_answer(resolved_q, results)

    def close(self):
        self.driver.close()
