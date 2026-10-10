# Repo Apprentice V0.3 — OMP install and validation

## Recommended first trial: isolated OMP profile

This keeps existing work skills/config untouched.

```bash
mkdir -p ~/.omp/profiles/learning/agent/skills
cp -R repo-apprentice ~/.omp/profiles/learning/agent/skills/
```

Start OMP in the repository you want to study:

```bash
omp --profile learning
```

Then verify discovery:

```text
/skill:repo-apprentice inspect
```

If the slash command exists and inspect mode explains the contract without starting an interview, discovery and explicit invocation are working.

Start:

```text
/skill:repo-apprentice
```

Audit from a fresh session when desired:

```text
/skill:repo-apprentice audit
```

## First behavioral smoke test

Do not judge the skill by whether the prose sounds good. Check observable behavior.

Expected sequence:

1. It asks exactly one mission question.
2. It does not ask concept-knowledge questions yet.
3. Resolved mission decisions appear in `.repo-apprentice/MISSION.md`.
4. Only after mission scope is concrete does it inspect the repo deeply.
5. It derives capabilities before learner concepts.
6. Learner diagnostic asks scenario-based questions one at a time.
7. `COURSE.md` is capability-based and finite.
8. During a milestone it does not implement the learner's reconstruction unless explicitly asked.
9. `audit` reports the first violated contract gate rather than silently repairing it.

See `references/contract.md` for the full contract.


## What changed in V0.3
- added `unassessed`;
- atomic/evidence-calibrated learner concepts;
- free-form diagnostics and `DIAGNOSTIC.md`;
- mission decision provenance;
- explicit course approval gate;
- just-in-time probes;
- no proactive code scaffold before the learner's first attempt;
- stronger fresh-session audit UNKNOWN semantics.
