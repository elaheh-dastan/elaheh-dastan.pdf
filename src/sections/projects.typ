#import "@preview/modern-cv:0.10.0": *

= Projects

#resume-entry(
  title: "QueryCraft",
  location: [#github-link("elaheh-dastan/QueryCraft")],
  date: "Agentic Text-to-SQL",
  description: "AI agent that turns natural-language questions into SQL",
  title-link: "https://github.com/elaheh-dastan/QueryCraft",
)

#resume-item[
  - Built a *LangGraph + LangChain* agent that converts natural-language questions into SQL, executes them, and returns results, served as a Django web app with a self-hosted *sqlcoder-7b* LLM via *Ollama* and PostgreSQL, containerized with Docker Compose.
]

#resume-entry(
  title: "Flight Booking Agent",
  location: [#github-link("elaheh-dastan/book-flight-llm")],
  date: "Conversational Tool-Using Agent",
  description: "LLM agent that books flights through natural conversation",
  title-link: "https://github.com/elaheh-dastan/book-flight-llm",
)

#resume-item[
  - Built a conversational *GPT-4.1* agent that books flights end-to-end via *function/tool calling* — collecting passenger details, searching flights, and confirming bookings against a live API.
]

#resume-entry(
  title: "Multi-Agent App (OpenAI Agents SDK)",
  location: [#github-link("elaheh-dastan/openai-agent")],
  date: "Agents, Handoffs & Guardrails",
  description: "Agentic app with multi-provider routing",
  title-link: "https://github.com/elaheh-dastan/openai-agent",
)

#resume-item[
  - Built an agentic application with the *OpenAI Agents SDK* using *agent handoffs*, input/output *guardrails*, sessions, and built-in *tracing*, routed across multiple model providers (OpenAI, Anthropic, Google, Llama) through *OpenRouter*.
]

#resume-entry(
  title: "Seller Description Validator",
  location: [#github-link("elaheh-dastan/SellerDescriptionValidator")],
  date: "LLM-as-Judge + Vector Search",
  description: "LLM service scoring seller product claims",
  title-link: "https://github.com/elaheh-dastan/SellerDescriptionValidator",
)

#resume-item[
  - Built a *FastAPI* service that uses an LLM (*Gemini 2.0 Flash* via *OpenRouter*) to evaluate seller product statements and return a calibrated confidence level, with *all-MiniLM-L6-v2* embeddings stored in a *Qdrant* vector database.
]
