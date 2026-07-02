# AI-For-Beginners — PRD

> Phase 1 deliverable. Built on top of [SPEC.md](./SPEC.md).

## Overview

A self-directed 12-week learning program through Microsoft's [AI-For-Beginners](https://github.com/microsoft/AI-For-Beginners) curriculum, executed as a portfolio-quality GitHub fork with my own commentary, solutions, and weekly retros published on top.

The "product" here is knowledge and a public artifact. The "user" is me, learning. The "success metric" is end-of-curriculum fluency, not feature delivery.

## Goals

See SPEC.md § Goals. Summary:

1. Foundational literacy (primary) — read AI papers with comprehension, implement small systems from scratch.
2. Portfolio (secondary) — 24 merged PRs showing my work.
3. Downstream leverage (tertiary) — apply at least one concept back into an existing project.

## Success metrics

| Metric | Target | How measured |
|---|---|---|
| Lessons closed | 25 / 25 by 2026-09-27 | GitHub issues |
| Weekly retros | 12 / 12 (one per week) | `NOTES/week-NN.md` |
| Self-check questions | 5 / 5 answered correctly at end | Final retro synthesis |
| Downstream application | ≥1 PR into fitcoach/openwhoop/paperbrain using a concept from this course | GitHub history |
| Resume signal | Fork linkable from resume with non-trivial commit history | `gh repo view` stats |

## User stories

> Self-as-user. Wrote these in standard form even though there's only one user — helps me think about what "done" looks like at each layer.

1. **As a learner, I want to know which lesson is next** so I can pick up where I left off.
   → Open issue #1's status, see "next up" label.

2. **As a learner, I want to record what I learned in my own words** so the knowledge sticks.
   → Each lesson closes with a `NOTES.md` delta.

3. **As a future-self reading the fork six months from now, I want to see the takeaways, not the noise** so I can revisit just the high-signal parts.
   → `NOTES/README.md` indexes weekly retros; each lesson's commentary is 3-10 lines max.

4. **As a learner who hit a wall, I want a place to record what I'm stuck on** so I can come back to it.
   → "What's still fuzzy" section in each weekly retro.

5. **As a learner whose pace slipped, I want a forgiving system** that prefers extending the timeline over skipping labs.
   → SPEC § Risks #1 is explicit on this.

6. **As a portfolio reviewer (someone clicking the repo from my resume), I want to see real work** — not a clean clone.
   → 24 PRs each with `NOTES.md` deltas, commit history per lesson.

## Functional requirements

| ID | Requirement |
|---|---|
| FR-1 | Fork upstream repo → `sprajapati024/AI-For-Beginners` |
| FR-2 | Local clone uses sparse-checkout (skip `translations/` and `translated_images/`) |
| FR-3 | One GitHub Issue per lesson (24 total), titled `Lesson NN: <name>` with checkbox-style definition of done |
| FR-4 | Each lesson closes via a PR that adds/modifies `NOTES/week-NN.md` (or lesson-local notes) |
| FR-5 | Local Python env works on macOS Apple Silicon — PyTorch (MPS), TensorFlow (Metal), Keras |
| FR-6 | `jupyter notebook` runs every upstream notebook without modification |
| FR-7 | Git remote `upstream` points to `microsoft/AI-For-Beginners` so I can pull curriculum fixes |
| FR-8 | `README.md` in the fork orients a visitor — points to SPEC/PRD/PLAN, lists status, links to issues |
| FR-9 | `NOTES/README.md` indexes weekly retros |
| FR-10 | Per-lesson definition-of-done: read write-up, run every notebook, finish any lab, write commentary, close issue |

## Non-functional requirements

| ID | Requirement |
|---|---|
| NFR-1 | Pace: 2 lessons/week baseline, ±1 lesson/week slack — see SPEC § Risks |
| NFR-2 | Local compute: MacBook Air/Pro (Apple Silicon), no external GPU. Heavy-GPU lessons (RL, large NLP/CV) → Google Colab free tier |
| NFR-3 | Reproducibility: every notebook I run should be runnable from a fresh venv with one command |
| NFR-4 | Privacy: I don't push `.env`, API keys, training data, or personal data |
| NFR-5 | Portability: project lives at `~/Desktop/AI-For-Beginners/` (laptop-local); no VPS, no DB |
| NFR-6 | Discoverability: someone landing on the fork from a link can answer "is this person serious?" in 30 seconds via README + recent issues/PRs |

## Out of scope

Reinforcing SPEC § Out of scope:

- Classic ML (separate curriculum)
- AI in business / cloud frameworks
- Deep mathematical proofs
- Conversational AI / chatbots
- State-of-the-art coverage
- Building a production AI app inside this project (downstream leverage is a *deliverable from* this, not a deliverable *in* this)
- Real-time collaboration or pair-learning

## Dependencies

- **Hardware:** Mac (Apple Silicon, MPS-accelerated). Verified: torch 2.12 + tf 2.19 with Metal.
- **Software:** Python 3.11.15 (via uv), PyTorch 2.12.1, TensorFlow 2.19.1, Keras 3.15.0, Jupyter.
- **Time:** ~6-10 hrs/week of focused learning (lessons + notes + retro).
- **Internet:** Required for Colab use in GPU-heavy lessons.

## Open questions / risks

See SPEC § Risks. Key ones carried forward:

1. Pace — extend timeline if behind.
2. Compute — Colab for GPU lessons.
3. Drift — 24 issues force weekly cadence.
4. Both-framework runtime — cut if consistently behind.
5. Foundation gaps (linear algebra / calculus) — surfaced via weekly retro.

## Approval

PRD locked → move to IMPLEMENTATION_PLAN (Phase 2).