# Adaptive learner diagnostic

The diagnostic is a placement mechanism, not an exam.

## Core rule

**Do not ask a question unless its answer can change the course, the lesson depth, or the choice of analogy.**

Assess the concepts required by the selected clone target, not the learner's general seniority.

## Levels

| Level | Meaning |
|---|---|
| `unassessed` | No evidence yet; this is the default. |
| `unknown` | Probed/observed evidence shows no usable model yet. |
| `recognize` | Recognizes terminology or examples but cannot reliably apply it. |
| `working` | Can reason with and use it for ordinary cases. |
| `strong` | Can explain mechanisms/trade-offs and transfer it to a new case. |

Do not pretend these are precise measurements.

## Better questions

Prefer prompts that expose a mental model.

Bad:

> Do you understand async iterators?

Better:

> Imagine a model API yields chunks over time and the caller uses `for await`. What must the producer and consumer each be doing?

Bad:

> Do you know tool calling?

Better:

> A model responds with `read_file("README.md")` instead of a final answer. What should the application do next, and how does the tool result get back into the conversation?

A good answer may resolve multiple concepts at once.

## Adaptive branching

Probe high-leverage prerequisites first.

Example:

```text
async execution
├── streaming
└── async iteration
```

If the learner demonstrates `async execution` strongly and naturally explains streaming/iteration, skip lower-value probes.

If an answer is partial, mark only the demonstrated pieces and probe the missing link.

## Evidence

Record why the level was assigned:

- `stated` — learner says they know it; low confidence unless mundane;
- `diagnostic` — answer demonstrated a mental model;
- `observed-in-build` — implementation/reasoning demonstrated it;
- `corrected-in-build` — earlier assessment was too optimistic.

Prefer observed evidence over self-report.

## When to stop

Stop the interview when all remaining uncertain concepts would receive the same treatment regardless of the answer.

The learner model can be corrected later during the build. Initial placement does not need to be perfect.


## V0.3 evidence rules

Absence of evidence is `unassessed`, never `unknown`.

A learner-model row must be atomic. If the learner demonstrates context composition but not instruction precedence, track them separately.

Ask diagnostics as free-form questions. Do not show self-rating answer choices and never label an answer “Recommended.”

Append every diagnostic turn to `.repo-apprentice/DIAGNOSTIC.md` with the exact question, the learner's exact or faithfully quoted answer, and concept updates.

The initial grill may leave concepts unassessed. If they affect only a future milestone, mark them `probe-at-milestone` and diagnose them just in time.
