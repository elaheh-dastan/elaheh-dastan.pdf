// Resume entry point:
//   typst compile src/cv.typ build/elaheh.pdf --font-path fonts
// metadata.toml holds the contact block, layout and ATS keywords; the section
// content lives under sections/.

#import "@preview/brilliant-cv:4.0.1": cv

#let metadata = toml("metadata.toml")

#show: cv.with(metadata)

// Keep an entry header with its bullets. brilliant-cv lays the
// society/title/date header out as a table immediately followed by the
// description, so marking those tables `sticky` forbids a page break between
// the two — otherwise an entry can strand its header alone at the foot of a
// page.
//
// Scoped to the entry-based sections on purpose: skills.typ is also built from
// tables, and making those sticky would chain every skill row to the next and
// drag the whole section onto one page.
#let keep-header-with-body(body) = {
  show table: it => block(sticky: true, it)
  body
}

#include "sections/summary.typ"
#keep-header-with-body(include "sections/professional.typ")
#include "sections/skills.typ"
#keep-header-with-body(include "sections/projects.typ")
#keep-header-with-body(include "sections/education.typ")
#keep-header-with-body(include "sections/publications.typ")
