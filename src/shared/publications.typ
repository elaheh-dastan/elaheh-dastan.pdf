#import "@preview/brilliant-cv:4.0.1": cv-entry, cv-section

#cv-section("Publications & Research")

// Not using the package's `cv-publication`: that renders from a .bib file, and
// with a single paper a plain entry is simpler and keeps the layout consistent
// with the sections above.
#cv-entry(
  title: [Co-author],
  society: [Deep ETA Prediction for Urban Transport Systems],
  date: [2022],
  location: [IEEE IV],
  description: list(
    [Co-authored a research paper on deep learning-based ETA prediction for ride-hailing services, presented at the *IEEE Intelligent Vehicles Symposium*.],
    [Proposed an architecture combining spatial-temporal features with real-time traffic patterns, achieving state-of-the-art performance on a large-scale urban transportation dataset.],
    [#link("https://arxiv.org/abs/2309.09830")[arxiv.org/abs/2309.09830]],
  ),
)
