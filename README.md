# AI-For-Beginners — My Fork

> This is **Shirin's working fork** of [microsoft/AI-For-Beginners](https://github.com/microsoft/AI-For-Beginners).
> 12 weeks, 24 lessons. Started 2026-07-01. Target finish: 2026-09-27.

## What this fork is for

- **My work** through the curriculum, with my own notes and solutions pushed on top of upstream.
- **Portfolio artifact**: each lesson closes via a PR that shows what I learned.
- **Living journal**: weekly `NOTES.md` files capture commentary in my own words.

The upstream curriculum is preserved verbatim — see [the original README](./README.md) for the syllabus. I'm not modifying the curriculum; I'm learning from it.

## How this is organized

```
.
├── README.md              ← you are here (fork overview)
├── SPEC.md                ← learning contract — what "done" means
├── PRD.md                 ← requirements, scope, success metrics
├── IMPLEMENTATION_PLAN.md ← 12-week phase breakdown, one phase per week
├── NOTES/                 ← weekly retro journal
│   ├── week-01.md
│   ├── week-02.md
│   └── ...
├── lessons/               ← upstream notebooks (unchanged)
├── .venv/                 ← Python 3.11 env (not committed — gitignored)
└── upstream/              ← (none — git remote 'upstream' tracks it)
```

## Tracking

- **24 GitHub Issues** = one per lesson, checkbox-style.
- Each issue has: lesson link, frameworks to run (PyTorch/TF/both), a "definition of done" checklist, and links to the relevant `NOTES/` entry.
- A lesson is closed when its PR merges.

See the [issue list](https://github.com/sprajapati024/AI-For-Beginners/issues) for current status.

## Local environment

```bash
# One-time setup
uv venv --python 3.11 .venv
source .venv/bin/activate
uv pip install -r requirements.txt
uv pip install tensorflow-macos tensorflow-metal  # Apple Silicon

# Run a notebook
jupyter notebook lessons/3-NeuralNetworks/03-Perceptron/Perceptron.ipynb
```

Hardware: Apple Silicon Mac, GPU acceleration via PyTorch MPS + TensorFlow Metal.

## Pace

- 2 lessons per week.
- Weekly retro written in `NOTES/week-NN.md` on Sunday.
- If I fall behind → extend timeline rather than skip labs (see SPEC § Risks).

## How this fork relates to upstream

```bash
# Pull in upstream changes (course fixes, new notebooks, etc.)
git fetch upstream
git merge upstream/main
git push origin main
```

I treat upstream as authoritative — my fork adds notes/exercises on top but doesn't fork the curriculum itself.

---

See [SPEC.md](./SPEC.md) for the full learning contract, [PRD.md](./PRD.md) for requirements, and [IMPLEMENTATION_PLAN.md](./IMPLEMENTATION_PLAN.md) for the week-by-week plan.