from pydantic import BaseModel, Field
from typing import List, Dict, Any, Optional
from typing_extensions import TypedDict, Annotated
import operator

# --- 1. Define the Node (Entity) Model ---
class ExtractedNode(BaseModel):
    """A node (entity) to be stored in the knowledge graph."""
    # Example: 'LRRK2Gene', 'Levodopa'
    id: str = Field(..., description="A unique, concise name for the node (e.g., 'LRRK2Gene'). Must be CamelCase or a simple descriptor.")
    # Example: 'Gene', 'Drug', 'Disease'
    type: str = Field(..., description="The label of the node (e.g., 'Gene', 'Protein', 'Drug').")

# --- 2. Define the Relationship Model ---
class ExtractedRelationship(BaseModel):
    """A relationship (edge) between two nodes."""
    # Must match an 'id' from an ExtractedNode
    source_id: str = Field(..., description="The 'id' of the source node (start node).")
    # Must match an 'id' from an ExtractedNode
    target_id: str = Field(..., description="The 'id' of the target node (end node).")
    # Example: 'CAUSES_RISK', 'TARGETS', 'REGULATES'
    type: str  = Field(..., description="The type of the relationship. Must be uppercase and use underscores.")
    
# --- 3. The Final Structured Output Schema ---
class KnowledgeGraphSchema(BaseModel):
    """The final structured data outputted by the Schema Aligner Agent."""
    nodes: List[ExtractedNode] = Field(
        default_factory=list,
        description="A list of all unique nodes extracted from the text."
    )
    relationships: List[ExtractedRelationship] = Field(
        default_factory=list,
        description="A list of all relationships connecting the extracted nodes."
    )

class GraphState(TypedDict):
    """
    Represents the shared memory passed between all nodes in the LangGraph.
    """
    # 1. The input text from the research paper (Source material)
    text: str

    # 2. The extracted graph data (Output of Schema Aligner Agent)
    # The 'operator.add' means any new list of graph data will be APPENDED
    # to the existing list, allowing you to collect results from all 10 papers.
    graph_data_list: Annotated[List[Dict[str, Any]], operator.add]
    
    # 3. Validation and Control flags
    is_valid: bool
    # A counter to prevent infinite loops during self-correction
    attempts: int
    # Stores any error message, useful for LLM reflection
    error_message: Optional[str]



