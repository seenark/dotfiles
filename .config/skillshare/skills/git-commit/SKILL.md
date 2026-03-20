# Conventional Commit Generator

```markdown
---
name: Conventional Commit Generator
description: Generate standardized commit messages following conventional commit format with emojis
version: 1.0.0
author: Assistant
tags: [git, commits, conventional-commits, development]
triggers:
  - create commit message
  - generate commit
  - help me commit
  - write commit message
---

# Conventional Commit Generator

This skill helps you create standardized commit messages following the conventional commit format with emojis.

## Instructions

When a user asks for help creating a commit message, follow these steps:

### 1. Ask about the type of change

Present these options:
- ✨ **feat**: Adding a new feature
- 🐛 **fix**: Fixing a bug
- 📝 **docs**: Add or update documentation
- 💄 **style**: Add or update styles, UI or UX
- ♻️ **refactor**: Code change that neither fixes a bug nor adds a feature
- ⚡️ **perf**: Code change that improves performance
- ✅ **test**: Adding tests cases
- 🚚 **chore**: Changes to the build process or auxiliary tools
- ⏪️ **revert**: Revert to a commit
- 🚧 **wip**: Work in progress
- 👷 **build**: Add or update regards to build process
- 💚 **ci**: Add or update regards to CI/CD process

### 2. Ask about the scope (optional)

Suggest these scopes if applicable:
- web
- server
- api
- pdf-splitter
- queues
- surreal
- s3
- database
- ci
- cd
- docker
- general
- **Allow custom scopes**

### 3. Ask for a short description

- Request a SHORT, IMPERATIVE tense description (max 100 characters)
- Example: "add user authentication feature"

### 4. Ask for optional details

- Longer description (optional)
- Breaking changes (only for feat/fix types)
- Related issue numbers (optional)

### 5. Generate the commit message

Use this format:

```
:emoji: type(scope): short description

[Optional longer description]

[Optional BREAKING CHANGE: description]

[Optional issues: #31, #34]
```

### 6. Present the final commit and ask for confirmation

## Format Rules

- Use emoji codes (e.g., `:sparkles:`, `:bug:`)
- Keep subject line under 100 characters
- Use imperative mood ("add" not "added" or "adds")
- Scope should be lowercase
- Breaking changes only allowed for feat and fix types
- Subject should not end with a period

## Commit Type Reference

| Emoji | Type | Code | Usage |
|-------|------|------|-------|
| ✨ | feat | `:sparkles:` | New feature |
| 🐛 | fix | `:bug:` | Bug fix |
| 📝 | docs | `:memo:` | Documentation |
| 💄 | style | `:lipstick:` | UI/UX updates |
| ♻️ | refactor | `:recycle:` | Code refactoring |
| ⚡️ | perf | `:zap:` | Performance |
| ✅ | test | `:white_check_mark:` | Tests |
| 🚚 | chore | `:truck:` | Maintenance |
| ⏪️ | revert | `:rewind:` | Revert changes |
| 🚧 | wip | `:construction:` | Work in progress |
| 👷 | build | `:construction_worker:` | Build system |
| 💚 | ci | `:green_heart:` | CI/CD |

## Examples

### Example 1: Feature Addition

**User Input:**
```
Help me create a commit message for adding a new feature
```

**Assistant Response:**
```
I'll help you create a conventional commit message! Let's go through this step by step.

**1. What type of change are you committing?**
Since you mentioned adding a new feature, I suggest: ✨ **feat**

**2. What's the scope of this change?** (optional)
Choose from: web, server, api, pdf-splitter, queues, surreal, s3, database, ci, cd, docker, general
Or provide a custom scope, or leave blank.

**3. What's the short description?**
Please provide a brief, imperative description of the change (e.g., "add user login functionality")

Please share these details and I'll generate your commit message!
```

### Example 2: Bug Fix

**User Input:**
```
I fixed a bug in the web component where buttons weren't clickable
```

**Assistant Response:**
```
Perfect! Let me create a commit message for this bug fix.

Based on your description:
- **Type**: 🐛 fix
- **Scope**: web
- **Description**: make buttons clickable

Here's your commit message:

:bug: fix(web): make buttons clickable

Fixed issue where buttons were not responding to click events.

**Commit command:**
git commit -m ":bug: fix(web): make buttons clickable"

Does this look good, or would you like to:
- Add a longer description?
- Reference any issue numbers?
- Make any changes?
```

### Example 3: Documentation Update

**User Input:**
```
create commit: updated documentation for API endpoints
```

**Assistant Response:**
```
I'll create a documentation commit for you!

Here's your commit message:

:memo: docs(api): update endpoint documentation

Updated documentation for API endpoints.

**Commit command:**
git commit -m ":memo: docs(api): update endpoint documentation"

Would you like to:
- Add more details about which endpoints were documented?
- Reference any related issues?
- Adjust the message?
```

### Example 4: Breaking Change

**User Input:**
```
I need to commit a feature that changes the authentication API
```

**Assistant Response:**
```
I'll help you create a commit for this authentication change.

**Questions:**
1. Scope: Suggested "api" - is this correct?
2. Short description: Something like "update authentication flow"?
3. Does this introduce any BREAKING CHANGES?

If yes to breaking changes, please describe what will break.

**Preliminary commit:**

:sparkles: feat(api): update authentication flow

Changed authentication from session-based to JWT tokens.
Updated all authentication endpoints.

BREAKING CHANGE: Session-based authentication is no longer supported. 
All clients must migrate to JWT token authentication.

Closes #123

**Is this correct?**
```

### Example 5: Performance Improvement

**User Input:**
```
optimized database queries in the pdf-splitter service
```

**Assistant Response:**
```
Great! I'll create a performance optimization commit.

Here's your commit message:

:zap: perf(pdf-splitter): optimize database queries

Improved query performance by adding indexes and reducing N+1 queries.

**Commit command:**
git commit -m ":zap: perf(pdf-splitter): optimize database queries" -m "Improved query performance by adding indexes and reducing N+1 queries."

Would you like to add any specific performance metrics or issue references?
```

## Quick Reference Commands

### Basic commit:
```bash
git commit -m ":emoji: type(scope): description"
```

### With body:
```bash
git commit -m ":emoji: type(scope): description" -m "Longer description here"
```

### With breaking change:
```bash
git commit -m ":emoji: type(scope): description" -m "BREAKING CHANGE: description"
```

### Full example:
```bash
git commit -m ":sparkles: feat(api): add user authentication" \
  -m "Implemented JWT-based authentication for API endpoints." \
  -m "BREAKING CHANGE: All endpoints now require auth header" \
  -m "Closes #45, #48"
```

## Interactive Mode

If the user provides minimal information, ask clarifying questions:

1. **Type unclear?** → Ask which type best describes their change
2. **Scope unclear?** → Suggest relevant scopes or ask what area was modified
3. **Description vague?** → Ask for more specifics using imperative mood
4. **Breaking changes?** → For feat/fix, always ask if there are breaking changes
5. **Related issues?** → Ask if any issues should be referenced

## Validation Checklist

Before presenting the final commit, verify:
- [ ] Emoji code is correct (`:sparkles:` not `✨`)
- [ ] Type matches the change
- [ ] Scope is lowercase and relevant
- [ ] Subject is imperative mood
- [ ] Subject is under 100 characters
- [ ] Subject has no trailing period
- [ ] Breaking changes are marked (if applicable)
- [ ] Issue numbers use # prefix

## Tips for Users

1. **Be specific**: "add user login" is better than "update code"
2. **Use imperative mood**: "add" not "added" or "adds"
3. **Keep it short**: Subject should be scannable at a glance
4. **One commit, one purpose**: Don't mix unrelated changes
5. **Document breaking changes**: Always note what will break for users
