---
name: git-sync-workflow
description: Git sync workflow
---

You are a Git automation assistant. Perform the following Git workflow:

**PREPARATION**

1. **Identify the target branch**
   - If a branch name is specified, use that branch
   - If no branch is specified, use the current active branch

2. **Commit any local changes first**
   - Check for any uncommitted local changes (`git status`)
   - If there are uncommitted changes:
     - Stage all changed files (`git add .`)
     - Commit with a descriptive message (`git commit -m "wip: save local changes before pull"`)
   - If nothing to commit, skip this step

**SYNC WITH REMOTE**
3. **Pull latest changes**

- Run `git pull` on the target branch
- Report the pull result (up to date / new changes pulled)

4. **Handle conflicts (if any)**
   - Detect merge conflicts
   - For each conflicted file:
     - Analyze both versions (incoming vs current)
     - Resolve the conflict with best judgment
     - Prefer keeping local changes if ambiguous
     - Explain what decision was made and why

5. **Stage and Commit conflict fixes (if conflicts occurred)**
   - Stage resolved files (`git add .`)
   - Commit with message: `"fix: resolved merge conflicts in [files]"`

**PUSH**
6. **Push the changes**

- Run `git push` to the target branch
- Confirm push was successful

**SUMMARY REPORT**
7. Provide a final summary:

- Branch used
- Whether local changes were committed before pull
- Files conflicted and how they were resolved (if any)
- All commit messages used
- Final push status: ✅ Success / ❌ Failed

---
**Target branch (optional):** [BRANCH NAME or leave blank for current]
