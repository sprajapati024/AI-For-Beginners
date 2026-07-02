# AI-For-Beginners — SPEC

> **Working title:** ai-for-beginners
> **Started:** 2026-07-01
> **Source:** https://github.com/microsoft/AI-For-Beginners
> **My fork:** https://github.com/sprajapati024/AI-For-Beginners
> **Status:** Phase 2 (course setup + env) — about to start curriculum

## What this is

A 12-week, 25-lesson curriculum from Microsoft covering symbolic AI → neural networks → computer vision → NLP → ethics. Each lesson has a write-up, Jupyter notebooks (both PyTorch and TensorFlow where applicable), a quiz, and often a hands-on lab.

This is a **learning project**, not a shipping product. The "build" is me working through it; the "ship" is each lesson's solutions pushed to my fork with my own commentary.

## Why now

- I already ship AI-powered features (Hermes/OpenWhoop/Paperbrain). The pieces I touch (LLM calls, embeddings, basic CV) work, but I don't have foundational literacy in the *why* behind them.
- I want a portfolio artifact that proves I worked through fundamentals end-to-end, not just stitched together APIs.
- 12 weeks fits one Toronto summer; starting this weekend (July 4-5, 2026) gives me a finish line around end of September.

## Goals

**Primary — knowledge:**
1. Be able to read a modern AI paper and understand its mechanism without reaching for a glossary.
2. Be able to implement a small NN/CV/NLP system from scratch (notebook, no framework black-box) when needed.
3. Hold an informed conversation with ML researchers/research engineers — ask the right questions, push back on hand-waving.

**Secondary — portfolio:**
4. Fork the upstream repo and push my own notes/solutions on top.
5. Each lesson's PR shows the lesson, my notes, my solution, and a screenshot or short recording where applicable.
6. The fork itself becomes a browsable artifact: "here's what I worked through, here's what I learned."

**Tertiary — downstream leverage:**
7. Apply something concrete back into a real project (e.g., embedding work into Paperbrain, a small CV classifier into fitcoach, an RL spike into openwhoop). At least one such application by the end.

## What "done" means per lesson

A lesson is done when all of:
- [ ] I read the write-up end-to-end (no skim).
- [ ] I ran every notebook for the chosen frameworks (PyTorch and TF where both exist).
- [ ] I wrote 3–10 lines of my own commentary in `NOTES.md` per week: what clicked, what didn't, what's still fuzzy.
- [ ] If the lesson has a lab, I finished the lab and pushed my solution.
- [ ] GitHub Issue for that lesson is closed with a link to the PR.

A week is done when all its lessons are done + a short weekly retro (what I now know that I didn't before).

The curriculum is done when all 25 lessons are done + Week 12 retro + a final synthesis post.

## Out of scope

- **Classic ML** — Microsoft has a separate ML-For-Beginners for that.
- **AI in business / cloud frameworks** (Azure ML, Databricks, etc.) — covered by Microsoft Learn paths, not this curriculum.
- **Deep math** (Goodfellow-level proofs) — see *Deep Learning* by Goodfellow et al. if I get stuck.
- **Conversational AI / chatbots** — separate Microsoft Learn path.
- **State-of-the-art coverage** — curriculum is intentionally a few years behind the frontier.
- **Building a production AI app** as part of this — that's a separate project. The downstream-leverage goal (Goal 7) is a *deliverable from* this, not a deliverable *in* this.

## Scope decisions

| Question | Choice | Why |
|---|---|---|
| Fork vs. clone | **Fork to `sprajapati024/AI-For-Beginners`** | Portfolio artifact I can push to. |
| Frameworks | **Both PyTorch and TensorFlow** | Matches upstream, no framework lock-in bias. |
| Tracking | **GitHub Issues per lesson (25 total)** | Integrates with the fork; checkbox-style. |
| Translation folders | **Skip via sparse-checkout** | 50+ language folders bloat the clone. |
| Notes location | **Per-week `NOTES.md` in the fork** | Lives next to the code; reviewable in PRs. |

## Risks / open questions

1. **Pace risk:** 12 weeks is 2 lessons/week. Some lessons (Transformers, GANs, RL) are denser. *Default: extend the timeline rather than skip labs.*
2. **Compute risk:** Lesson 22 (Deep RL with CartPole) and several CV/NLP lessons want a GPU. My Mac has none. *Plan: use Google Colab free tier for GPU lessons; Mac for everything else.*
3. **Drift risk:** Other projects (fitcoach, openwhoop, paperbrain) are active. *Plan: one GitHub Issue per lesson acts as a forcing function.*
4. **Time sink risk:** "Run every notebook in both frameworks" doubles the runtime per lesson. *Default: cut to one framework per lesson only if I'm consistently behind.*
5. **Foundation assumption:** Course assumes Python comfort (true). Linear algebra / calculus comfort? *Probably rusty — surfaced via weekly retro.*

## Success metrics

- **Quantitative:** 25/25 lessons closed by ~end of September 2026 (target finish: 2026-09-27).
- **Qualitative:** Can I explain back, in my own words and without notes, what an attention mechanism does, why batch norm works, and how a GAN's training loop stays balanced?
- **Portfolio:** Fork has 25 merged PRs, each with a `NOTES.md` delta showing my work.

## Phases (high-level)

```
Phase 0:   SPEC + setup (fork, repo, env, issues scaffold)        ← done
Phase 1:   PRD                                                    ← done
Phase 2:   Week 0 — course setup + dev environment                ← done
Phase 3:   Week 1 — Intro + Symbolic AI (lessons 01–02)           ← next
Phase 4:   Week 2 — Neural Networks basics (lessons 03–05)
Phase 5:   Week 3 — Computer Vision I (lessons 06–08)
Phase 6:   Week 4 — Computer Vision II (lessons 09–10)
Phase 7:   Week 5 — Computer Vision III (lessons 11–12)
Phase 8:   Week 6 — NLP I (lessons 13–14)
Phase 9:   Week 7 — NLP II (lessons 15–17)
Phase 10:  Week 8 — NLP III (lessons 18–19)
Phase 11:  Week 9 — NLP IV (lesson 20)
Phase 12:  Week 10 — Other AI I (lessons 21–22)
Phase 13:  Week 11 — Other AI II (lesson 23)
Phase 14:  Week 12 — Ethics + extras (lessons 24–25)
Phase 15:  Final retro + downstream-leverage application
```

See [PRD.md](./PRD.md) for requirements and [IMPLEMENTATION_PLAN.md](./IMPLEMENTATION_PLAN.md) for the detailed week-by-week breakdown.
