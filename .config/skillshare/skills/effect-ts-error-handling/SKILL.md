---
name: effect-ts-error-handling
description: "Expert in writing robust error handling for asynchronous code in Effect-TS. Focuses on replacing generic UnknownExceptions with typed domain errors using Data.TaggedError and Effect.tryPromise({ try, catch }). Covers API calls, database interactions, and promise wrapping. Use when: Effect-TS, Effect.tryPromise, async effect, typed errors, Data.TaggedError, handling promise rejections."
source: effect-ts-best-practices (MIT)
---

# Effect-TS Error Handling Skill

## Goal
Write robust, type-safe asynchronous code using `Effect.tryPromise` with explicit error definitions, avoiding generic exceptions.

## Context
When writing Effect-TS code involving Promises (e.g., database calls, API fetch, file system operations), standard `Promise` rejections result in an `UnknownException` if not handled correctly. To leverage the full power of the Effect ecosystem (like `catchTag` and `Schema` decoding), these must be converted into typed Domain Errors immediately.

## Rules

1.  **Never** use `Effect.tryPromise` with a simple callback (e.g., `Effect.tryPromise(() => fetch(...))`). This results in an untyped `UnknownException`.
2.  **Always** use the object syntax: `Effect.tryPromise({ try: ..., catch: ... })`.
3.  **Define Custom Errors** using `class [Name] extends Data.TaggedError("[Name]")<{ ... }> {}`. This automatically sets up the `_tag` property required for pattern matching.
4.  The `catch` function in `tryPromise` must receive the `unknown` error from the rejection and return a new instance of your Custom Error.

## Example Pattern

```typescript
import { Effect, Data } from "effect";

// 1. Define the Domain Error
// usage: new DatabaseConnectionError({ cause: error })
export class DatabaseConnectionError extends Data.TaggedError("DatabaseConnectionError")<{
  readonly cause: unknown;
}> {}

// 2. Wrap the Promise
const connectToDb = Effect.tryPromise({
  try: () => dbClient.connect(), // The async operation
  catch: (error) => new DatabaseConnectionError({ cause: error }) // Remap immediately
});

// 3. Usage works seamlessly with catchTag
const program = connectToDb.pipe(
  Effect.catchTag("DatabaseConnectionError", (err) => 
    Effect.logError(`DB failed: ${err.cause}`)
  )
);
Common Mistakes to Avoid
❌ The "Lazy" Way (Bad)
// Returns Effect<Response, UnknownException>
// Hard to debug, hard to catch specific errors later.
const bad = Effect.tryPromise(() => fetch("/api/user"));
✅ The "Typed" Way (Good)
class HttpError extends Data.TaggedError("HttpError")<{ cause: unknown }> {}

// Returns Effect<Response, HttpError>
const good = Effect.tryPromise({
  try: () => fetch("/api/user"),
  catch: (error) => new HttpError({ cause: error })
});
