function opencode-commit
    # Check if there's anything staged
    set staged (rtk git diff --cached --stat)

    if test -z "$staged"
        echo "⚠️  Nothing staged. Run 'git add' first."
        return 1
    end

    set status_output (rtk git status)

    # Trigger your existing slash command + inject git context
    opencode run -m zai-coding-plan/glm-4.5-air "

## Git Status (rtk git status)
$status_output

## Staged Summary (rtk git diff --cached --stat)
$staged

# Commit codes

## INSTRUCTION:
You need to do `git commit` for all changes code

You MUST use Gitmoji style

## 📦 Claude Gitmoji Commit Policy

```
You MUST follow Gitmoji commit conventions.

FORMAT:
<emoji> (<optional-scope>): <short imperative message>

RULES:
1. Use exactly ONE leading emoji (Unicode format).
2. Add a scope in parentheses when applicable.
3. Use imperative mood ("Add", "Fix", not "Added", "Fixed").
4. Keep title under 72 characters.
5. No trailing period.
6. Do not include multiple emojis.
7. Choose the most semantically accurate emoji.
8. Separate body from title with a blank line (if body exists).
9. Body explains WHY, not WHAT.
```
---

## ✅ Examples

### Feature
```
✨ (auth): Add OAuth2 login support
```
### Bug Fix
```
🐛 (checkout): Fix tax rounding calculation
```
### Refactor
```
♻️ (api): Simplify user validation logic
```
### Hotfix
```
🚑 Fix production memory leak
```
### Docs
```
📝 Update API usage examples
```

"
end
