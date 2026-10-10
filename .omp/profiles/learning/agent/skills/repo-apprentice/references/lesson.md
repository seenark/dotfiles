# Just-in-time lesson method

A lesson exists to unblock the next build step, not to cover a topic comprehensively.

## Shape

Use only the sections that help:

1. **Behavior to reproduce** — what the learner will make happen.
2. **Mental model** — the minimum moving parts.
3. **Original implementation** — a traced worked example with source anchors.
4. **How it works** — control/data flow.
5. **Why** — fact/history/inference/unknown as appropriate.
6. **Language bridge** — only unfamiliar syntax/semantics required now.
7. **Build step** — the next behavior the learner implements.
8. **Verification** — cheapest way to prove it.
9. **Compare** — why production code is more complex.

Do not deliver all nine mechanically.

## Small growing explanations

For systems with several moving parts, introduce them incrementally.

Example:

```text
prompt → model
```

then:

```text
prompt → model
          ↓
       tool call
```

then:

```text
prompt → model
          ↓
       tool call
          ↓
        execute
          ↓
      tool result
          └────→ model
```

Prefer this over one dense architecture diagram.

## Use existing knowledge as an anchor

If the learner is strong in HTTP streaming but new to LLM streaming, bridge from that known concept.

If they know event emitters but not the repository's event stream abstraction, compare mechanisms precisely.

Do not reteach the anchor itself.

## Language bridges

A language bridge should normally fit in a few paragraphs or a tiny example.

Teach:
- the construct;
- the one semantic rule that matters;
- how the repository uses it;
- what mistake would break the current milestone.

Do not introduce unrelated language features.

## Learner ownership

The learner should type the reconstruction.

When asked for help, climb the hint ladder gradually. Do not jump to a complete solution unless explicitly requested.

Review their implementation for conceptual correctness first. Avoid turning the exercise into a style review.

## Comparison after success

After the simple version works, return to the production repo and ask:

- What additional problem is the production code solving?
- Which complexity is robustness/compatibility/scale?
- Which part is essential to the mechanism?
- Which part can remain optional for this learner?

This is often where the production architecture becomes understandable.
