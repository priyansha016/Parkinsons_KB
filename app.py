import streamlit as st
import os
import pandas as pd
from agents.query_agent import QueryAgent
from neo4j import GraphDatabase, basic_auth
from dotenv import load_dotenv

load_dotenv()

# --- Page Config ---
st.set_page_config(
    page_title="Parkinson's KG Explorer",
    page_icon="🧠",
    layout="wide"
)

# --- Styling ---
st.markdown("""
    <style>
    .stApp {
        background-color: #0e1117;
        color: #ffffff;
    }
    .stChatMessage {
        border-radius: 10px;
        margin-bottom: 10px;
    }
    .sidebar .sidebar-content {
        background-color: #262730;
    }
    </style>
    """, unsafe_allow_html=True)

# --- Session State ---
if "messages" not in st.session_state:
    st.session_state.messages = []

if "agent" not in st.session_state:
    st.session_state.agent = QueryAgent()

# --- Sidebar: Stats ---
st.sidebar.title("📊 Graph Statistics")

def get_stats():
    uri = os.getenv("NEO4J_URI", "bolt://localhost:7687")
    user = os.getenv("NEO4J_USERNAME", "neo4j")
    password = os.getenv("NEO4J_PASSWORD", "password")
    try:
        driver = GraphDatabase.driver(uri, auth=basic_auth(user, password))
        with driver.session() as session:
            result = session.run("MATCH (n) RETURN labels(n)[0] as label, count(n) as count ORDER BY count DESC")
            data = [record.data() for record in result]
        driver.close()
        return data
    except Exception as e:
        return []

stats = get_stats()
if stats:
    df = pd.DataFrame(stats)
    st.sidebar.dataframe(df, hide_index=True, width='stretch')
    st.sidebar.info(f"Total Nodes: {df['count'].sum()}")
else:
    st.sidebar.error("Could not connect to Neo4j.")

# --- Main UI ---
st.title("🧠 Parkinson's Knowledge Graph")
st.subheader("Hybrid Graph RAG over scientific literature")

st.markdown("""
Ask anything about Parkinson's research. Answers combine structured graph queries
with semantic search over paper passages, and cite the source PDF for every claim.
""")

# Display chat history
for message in st.session_state.messages:
    with st.chat_message(message["role"]):
        st.markdown(message["content"])

# Chat input
if prompt := st.chat_input("What would you like to know?"):
    # Add user message to history
    st.session_state.messages.append({"role": "user", "content": prompt})
    with st.chat_message("user"):
        st.markdown(prompt)

    # Generate response
    with st.chat_message("assistant"):
        try:
            history = st.session_state.messages[:-1]
            agent = st.session_state.agent
            with st.spinner("Querying graph..."):
                stream = agent.ask_stream(prompt, chat_history=history)
                # Pull the first chunk inside the spinner so the spinner
                # disappears as soon as synthesis starts streaming.
                first_chunks = []
                for chunk in stream:
                    first_chunks.append(chunk)
                    break

            def remaining():
                yield from first_chunks
                yield from stream

            response = st.write_stream(remaining())
            st.session_state.messages.append({"role": "assistant", "content": response})

            # Diagnostics — show what actually ran
            with st.expander("🔍 Query details"):
                if agent.last_original_q and agent.last_resolved_q and \
                        agent.last_resolved_q != agent.last_original_q:
                    st.markdown("**Question rewriting (pronoun resolver):**")
                    st.markdown(f"> Original: *{agent.last_original_q}*")
                    st.markdown(f"> Resolved: *{agent.last_resolved_q}*")
                elif agent.last_original_q:
                    st.caption(f"Question (unchanged by resolver): *{agent.last_original_q}*")

                if agent.last_cypher:
                    st.markdown("**Cypher executed:**")
                    st.code(agent.last_cypher, language="cypher")
                elif agent.last_skip_reason:
                    st.caption(f"⚡ Cypher skipped — {agent.last_skip_reason}")
                else:
                    st.caption("No Cypher was generated.")

                if agent.last_chunks:
                    st.markdown("**Top semantic matches:**")
                    for c in agent.last_chunks[:5]:
                        paper = c.get("paper") or "?"
                        page = c.get("page")
                        score = c.get("score", 0.0)
                        page_str = f" p.{page}" if page else ""
                        st.markdown(f"- `{paper}`{page_str} — score {score:.3f}")
                else:
                    st.caption("No vector matches.")
        except Exception as e:
            st.error(f"An error occurred: {e}")

# Footer
st.divider()
st.caption("Built with LangChain, Ollama (Gemma 3 4B), and Neo4j.")
