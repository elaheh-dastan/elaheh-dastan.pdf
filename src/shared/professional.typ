#import "@preview/brilliant-cv:4.0.1": (
  cv-entry, cv-entry-continued, cv-entry-start, cv-section,
)

#cv-section("Professional Experience")

// The contracting arrangement is stated on the employer line rather than hidden:
// Comtek Technology is the employer of record, Caterpillar is where the work
// happens. Caterpillar leads because that is the name a reviewer recognises, and
// omitting Comtek would misstate who pays her. The bullets are deliberately free
// of percentage lifts: this role is six months old and no measured business
// outcome has landed yet. Do not add invented numbers here for symmetry with
// the entries below.
#cv-entry(
  title: [Machine Learning Engineer],
  society: [Caterpillar --- via Comtek Technology],
  date: [May 2026 -- Present],
  location: [Barcelona, Spain],
  description: list(
    [Built and own *Pampas*, the *LLM evaluation framework* for the *Cat In-Cab Assistant*, covering the judging methodology, the test corpus, and the release pipeline that gates every change to the assistant.],
    [Designed the judging methodology --- binary Accept/Reject rubrics, a generic *RAG* metric evaluator, a deterministic tool-calling evaluator, and a parts-search judge for *SIS2* driven from declarative `scenario.yaml` files.],
    [Built *judge-the-judge* meta-evaluation reporting variance and cross-judge agreement, so a rubric or prompt change is measured before it is trusted rather than assumed to be an improvement.],
    [Moved test data and configuration to code: migrated dataset items from JSON to *YAML* behind a conversion CLI with normalization, *Pydantic* dataset validation, and scenario-schema to prompt-template wiring.],
    [Engineered the evaluation *CI/CD*: burn-in workflows, *Bayesian* two-branch comparison, chunked parallel matrices with result merging and PR-comment reporting, *AWS Lambda* deploy and version resolution, and *JFrog Artifactory* publishing.],
    [Extracted the framework into a shared `p-evaluation-framework` library with typed `AgentScenario` / `TypedDict` contracts, plus *LangGraph* todo middleware, reasoning-level *Langfuse* tagging, and per-run timing reports.],
  ),
  tags: ("Python", "LLM Evaluation", "LLM-as-Judge", "LangGraph", "Langfuse", "AWS Lambda", "CI/CD"),
)

// Descriptors exist because Digikala, Asan Pardakht, Snapp! and Nahal mean
// nothing to a European reviewer. The scale figures are the point: they let the
// percentage lifts below be read as marketplace scale rather than isolated
// numbers.
#cv-entry(
  title: [Senior Data Scientist],
  society: [Digikala --- Iran's largest e-commerce marketplace],
  date: [Jul 2024 -- Apr 2026],
  location: [Tehran, Iran],
  description: list(
    [Built an *image-to-product retrieval system* with a *dual-encoder model* combining *CLIP*-based visual embeddings and textual product representations, reaching 92% top-10 accuracy and enabling visual search from uploaded or shared images.],
    [Trained a *Query Understanding* model on user query logs and click data to infer intent and reformulate low-confidence queries, reducing zero-click searches by 4%.],
    [Improved search relevance through multi-metric fine-tuning and category-consistent retrieval using Category Loss and GMV-weighted balancing, lifting conversion rate by 4%.],
    [Designed and ran *A/B experiments* comparing semantic (business-aware) and *Elasticsearch* pipelines across top queries to route each query to the best engine, increasing add-to-cart by 3%.],
    [Built scalable user segmentation using embedding-based, feature-driven, and clustering techniques; raised conversion rate by 3% through iterative class refinement and premium-user targeting.],
    [Accelerated semantic embedding model fine-tuning by 30% via contrastive learning with the *FlagEmbedding* framework, achieving faster convergence and improved embedding consistency.],
    [Led the *Exact Match* project for precise product-code recognition via tokenizer modifications, custom masking, and a *Redis*-based code index, reducing seller complaints by 20%.],
    [Extended image search to *video* input with an *FFmpeg* transcoding and keyframe extraction pipeline plus scene detection, enabling product discovery from social-media clips and improving retrieval relevance by 15%.],
    [Built an *agentic LLM* quality-control system with *Pydantic AI* and *LangChain* that reviews support agents' answers using an *LLM-as-judge* harness, then evolved it into agentic ticket resolution with *Langfuse* tracing every agent run.],
    [Established *LLMOps* practices --- prompt evaluation harnesses, Langfuse tracing and observability, and token-cost monitoring dashboards in *Grafana* --- cutting LLM inference costs by 25%.],
  ),
  tags: ("Python", "PyTorch", "LLM", "Pydantic AI", "LangChain", "RAG", "Elasticsearch", "A/B Testing"),
)

#cv-entry(
  title: [Machine Learning Consultant],
  society: [Asan Pardakht --- Iranian payment services provider],
  date: [Feb 2024 -- Jul 2024],
  location: [Tehran, Iran],
  description: list(
    [Built *LSTM* and *Prophet* price-forecasting models achieving 12--18% MAPE across major coins such as BTC and ETH.],
    [Developed a recommendation system with *LightGBM* and behavioral *KMeans* user clustering, increasing simulated ROI by 9.3%.],
    [Designed portfolio optimization combining *Modern Portfolio Theory* and *Deep Q-Learning* to maximize Sharpe ratio across 20+ cryptocurrencies.],
    [Integrated *Monte Carlo* simulations for profit expectation across market scenarios; delivered a prototype that outperformed an equal-weighted baseline by 15% in backtesting.],
  ),
  tags: ("LightGBM", "Prophet", "Time Series", "Deep RL", "Backtesting"),
)

#cv-entry-start(
  society: [Snapp! --- Iran's largest ride-hailing platform, 50M+ users],
  location: [Tehran, Iran],
)

#cv-entry-continued(
  title: [Senior ML Engineer],
  date: [2021 -- 2024],
  description: list(
    [Co-built an end-to-end *MLOps* pipeline to train, version, and deploy models using *Airflow*, *Spark*, *MLflow*, *Katib*, *Feast*, *TensorFlow Serving*, *FastAPI*, *Kafka Streams*, and GitLab CI/CD, reducing training and deployment time by 70%.],
    [Built a recommendation system to infer speed for streets lacking sufficient data, expanding coverage from 1M to 3M shared streets.],
    [Launched an *ETA* (estimated time of arrival) system across 5+ cities in Iran and Iraq, improving R#super[2] by 20%.],
    [Trained and deployed models to predict street speed for future time buckets, reducing ETA MAPE by 5%.],
    [Developed a *Golang* microservice to benchmark model accuracy in real time and log metrics such as response time via *Prometheus* with *Grafana* dashboards, speeding up QA by 80%.],
    [Owned a project to recommend optimal pickup locations for drivers and passengers, reducing offer-to-accept time by 5%.],
    [Implemented an *HMM* map-matching algorithm to align driver GPS probes to streets and compute per-driver speed.],
    [Partnered with product to cluster Iran cities from 40+ down to 10, reducing the number of models to maintain.],
  ),
  tags: ("MLflow", "Airflow", "Spark", "Feast", "Golang", "Prometheus"),
)

#cv-entry-continued(
  title: [Software Engineer, AI/ML],
  date: [2020 -- 2021],
  description: list(
    [Integrated *vector database* solutions for efficient *similarity search* to surface related items in Snapp Shop, increasing conversion rate by 5%.],
    [Fine-tuned and deployed a pre-trained *OCR* model (EasyOCR) to read ID cards in a driver-signup flow, cutting signup time from days to hours.],
    [Optimized a transformer model with *ONNX* to boost inference speed by 10% and decouple training from serving.],
    [Engineered a *sentiment analysis* service using *Support Vector Machines* to analyze over 10,000 tweets daily for real-time insight into public sentiment toward the company.],
    [Mentored over 5 new joiners and launched a structured mentorship program and a new interview pipeline.],
  ),
  tags: ("Vector Search", "OCR", "ONNX", "SVM", "Mentoring"),
)

#cv-entry(
  title: [ML Engineer],
  society: [Nahal],
  date: [2018 -- 2020],
  location: [Tehran, Iran],
  description: list(
    [Fine-tuned and deployed *LLM* models on *GPU* to translate text between the support team and foreign customers.],
    [Developed a *CRF*-based *NER* model powering an address search engine, increasing successful searches by 15%.],
    [Built and deployed a stacked *LSTM* model to forecast stock and cryptocurrency values, achieving prediction accuracy of 87%.],
    [Designed a type-ahead search system for stock lookup using prefix matching and a custom-built *trie*, achieving a 30% reduction in stock search time.],
    [Developed a *BERT*-based chatbot to answer stock inquiries and support investment decisions, driving a 20% increase in user engagement.],
  ),
  tags: ("LLM", "NER", "CRF", "LSTM", "BERT"),
)

#cv-entry(
  title: [Software Engineer, AI/ML],
  society: [Avidnet Technology],
  date: [2017 -- 2018],
  location: [Tehran, Iran],
  description: list(
    [Deployed neural-network time-series forecasting on *Raspberry Pi 4* and decision-tree classification on *ARM Cortex-M52*.],
    [Led the design and implementation of an *event detection* service to alert on a patient's abnormal behavior, achieving a 0.95 F1 score.],
    [Employed *TensorFlow Lite* to reduce memory usage by 50%, enabling on-device inference on mobile phones.],
    [Launched a *Kafka* pipeline to ingest sensor data via *Protobuf* into a data lake, capable of handling 20k+ messages per second.],
    [Classified patients into over 20 classes and applied *active learning* to improve accuracy.],
    [Implemented *Kalman filtering* to enhance GPS positioning by 10%.],
  ),
  tags: ("TinyML", "TensorFlow Lite", "Kafka", "Embedded", "Kalman Filter"),
)
