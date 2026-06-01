#import "@preview/modern-cv:0.10.0": *

= Experience

#resume-entry(
  title: "Senior Data Scientist",
  location: "Tehran, Iran",
  date: "Jul 2024 - Apr 2026",
  description: "Digikala",
)

#resume-item[
  - Built an *image-to-product retrieval system* with a *dual-encoder model* combining *CLIP-based visual embeddings* and textual product representations, reaching *92% top-10 accuracy* and enabling visual search from uploaded or shared images.
  - Trained a *Query Understanding (QU)* model on user query logs and click data to infer intent and reformulate low-confidence queries, reducing zero-click searches by *4%*.
  - Improved search relevance through *multi-metric fine-tuning* and category-consistent retrieval using Category Loss and GMV-weighted balancing, lifting conversion rate by *4%*.
  - Designed and ran A/B experiments comparing *semantic (business-aware)* and *Elasticsearch* pipelines across top queries to route each query to the best engine, increasing add-to-cart by *3%*.
  - Built scalable user segmentation using *embedding-based*, *feature-driven*, and *clustering* techniques; raised conversion rate by *3%* through iterative class refinement and premium-user targeting.
  - Accelerated semantic embedding model fine-tuning by *30%* via contrastive learning with the *FlagEmbedding framework*, achieving faster convergence and improved embedding consistency.
  - Designed *Claude-powered* query variation generation to improve generalization and long-tail recall, decreasing zero-click searches by *5%*.
  - Led the *Exact Match project* for precise product-code recognition (e.g., "PG32UCD Laptop") via tokenizer modifications, custom masking, and a *Redis-based code index*, reducing seller complaints by *20%*.
  - Integrated an *object detection pipeline* into image search to localize products within uploaded images, improving matching precision by *3%* and reducing false positives by *4%* through region-based embeddings.
  - Extended image search to *video input* with an *FFmpeg* transcoding and *keyframe extraction* pipeline plus *scene detection* (PySceneDetect), enabling product discovery from social-media clips and improving retrieval relevance by *15%*.
  - Developed an *LLM chatbot* for product discovery, integrating *semantic retrieval* and *contextual recommendation* pipelines, increasing user engagement time by *5%*.
  - Built an *agentic LLM* quality-control system with *Pydantic AI* and *LangChain* that automatically reviews and evaluates support agents' answers to customer tickets, using an *LLM-as-judge* evaluation harness to score response quality and surface low-quality replies for coaching.
  - Evolved the QC system into *agentic ticket resolution*, deploying type-safe *LLM agents* (*Pydantic AI*, *LangChain*) that autonomously draft and answer a subset of support tickets end-to-end, with *Langfuse* tracing every agent run, reducing manual handling and response time.
  - Established *LLMOps practices* including prompt evaluation harnesses, *Langfuse* tracing and observability, and *token-cost monitoring* dashboards in Grafana, cutting LLM inference costs by *25%* through prompt optimization.
  - Investigated feedback-driven search optimization from user engagement signals and evaluated *ANCE* for near-real-time embedding refresh and retraining.

  *Skills:* Python, PyTorch, TensorFlow, LLMs, Agentic AI, LLM Agents, LLM-as-Judge, Pydantic AI, LangChain, LangGraph, Langfuse, RAG, Vector Databases, Retrieval Systems, Vector Search, Elasticsearch, Redis, Data Engineering, Experiment Design, A/B Testing, Statistical Modeling
]

#resume-entry(
  title: "Machine Learning Consultant",
  location: "Tehran, Iran",
  date: "Feb 2024 - Jul 2024",
  description: "Asan Pardakht",
)

#resume-item[
  - Built *LSTM* and *Prophet* price-forecasting models achieving *12-18% MAPE* across major coins such as BTC and ETH.
  - Developed a recommendation system with *LightGBM* and behavioral *KMeans* user clustering, increasing simulated ROI by *9.3%*.
  - Designed portfolio optimization combining *Modern Portfolio Theory* and *Deep Q-Learning* to maximize Sharpe ratio across 20+ cryptocurrencies.
  - Integrated *Monte Carlo* simulations for profit expectation across market scenarios; delivered a prototype that outperformed an equal-weighted baseline by *15%* in backtesting.

  *Skills:* LightGBM, Prophet, Time Series Forecasting, Deep Reinforcement Learning (DQN), Model Evaluation (MAPE, Sharpe Ratio), Portfolio Optimization, Monte Carlo Simulation, Backtesting, Modern Portfolio Theory (MPT), Cryptocurrency Markets, Quantitative Trading Strategies
]

#resume-entry(
  title: "Senior ML Engineer",
  location: "Tehran, Iran",
  date: "2021 - 2024",
  description: "Snapp!",
)

#resume-item[
  - Co-built an end-to-end MLOps pipeline to train, version, and deploy models using *Airflow, Spark, MLflow, Katib, Feast, TensorFlow Serving, FastAPI, Kafka Streams, and GitLab CI/CD*, reducing training and deployment time by *70%*.
  - Built a *recommendation system* to infer speed for streets lacking sufficient data, *expanding coverage from 1M to 3M shared streets*.
  - Launched an ETA (estimated time of arrival) system across 5+ cities in *Iran and Iraq*, *improving R² by 20%*.
  - Trained and deployed models to *predict street speed* for future time buckets, *reducing ETA MAPE by 5%*.
  - Developed a *Golang* microservice to benchmark model accuracy in real time and log metrics such as *response time* via *Prometheus* with *Grafana* dashboards, speeding up QA by *80%*.
  - Owned a project to recommend optimal pickup locations for drivers and passengers, *reducing offer-to-accept time by 5%*.
  - Implemented an *HMM* map-matching algorithm to align driver GPS probes to streets and compute per-driver speed.
  - Partnered with product to *cluster* Iran cities from 40+ down to 10, reducing the number of models to maintain.

  *Skills:* Collaborative Filtering, Content-based Filtering, Time-series Forecasting, RNN, SARIMA, Tree-based Models, Hierarchical Clustering, Unsupervised Learning, Predictive Modeling
]

#resume-entry(
  title: "Software Engineer, AI/ML",
  location: "Tehran, Iran",
  date: "2020 - 2021",
  description: "Snapp!",
)

#resume-item[
  - Integrated *vector database* solutions for efficient *similarity search* to surface related items in Snapp Shop, *increasing conversion rate 5%*.
  - Fine-tuned and deployed a pre-trained *OCR* model (#link("https://github.com/JaidedAI/EasyOCR")[EasyOCR]) to read ID cards in a driver-signup flow, *cutting signup time from days to hours*.
  - Optimized a transformer model with *ONNX* to *boost inference speed by 10%* and decouple training from serving.
  - Engineered a *sentiment analysis* service using *Support Vector Machines (SVM)* to analyze over 10,000 Tweets daily for real-time insight into public sentiment toward the company.
  - *Mentored over 5 new joiners* and launched a structured mentorship program and a new interview pipeline.
]

#resume-entry(
  title: "ML Engineer",
  location: "Tehran, Iran",
  date: "2018 - 2020",
  description: "Nahal",
)

#resume-item[
  - Fine-tuned and deployed *LLM models* on *GPU* to translate text between the support team and foreign customers.
  - Developed a *CRF*-based *NER* model powering an address search engine, *increasing successful searches by 15%*.
  - Built and deployed a *stacked Long Short-Term Memory (LSTM)* model to forecast stock and cryptocurrency values, achieving *prediction accuracy of 87%*.
  - Designed a *type-ahead search system* for stock lookup using prefix matching and a custom-built *trie data structure*, achieving a *30% reduction in stock search time*.
  - Developed a *BERT*-based chatbot to answer stock inquiries and support investment decisions, driving a *20% increase in user engagement*.
]

#resume-entry(
  title: "Software Engineer, AI/ML",
  location: "Tehran, Iran",
  date: "2017 - 2018",
  description: "Avidnet Technology",
)

#resume-item[
  - Deployed neural-network time-series forecasting on *Raspberry Pi 4* and decision-tree classification on *ARM Cortex-M52*.
  - Led the design and implementation of an *event detection* service to alert on a patient's abnormal behavior, achieving a *0.95 F1* score.
  - Employed *TensorFlow Lite* to *reduce memory usage by 50%*, enabling on-device inference on mobile phones.
  - Launched a *Kafka* pipeline to ingest sensor data via *Protobuf* into a *Data Lake*, capable of handling *20k+ messages per second*.
  - Classified patients into over 20 classes and applied *active learning* to improve accuracy.
  - Implemented *Kalman filtering* to *enhance GPS positioning by 10%*.
  - Predicted where a person should be in a 30-minute time bucket using *time-series forecasting deep learning models* and alerted otherwise.

  *Skills:* TinyML
]
