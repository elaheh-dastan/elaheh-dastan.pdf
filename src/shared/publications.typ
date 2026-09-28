#import "@preview/brilliant-cv:4.0.1": cv-entry, cv-section

#cv-section("Publications & Research")

// Not using the package's `cv-publication`: that renders from a .bib file, and
// with a single paper a plain entry is simpler and keeps the layout consistent
// with the sections above.
// Title, venue and year are taken from what arXiv:2309.09830 actually resolves
// to, because the link is on the page for a reader to click. An earlier version
// of this entry described a different paper.
#cv-entry(
  title: [Co-author],
  society: [Clustering of Urban Traffic Patterns by K-Means and Dynamic Time Warping],
  date: [2023],
  location: [arXiv preprint],
  description: list(
    [Co-authored a study clustering urban traffic patterns with *K-Means* and *Dynamic Time Warping*, applied to real traffic-sensor data from an urban road network.],
    [#link("https://arxiv.org/abs/2309.09830")[arxiv.org/abs/2309.09830]],
  ),
)
