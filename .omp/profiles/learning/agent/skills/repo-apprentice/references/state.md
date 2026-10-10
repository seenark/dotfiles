# Learning workspace templates

Use these shapes as guidance. Keep them concise and human-readable.

## MISSION.md

```markdown
# Mission

## Why this repo
...

## Decision provenance
- rebuild language: ... — learner-stated
- provider: ... — agent-recommended + learner-accepted

## Graduation
The learner can ...

## Rebuild target
- language:
- minimal behavior:

## Core scope
- ...

## Out of scope
- exhaustive tests
- ...
```

Graduation must be falsifiable enough that both learner and agent can tell when it has happened.

## REPO-MAP.md

```markdown
# Repository Map

## Black-box behavior
...

## Minimal architecture
...

## Runtime flows
...

## Capabilities

### C1 — ...
- class: core
- depends on:
- source anchors:
- concepts:
- production complexity omitted:

### O1 — ...
- class: optional
...
```

Do not enumerate every module.

## LEARNER.md

```markdown
# Learner Model

| Concept | Level | Confidence | Evidence | Useful anchor / note |
|---|---|---|---|---|
| async iteration | working | high | diagnostic | uses it in Node streams |
| context compaction | unknown | high | diagnostic | |
```

Update from build evidence.

## COURSE.md

```markdown
# Course

Status: proposed

## Core to Graduation

- [x] M1 — ...
  - behavior:
  - source anchors:
  - missing concepts:
  - verify:

- [ ] M2 — ...

Progress: 1/6 core milestones.

## Optional Deep Dives
- [ ] ...
```

Course units are capabilities/vertical slices, never repository directories.

## CURRENT.md

```markdown
# Current

Phase: milestone
Milestone: M2 — ...
Learner attempt: none
Hint level used: 0

## Where we stopped
...

## Learner's current implementation
...

## Open confusion
...

## Next interaction
...
```

This is the fast resume file. Keep it short.

## records/YYYY-MM-DD-mN.md

```markdown
# Milestone record

Capability:
Behavior demonstrated:
Concepts updated:
Original source/history evidence:
What the learner's version omits:
Remaining confusion:
Next:
```


## Phase field

`CURRENT.md` MUST contain exactly one current phase value near the top:

- `mission`
- `discovery`
- `capability-model`
- `learner-diagnostic`
- `course`
- `milestone`
- `graduated`

Change it only after the corresponding exit gate in `skill://repo-apprentice/references/contract.md` is satisfied. This field is an audit aid, not proof by itself.


## DIAGNOSTIC.md

Persist each diagnostic question, learner answer, and concept update. A fresh audit uses this to validate the grill.

## Course approval

`COURSE.md` has `Status: proposed` or `Status: approved`. While proposed, `CURRENT.md` must stay `Phase: course`. Enter `Phase: milestone` only after a later explicit learner approval.
