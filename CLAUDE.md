# CLAUDE.md — elaheh-dastan.pdf

Elaheh Dastan's resume, written in Typst using the `@preview/brilliant-cv:4.0.1`
package. Migrated from `modern-cv`; anything describing `src/resume.typ` is
pre-migration and stale.

There is exactly one resume, aimed at Spain. It used to be built per region
behind a `--input profile=` switch (`spain`, and an `iran` one before that); that
indirection is gone, so do not add it back. A second region, if ever needed,
would be a second `metadata.toml` and a second `typst compile` line.

## Build

```sh
just build    # build/elaheh.pdf
just watch    # live rebuild
```

Source Sans 3 and Roboto are vendored under `fonts/` and passed via
`--font-path fonts`; FontAwesome must be installed system-wide, or passed as a
second `--font-path`. Without it the contact icons render as tofu and typst
warns about `font awesome 7 free`.

## Layout

- `src/cv.typ` — entry point; loads `metadata.toml` and includes the sections.
- `src/metadata.toml` — the contact block (including the residency line), layout
  settings, and the invisible `[inject]` ATS keyword list.
- `src/sections/*.typ` — all section content.

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
- **The release workflow must keep publishing `elaheh.pdf`.**
  `elaheh-dastan.github.io` links to that asset name directly; renaming it
  silently 404s the "Download CV" button.
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
| `elaheh-dastan` | `README.md` — the GitHub **profile** README, rendered on github.com/elaheh-dastan |

When you change any of the following here, **update the other two in the same
session**: job titles, employer names, start/end dates, part-time or remote
labels, the headline/summary, location, or education. The profile README only
carries the current role, the years of experience, the employer list and the
publication, so most edits here do not touch it — but those four do, and it was
left stating a superseded employer and a wrong paper for exactly that reason. A recruiter reading the
resume and the site side by side will notice a contradiction, and a stale
"Present" on a past employer is the most damaging kind.

## Open questions

One thing was carried over from the previous resume and is worth confirming
rather than assuming:

- The resume publishes a **UK phone number** (`+44 7810 170938`) against a
  Barcelona location. That is reachable but reads oddly; a Spanish number would
  be better once one exists.

The work-authorization gap is closed: `[personal.info.custom-visa]` states
Spanish residency with no sponsorship required, because non-EU candidates are
routinely screened out unless that is visible up front. Keep it in the contact
block.
