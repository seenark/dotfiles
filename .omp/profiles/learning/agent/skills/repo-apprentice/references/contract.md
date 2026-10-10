# Repo Apprentice behavioral contract

This file defines externally observable behavior. It exists so the learner can verify that the skill is following the intended methodology instead of merely trusting the model.

Use `PASS`, `FAIL`, or `UNKNOWN`. A self-assertion is not evidence.

## C0 — Invocation and isolation

PASS when:
- the skill was explicitly invoked, or an existing apprenticeship is explicitly resumed;
- `inspect` and `audit` do not mutate course progress;
- the skill does not require another skill to function.

FAIL when:
- it silently delegates the core workflow to another skill;
- an inspect/audit invocation starts interviewing or coding.

## C1 — Mission before deep repo analysis

Exit gate:
- `MISSION.md` contains a concrete graduation predicate;
- rebuild language/approach is resolved enough to plan;
- core scope and explicit out-of-scope items exist.

Behavior:
- ask one unresolved question per turn;
- do not run the concept knowledge diagnostic yet;
- do not ask repository facts the agent can discover itself.

FAIL examples:
- a 15-question intake form;
- asking whether the learner knows async/tool-calling before discovering whether the mission needs them;
- generating a course before graduation is defined.

## C2 — Discovery before learner diagnostic

Exit gate:
- `REPO-MAP.md` contains black-box behavior, minimal architecture, runtime flow(s), source anchors, and candidate capabilities;
- production-only complexity is identified where useful.

Behavior:
- index broadly but avoid comprehensive wiki generation;
- prefer source/manifests/search/runtime evidence before semantic speculation.

FAIL examples:
- curriculum is a directory/file tour;
- deep documentation is generated for most modules before a clone target is chosen.

## C3 — Capability and concept model before diagnostic

Exit gate:
- core capabilities are classified and dependency-ordered;
- supporting/optional/production-only items are separated;
- concepts required by core capabilities are identified.

Behavior:
- capabilities are behaviors/abilities, not filenames;
- roughly 4–10 core milestones is a preference, not a quota.

FAIL examples:
- `agent-loop.ts` is a milestone merely because it is a file;
- every discovered concept becomes required course content.

## C4 — Adaptive learner grill

Exit gate:
- uncertainty remaining in the learner model would not materially change course shape, lesson depth, or analogy choice.

Behavior:
- one diagnostic question per turn;
- assess only mission-relevant concepts;
- prefer scenario/trace/prediction over “Do you know X?”;
- update `LEARNER.md` immediately;
- skip redundant probes when an answer demonstrates multiple concepts.

FAIL examples:
- generic junior/mid/senior classification as the primary learner model;
- one question for every concept;
- long survey before interaction.

## C5 — Finite course

Exit gate:
- `COURSE.md` contains ordered core milestones;
- each core milestone adds observable/runnable behavior;
- each has a cheap verification criterion;
- optional deep dives are separate;
- distance to graduation is visible.

FAIL examples:
- course chapters mirror folders;
- graduation is blocked on optional content;
- extensive testing is required when testing is out of mission.

## C6 — Just-in-time lesson

Applicable once a milestone begins.

PASS when the current lesson:
- investigates the original implementation before explaining it;
- traces HOW end-to-end enough to avoid hand-waving;
- searches available evidence for WHY when rationale matters;
- labels rationale as CODE FACT, HISTORY FACT, INFERENCE, or UNKNOWN;
- teaches only missing concepts;
- inserts language background only when needed now.

FAIL examples:
- inventing author intent;
- a full language tutorial before continuing;
- pre-generating all future lessons.

## C7 — Learner owns rebuild

PASS when:
- the learner is normally the one implementing `.repo-apprentice/build/`;
- the agent uses the hint ladder progressively;
- a full solution is provided only after explicit request.

FAIL when:
- the agent proactively writes the milestone implementation for the learner;
- the agent turns the apprenticeship into an autonomous coding task.

Reading, running, inspecting, and reviewing the learner's code do not violate this contract.

## C8 — Verify, compare, record

A milestone cannot be marked complete until:
- its observable behavior is demonstrated;
- the learner implementation is compared with the original;
- intentionally omitted production complexity is stated when relevant;
- learner concepts are updated from observed work;
- a milestone record is written.

Tests may be read as specification evidence. Exhaustive test writing is not required unless in mission.

## C9 — Resume

When `.repo-apprentice/` already exists:

PASS when:
- the agent reads `MISSION.md`, `LEARNER.md`, `COURSE.md`, `CURRENT.md`, and relevant build state before acting;
- it resumes the unfinished phase/milestone rather than restarting intake.

## C10 — Graduation

PASS only when every core behavior predicate is demonstrated.

Graduation output must map:

```text
behavior → capability → learner implementation → original source anchor
```

Optional deep dives remain optional.

## Phase order

Normal progression:

```text
mission
  → discovery
  → capability-model
  → learner-diagnostic
  → course
  → milestone
  → milestone ...
  → graduated
```

A phase may move backward only to repair new evidence or a contradicted assumption. Record why.

## Audit procedure

When invoked with `audit`:

1. Read `CURRENT.md` to determine the current phase.
2. Read only the state needed to evaluate applicable contracts.
3. Report a compact table:
   - contract;
   - PASS/FAIL/UNKNOWN;
   - evidence;
   - consequence.
4. Identify the **first violated gate**. Later failures may be downstream effects.
5. Do not repair anything unless asked.
6. If chat history required for a claim is unavailable, mark it UNKNOWN rather than inventing evidence.

A fresh-session audit is preferable because it reduces self-justification bias.


# V0.3 amendments — authoritative over earlier conflicting text

## A1 — Mission provenance
Mission-specific choices such as provider, language, fidelity, and interface require provenance: `learner-stated`, `agent-recommended + learner-accepted`, or `repo-derived constraint`. A fresh audit reports UNKNOWN for a user-specific mission choice whose provenance is not persisted. The first mission question should elicit the learner's own target without a detailed pre-filled recommendation.

## A2 — Diagnostic evidence semantics
`unassessed` means no evidence yet. `unknown` requires diagnostic/observed evidence of a missing usable model. “No evidence yet” MUST NOT be recorded as `unknown`. Learner-model rows must be atomic enough that one answer supports the entire row. Diagnostics use free-form questions by default. Multiple-choice self-rating and “Recommended” diagnostic answers are FAIL unless explicitly requested. Every diagnostic turn must be persisted in `.repo-apprentice/DIAGNOSTIC.md`; without it, fresh-audit C4 interaction claims are UNKNOWN. Unassessed concepts may be deferred as `probe-at-milestone`.

## A3 — Course approval gate
`COURSE.md` must say `Status: proposed` when first generated. After generating/showing it, STOP; keep `CURRENT.md` at `Phase: course`; do not inspect or teach M1. Wait for a later explicit learner approval or edits. Only then set `Status: approved` and transition to `Phase: milestone`. Entering M1 in the same turn as first course generation is FAIL.

## A4 — Personalization semantics
For each milestone: working/strong → `omit-generic-teaching`; recognize → `bridge`; unknown → `foundational`; unassessed → `probe-first`. A core capability remains a rebuild milestone even if its concepts are already known.

## A5 — Hint discipline / learner ownership
Before the learner's first implementation attempt, hint level is 0. Allowed: behavior, constraints, verification target, source anchors. Not allowed unless explicitly requested: pseudocode, exact type definitions, signatures, scaffolds, focused code fragments. Track `Learner attempt: none|present` and `Hint level used: 0..6` in `CURRENT.md`. A fresh audit MUST NOT mark learner ownership PASS merely because `build/` is empty. If persisted evidence cannot establish guidance, report UNKNOWN. Proactively supplying an exact type union/function scaffold before the learner attempts is FAIL.

## A6 — Audit rule
For interaction-sensitive behavior, absence of persisted evidence is UNKNOWN, never PASS.
