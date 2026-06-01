#import "@preview/modern-cv:0.10.0": *

// ---------------------------------------------------------------------------
// Profile selection.
// Build with:  typst compile --input profile=istanbul src/resume.typ out.pdf
//              typst compile --input profile=tehran   src/resume.typ out.pdf
// Only the header location differs between profiles.
// ---------------------------------------------------------------------------
#let profile = sys.inputs.at("profile", default: "istanbul")
#let address = if profile == "tehran" { "Tehran, Iran" } else { "Istanbul, Turkey" }
#let phone = if profile == "tehran" { "+98 935 225 7378" } else { "+44 7810 170938" }

#show: resume.with(
  author: (
    firstname: "Elaheh",
    lastname: "Dastan",
    email: "elahe.dstn@gmail.com",
    phone: phone,
    homepage: "elaheh-dastan.github.io",
    github: "elaheh-dastan",
    linkedin: "elaheh-dastan",
    scholar: "1BxI0JkAAAAJ",
    address: address,
    positions: (
      "Senior Machine Learning Engineer",
      "Data Scientist",
    ),
  ),
  profile-picture: none,
  date: "",
  accent-color: "#262F99",
  colored-headers: true,
  show-footer: false,
  show-address-icon: true,
  font: ("Source Sans 3",),
  header-font: "Roboto",
  paper-size: "a4",
)

// Tighten spacing so the content packs into full pages without orphan rows.
#set par(leading: 0.5em)
#set list(spacing: 0.5em)
#show heading.where(level: 1): set block(above: 0.7em, below: 0.45em)

= Professional Summary

#resume-item[
  Senior ML Engineer with 7+ years of experience designing and deploying scalable
  machine learning systems and data pipelines. Expert in building end-to-end solutions
  from data collection and ETL to model training and production deployment. Proven track
  record of delivering data-driven products with measurable business impact across
  e-commerce, fintech, and transportation domains. Strong foundation in both software
  engineering and data science with published research in intelligent transportation systems.
]

#include "sections/experience.typ"
#include "sections/projects.typ"
#include "sections/education.typ"
#include "sections/publications.typ"
#include "sections/skills.typ"
