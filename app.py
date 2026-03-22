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
    st.sidebar.dataframe(df, hide_index=True, use_container_width=True)
    st.sidebar.info(f"Total Nodes: {df['count'].sum()}")
else:
    st.sidebar.error("Could not connect to Neo4j.")

# --- Main UI ---
st.title("🧠 Parkinson's Knowledge Graph")
st.subheader("Graph RAG with Dynamic Enrichment")

st.markdown("""
Ask anything about Parkinson's research. If the graph doesn't know the answer, 
it will proactively research via **KEGG, STRING, and ClinicalTrials.gov** APIs!
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
        with st.spinner("Analyzing graph and researching APIs..."):
            try:
                # Pass the chat history so the agent understands follow-up questions
                response = st.session_state.agent.ask(prompt, chat_history=st.session_state.messages[:-1])
                st.markdown(response)
                # Add assistant message to history
                st.session_state.messages.append({"role": "assistant", "content": response})
            except Exception as e:
                st.error(f"An error occurred: {e}")

# Footer
st.divider()
st.caption("Built with LangChain, Ollama (Llama 3), and Neo4j Desktop.")
