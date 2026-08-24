# CLAUDE.md — elaheh-dastan.pdf

Elaheh Dastan's resume, written in Typst using the `@preview/brilliant-cv:4.0.1`
package. Migrated from `modern-cv`; anything describing `src/resume.typ` or
`src/sections/` is pre-migration and stale.

## Build

```sh
just build          # both variants into build/
just spain          # build/elaheh-spain.pdf
just iran           # build/elaheh-iran.pdf
just watch spain    # live rebuild
```

A profile **must** be passed explicitly (`--input profile=spain|iran`); there is
no default and `src/cv.typ` panics without one. Source Sans 3 and Roboto are
vendored under `fonts/` and passed via `--font-path fonts`; FontAwesome must be
installed system-wide, or passed as a second `--font-path`. Without it the
contact icons render as tofu and typst warns about `font awesome 7 free`.

## Layout

- `src/cv.typ` — entry point; selects a profile and includes the shared sections.
- `src/profile_<region>/metadata.toml` — **the only** per-region difference: the
  contact block. Everything else is shared, so the variants cannot drift.
- `src/shared/*.typ` — all section content. Editing these changes every variant.

`cv.typ` wraps the entry-based sections in `keep-header-with-body`, a show rule
that marks brilliant-cv's header tables `sticky` so an entry cannot strand its
header alone at the foot of a page. It is applied per-section on purpose —
`skills.typ` is also table-built, and making those sticky would chain every skill
row to the next and drag the section onto one page. Wrap new entry-based sections
with it; leave tag-based ones bare.

In `projects.typ`, `society` is the **project name** and `title` is **what kind
of work it is**. That is inverted relative to `professional.typ` and deliberate:
`display_entry_society_first` renders `society` bold above `title`, so this puts
what was built in the heading and the engagement type in the subtitle. Keep new
project entries consistent.

## Gotchas

- `cv-entry-continued` evaluates `date.fields().children` unconditionally, so a
  single-token date such as `[2024]` panics — a lone text run has no `children`
  field. Use a range containing `--`.
- The location column is only `date_width` (3.4cm) wide; longer strings wrap and
  push the date onto a third line.
- `publications.typ` uses a plain `cv-entry` rather than the package's
  `cv-publication`, which renders from a `.bib` file. With one paper, the entry
  keeps the layout consistent with the sections above it.
- **The release workflow must keep publishing `elaheh.pdf`.** That is the spain
  variant copied under a stable name, and `elaheh-dastan.github.io` links to it
  directly. Removing it silently 404s the "Here is my CV" button.
- The workflow deliberately has **no `paths:` filter**. Tag pushes never trigger
  when `paths` is set, because tagging a commit already on main carries no diff
  for the filter to match. That is why the `2024-04-25` release shipped with zero
  assets and the site's CV button was broken for two years. Do not add one back.

## The resume-qa agent

`.claude/agents/resume-qa.md` defines a read-only subagent that answers questions
about Elaheh's professional history strictly from `src/`. Use it for interview
prep, screening questions, checking whether a claim is backed by an actual
bullet, or drafting application answers.

It is deliberately constrained: it never invents facts, and it separates
evidenced claims (in a bullet) from unevidenced ones (in `skills.typ` only) from
invisible ATS keywords (in `[inject]`).

## Cross-repo alignment (important)

This repo is the **source of truth** for Elaheh's professional facts. Two repos
state the same information publicly and must agree:

| Repo | What it states |
|---|---|
| `elaheh-dastan.pdf` (here) | Full resume — authoritative |
| `elaheh-dastan.github.io` | `src/pages/index.astro`, `experience.astro`, `projects.astro`, `education.astro` |

When you change any of the following here, **update the site in the same
session**: job titles, employer names, start/end dates, part-time or remote
labels, the headline/summary, location, or education. A recruiter reading the
resume and the site side by side will notice a contradiction, and a stale
"Present" on a past employer is the most damaging kind.

## Open questions

Two things were carried over from the previous resume and are worth confirming
rather than assuming:

- The spain profile publishes a **UK phone number** (`+44 7810 170938`) against a
  Barcelona location. That is reachable but reads oddly; a Spanish number would
  be better once one exists.
- Unlike `1995parham.pdf`, the spain profile states **no work authorization**.
  Non-EU candidates are routinely screened out unless a visa or right-to-work
  line is visible up front, so add a `[personal.info.custom-visa]` entry if there
  is one to state.
