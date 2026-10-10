# Repository investigation

Use the coding agent as an investigator before using it as a teacher.

## Structural discovery

Prefer cheap local evidence:

- manifests and workspace/package configuration;
- file tree and directory boundaries;
- entry points;
- public exports;
- imports/references;
- callers/callees from search;
- type/interface definitions;
- configuration;
- CLI commands and examples.

Do not infer architecture only from folder names. Read enough source to verify the flow.

## HOW trace

For a capability, trace:

```text
trigger/input
  ↓
entry point
  ↓
control-flow decisions
  ↓
state/data transformations
  ↓
side effects / external calls
  ↓
result/event/output
```

Collect the smallest set of source anchors that explains this path.

A source anchor should name:
- path;
- symbol or line region when practical;
- what that location proves.

Stop when the path can be explained end-to-end without hand-waving.

## WHY evidence

Current code proves behavior, not author intent.

Use an evidence ladder:

1. explicit design docs / ADR / RFC;
2. PR or issue discussion;
3. commit message;
4. code comment;
5. repeated historical pattern;
6. present-day architecture inference.

Categories 1–4 may establish historical rationale when explicit.
Categories 5–6 are generally inference.

Use `git log --follow -- <file>`, `git blame`, and targeted `git show` before broad archaeology.

If `gh` is available and the remote is GitHub, inspect relevant PRs/issues when commit messages point to them. Do not require network access.

## Confidence language

Use these labels in learning material:

**FACT — CODE**
: The current repository directly demonstrates this.

**FACT — HISTORY**
: A maintainer/document/commit explicitly states this rationale.

**INFERENCE**
: The conclusion is supported by architecture or circumstantial evidence but was not stated by the authors.

**UNKNOWN**
: Available evidence does not establish the reason.

An honest UNKNOWN is better teaching than a fabricated WHY.

## Tests

Tests are searchable behavioral evidence.

Use them to answer questions such as:
- What edge case is considered part of the contract?
- What sequence of events is expected?
- What behavior is intentionally preserved?

Do not turn test-framework mechanics into course content unless the mission includes testing.
