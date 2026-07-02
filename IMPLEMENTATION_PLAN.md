# AI-For-Beginners — IMPLEMENTATION_PLAN

> Phase 2 deliverable. The 12-week phase structure.
> Each phase = one curriculum week. Each phase has 1-3 lessons (mostly 2).
> Each phase ends with a gate: I report what I learned, get a green light, move on.

## Phase structure

```
Phase 0:   SPEC + Setup                            ← current
Phase 1:   PRD                                     ← current
Phase 2:   Week 0 — Course Setup + Env             ← next, this weekend
Phase 3:   Week 1 — Intro to AI + Symbolic AI      (lessons 01–02)
Phase 4:   Week 2 — Neural Networks                (lessons 03–05)
Phase 5:   Week 3 — Computer Vision I              (lessons 06–08)
Phase 6:   Week 4 — Computer Vision II             (lessons 09–10)
Phase 7:   Week 5 — Computer Vision III            (lessons 11–12)
Phase 8:   Week 6 — NLP I (Text Rep + Embeddings)  (lessons 13–14)
Phase 9:   Week 7 — NLP II (Language Modeling)     (lessons 15–17)
Phase 10:  Week 8 — NLP III (Transformers)         (lessons 18–19)
Phase 11:  Week 9 — NLP IV (LLMs)                  (lesson 20)
Phase 12:  Week 10 — Genetic Algos + Deep RL       (lessons 21–22)
Phase 13:  Week 11 — Multi-Agent Systems           (lesson 23)
Phase 14:  Week 12 — AI Ethics + Multi-Modal       (lessons 24–25)
Phase 15:  Final Retro + Downstream Application
```

12 weeks + 3 setup/retro phases = 15 phases total, but the curriculum-week phases are the load-bearing ones.

## Phase 2: Week 0 — Course Setup + Environment

This is what I'd run this weekend (2026-07-04 / 07-05).

**Goal:** Local environment is fully working, every Phase 0/1 doc is committed, fork is ready to receive PRs.

**Subtasks:**
1. [x] Fork upstream (Phase 0.5)
2. [x] Sparse-clone locally (Phase 0.5)
3. [x] Python 3.11 venv with torch + tf-metal + course deps (Phase 0.5)
4. [x] Verify a known-good notebook runs end-to-end (smoke test)
5. [ ] Write PRD.md (this phase)
6. [ ] Write IMPLEMENTATION_PLAN.md (this phase)
7. [ ] Create 24 GitHub Issues (one per lesson)
8. [ ] Initial commit + push to fork
9. [ ] Create gbrain page for project
10. [ ] Smoke test: run `lessons/1-Intro/README.md` companion notebook if one exists

**Gate:** "Phase 2 ready" — env works, all docs committed, fork live, 24 issues open, ready to start Week 1.

## Phase 3: Week 1 — Intro + Symbolic AI

**Lessons:** 01 (Intro and History of AI), 02 (Knowledge Representation and Expert Systems)

**Subtasks:**
1. [ ] Read `lessons/1-Intro/README.md` end-to-end
2. [ ] Lesson 01: notes + close issue
3. [ ] Lesson 02: read write-up, run all 3 notebooks (Animals, FamilyOntology, MSConceptGraph), notes + close issue
4. [ ] Weekly retro: `NOTES/week-01.md`

**Gate:** Both lesson issues closed. Retro answers the three retro questions.

## Phase 4-14: Curriculum Weeks

Each follows the same pattern:

1. Read write-up
2. Run notebooks (PyTorch + TF where both exist)
3. Finish any lab
4. Write 3-10 lines of commentary
5. Close issue + open PR
6. End-of-week retro in `NOTES/week-NN.md`

Per-phase subtask counts will vary by lesson (1-3 lessons per week, ~2-3 notebooks per lesson where both frameworks exist, 0-1 labs per lesson).

## Phase 15: Final Retro + Downstream Application

**Goal:** Lock in the work and apply it somewhere real.

**Subtasks:**
1. [ ] Final synthesis post — answer the 5 self-check questions from PRD § Success Metrics
2. [ ] Pick at least one concept from the curriculum and ship it into a real project:
   - Embedding work → Paperbrain
   - Small CV classifier → fitcoach
   - RL spike → openwhoop
   - (or something else — decide based on what excited me)
3. [ ] Update SPEC § Goals with what I actually built
4. [ ] Update README with final status, lessons-learned, fork stats
5. [ ] Final gbrain page update

**Gate:** "Curriculum done" — final retro written, downstream application shipped, fork is portfolio-ready.

## Approval

Plan structure looks right? Moving to execution.