# 🛠️ Maintainer & Template Management Guide

This document is for repository maintainers and contributors who need to update, sync, or manage the **`template`** branch and workspace exercises.

---

## 🔒 Template Branch Protection Overview

The **`template`** branch is a pristine, frozen starter template. To prevent accidental commits or pushes from practitioners, the repository uses a **3-Layer Watchdog System**:

1. **Local Git Watchdog Hook** ([`.githooks/pre-push`](.githooks/pre-push)): Automatically blocks direct pushes to `template`.
2. **Setup Script Protection** ([`setup.dart`](setup.dart)): Automatically redirects users on `template` or `main` to a fresh practice branch (`practice/workspace-...`).
3. **GitHub Actions Workflow** ([`.github/workflows/protect_template.yml`](.github/workflows/protect_template.yml)): Blocks unauthorized server-side pushes to `template`.

---

## 🔑 How to Push Updates to `template` as a Maintainer

When you need to push official updates or new exercises to the `template` branch, use one of the maintainer override methods below:

### Method 1: Use Environment Variable (Recommended)
Set `ALLOW_TEMPLATE_UPDATE=true` before running `git push`:

```bash
ALLOW_TEMPLATE_UPDATE=true git push origin template
```

### Method 2: Git `--no-verify` Flag
Use Git's built-in `--no-verify` flag to bypass local hooks:

```bash
git push origin template --no-verify
```

---

## 🤖 GitHub Actions Workflow Override

When pushing a commit directly to `template`, include **`[template sync]`** or **`[admin update]`** in your commit message so the server-side GitHub Actions check passes:

```bash
git commit -m "Add new exercises to template [template sync]"
ALLOW_TEMPLATE_UPDATE=true git push origin template
```

---

## 🔄 How to Sync `main` and `template` Branches

To keep both `main` (master solutions) and `template` (pristine starter code) in sync after adding new exercise templates:

```bash
# 1. Commit changes on main
git checkout main
git add .
git commit -m "Add new topics [template sync]"
git push origin main

# 2. Merge into template and push with maintainer override
git checkout template
git merge main
ALLOW_TEMPLATE_UPDATE=true git push origin template

# 3. Return to main
git checkout main
```

---

## ➕ Adding New Exercises to the Workspace

- **DSA Exercises**: Add new `.dart` files under `neetcode_150_dsa/lib/<category_folder>/` and update `neetcode_150_dsa/todo_list.md`.
- **SQL Exercises**: Add new `.dart` files under `dart_sql_mastery/lib/part2_interview_scenarios/` and update `dart_sql_mastery/todo_sql.md`.
