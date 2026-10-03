#import "@preview/brilliant-cv:4.0.1": cv-entry, cv-section

#cv-section("Projects")

// Convention for this section: `society` is the project's own name and `title`
// is what kind of work it is, because display_entry_society_first renders
// society bold above the title. That puts what was built in the heading and the
// engagement type in the subtitle. This is inverted relative to
// professional.typ, and deliberate — keep new project entries consistent.
#cv-entry(
  title: [Agentic Text-to-SQL],
  society: [QueryCraft],
  date: [2026],
  location: [Open source],
  description: list(
    [Built a *LangGraph* + *LangChain* agent that converts natural-language questions into SQL, executes them, and returns results.],
    [Served as a *Django* web app with a self-hosted *sqlcoder-7b* LLM via *Ollama* and *PostgreSQL*, containerized with Docker Compose.],
    [#link("https://github.com/elaheh-dastan/QueryCraft")[github.com/elaheh-dastan/QueryCraft]],
  ),
  tags: ("LangGraph", "LangChain", "Ollama", "Django"),
)

#cv-entry(
  title: [Conversational Tool-Using Agent],
  society: [Flight Booking Agent],
  date: [2026],
  location: [Open source],
  description: list(
    [Built a conversational *GPT-4.1* agent that books flights end-to-end via function/tool calling --- collecting passenger details, searching flights, and confirming bookings against a live API.],
    [#link("https://github.com/elaheh-dastan/book-flight-llm")[github.com/elaheh-dastan/book-flight-llm]],
  ),
  tags: ("Tool Calling", "GPT-4.1", "Agents"),
)

#cv-entry(
  title: [Agents, Handoffs & Guardrails],
  society: [Multi-Agent App (OpenAI Agents SDK)],
  date: [2026],
  location: [Open source],
  description: list(
    [Built an agentic application with the *OpenAI Agents SDK* using agent handoffs, input/output guardrails, sessions, and built-in tracing.],
    [Routed across multiple model providers (OpenAI, Anthropic, Google, Llama) through *OpenRouter*.],
    [#link("https://github.com/elaheh-dastan/openai-agent")[github.com/elaheh-dastan/openai-agent]],
  ),
  tags: ("Agents SDK", "Guardrails", "OpenRouter"),
)

#cv-entry(
  title: [LLM-as-Judge + Vector Search],
  society: [Seller Description Validator],
  date: [2026],
  location: [Open source],
  description: list(
    [Built a *FastAPI* service that uses an LLM (*Gemini 2.0 Flash* via OpenRouter) to evaluate seller product statements and return a calibrated confidence level.],
    [Stored *all-MiniLM-L6-v2* embeddings in a *Qdrant* vector database for semantic lookup.],
    [#link("https://github.com/elaheh-dastan/SellerDescriptionValidator")[github.com/elaheh-dastan/SellerDescriptionValidator]],
  ),
  tags: ("FastAPI", "Qdrant", "LLM-as-Judge"),
)
