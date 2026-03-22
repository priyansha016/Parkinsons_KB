import sys
from agents.query_agent import QueryAgent

def main():
    print("="*60)
    print("🧠 Parkinson's Knowledge Graph - Interactive Query Interface")
    print("   (Includes Dynamic API Enrichment)")
    print("="*60)
    print("Type 'quit' or 'exit' to stop.")

    agent = QueryAgent()

    try:
        while True:
            question = input("\n💬 Ask a question: ").strip()
            if not question:
                continue
            if question.lower() in ("quit", "exit"):
                break

            print("🤔 Thinking...")
            answer = agent.ask(question)
            print(f"\n🤖 {answer}")
            
    except KeyboardInterrupt:
        print("\nStopping...")
    finally:
        agent.close()
        print("Goodbye!")

if __name__ == "__main__":
    main()
