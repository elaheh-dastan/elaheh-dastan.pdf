#import "@preview/brilliant-cv:4.0.1": cv-section, cv-skill, cv-skill-tag, cv-skill-with-level

#cv-section("Skills")

// Curated for a human reader, not for keyword matching: the [inject] block in
// each profile's metadata.toml already feeds an invisible keyword list to ATS
// parsers, so this list does not need to be exhaustive. Entries here should be
// defensible in an interview and, ideally, evidenced by a bullet above.
//
// Category labels are kept to ~14 characters; the label column is narrow and
// longer ones wrap onto a second line.

#cv-skill(
  type: [Languages],
  info: [
    #cv-skill-tag([Python])
    #cv-skill-tag([Go])
    #cv-skill-tag([Rust])
    #cv-skill-tag([Java])
    #cv-skill-tag([C])
  ],
)

#cv-skill(
  type: [ML & DL],
  info: [
    #cv-skill-tag([PyTorch])
    #cv-skill-tag([TensorFlow])
    #cv-skill-tag([HuggingFace])
    #cv-skill-tag([Scikit-learn])
    #cv-skill-tag([XGBoost])
    #cv-skill-tag([LightGBM])
  ],
)

#cv-skill(
  type: [LLM & Agents],
  info: [
    #cv-skill-tag([Pydantic AI])
    #cv-skill-tag([LangChain])
    #cv-skill-tag([LangGraph])
    #cv-skill-tag([Langfuse])
    #cv-skill-tag([RAG])
    #cv-skill-tag([FlagEmbedding])
  ],
)

#cv-skill(
  type: [Retrieval],
  info: [
    #cv-skill-tag([Elasticsearch])
    #cv-skill-tag([Qdrant])
    #cv-skill-tag([Vector Search])
    #cv-skill-tag([CLIP])
    #cv-skill-tag([BERT])
  ],
)

#cv-skill(
  type: [ML Infra],
  info: [
    #cv-skill-tag([MLflow])
    #cv-skill-tag([Airflow])
    #cv-skill-tag([Kubeflow])
    #cv-skill-tag([Feast])
    #cv-skill-tag([Katib])
    #cv-skill-tag([Beam])
  ],
)

#cv-skill(
  type: [Data],
  info: [
    #cv-skill-tag([Spark])
    #cv-skill-tag([Pandas])
    #cv-skill-tag([NumPy])
    #cv-skill-tag([PostgreSQL])
    #cv-skill-tag([MongoDB])
    #cv-skill-tag([Cassandra])
    #cv-skill-tag([Redis])
  ],
)

#cv-skill(
  type: [Messaging],
  info: [
    #cv-skill-tag([Kafka])
    #cv-skill-tag([NATS])
    #cv-skill-tag([RabbitMQ])
    #cv-skill-tag([EMQ])
  ],
)

#cv-skill(
  type: [Cloud & Ops],
  info: [
    #cv-skill-tag([Docker])
    #cv-skill-tag([Kubernetes])
    #cv-skill-tag([Terraform])
    #cv-skill-tag([AWS])
    #cv-skill-tag([GCP])
    #cv-skill-tag([Azure])
    #cv-skill-tag([Prometheus])
    #cv-skill-tag([Grafana])
  ],
)

#cv-section("Languages")

#cv-skill-with-level(
  type: [English],
  level: 4,
  info: [Fluent],
)

#cv-skill-with-level(
  type: [Persian],
  level: 5,
  info: [Native],
)
