# 🗄️ Dart & Flutter SQLite & Raw SQL Mastery

A hands-on, interactive SQL practice suite written in **Dart**, tailored for **Flutter developers and mobile engineers** preparing for technical SQL rounds and real-world database development.

---

## 🚀 Features

- 🎯 **Raw SQL Focus**: Practice standard SQL statements (`SELECT`, `INSERT`, `UPDATE`, `JOIN`, `GROUP BY`, `HAVING`, `WINDOW FUNCTIONS`) matching Flutter's `sqflite` raw query paradigms.
- 📊 **Visual Terminal Output**: Every query automatically formats and renders as a clean visual Unicode table in your Linux terminal.
- 🗂️ **Part 1: Topic-Wise Foundational Mastery**: 5 modules covering DDL, CRUD, Filtering, Joins, Aggregations, Transactions, Indexing, and Schema Migrations.
- 🧩 **Part 2: LeetCode & Interview Scenarios**: Hands-on scenario questions (*Second Highest Salary*, *Combine Two Tables*, *Customers Who Never Order*, *Department Highest Salary*, *Consecutive Numbers*, *Tree Node*, etc.) pre-seeded with SQLite tables and test runners.

---

## 📌 Quick Links
- 📋 **[Track Your SQL Progress on todo_sql.md](todo_sql.md)**
- ⚡ **[Dart sqlite3 Package Docs](https://pub.dev/packages/sqlite3)**
- 📱 **[Flutter sqflite Package Docs](https://pub.dev/packages/sqflite)**

---

## 💡 Essential SQL & Flutter Cheat Sheet

### 1. Flutter `sqflite` vs Dart `RawSqliteHelper` Query Equivalents

| Action | Standard SQL Statement | Flutter `sqflite` / Dart Helper Method |
|---|---|---|
| Create Table | `CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT)` | `db.execute(sql)` |
| Read Rows | `SELECT * FROM users WHERE age > ?` | `db.rawQuery(sql, [18])` |
| Insert Row | `INSERT INTO users (name, age) VALUES (?, ?)` | `db.rawInsert(sql, ['Alice', 25])` |
| Update Row | `UPDATE users SET age = ? WHERE id = ?` | `db.rawUpdate(sql, [26, 1])` |
| Delete Row | `DELETE FROM users WHERE id = ?` | `db.rawDelete(sql, [1])` |

---

### 2. Standard SQL Query Execution Order
```text
1. FROM / JOIN     -> Identify tables & join relations
2. WHERE           -> Filter raw rows before grouping
3. GROUP BY        -> Group rows into summary buckets
4. HAVING          -> Filter aggregated group buckets
5. SELECT          -> Choose columns / compute expressions
6. DISTINCT        -> Deduplicate result rows
7. ORDER BY        -> Sort result rows (ASC/DESC)
8. LIMIT / OFFSET  -> Paginate result set (essential for Flutter infinite scrolling)
```

---

## 🚀 How to Run Exercises

1. Install dependencies:
   ```bash
   cd dart_sql_mastery
   dart pub get
   ```

2. Run any topic exercise or interview scenario directly in terminal:
   ```bash
   # Part 1 Exercise:
   dart run lib/part1_topics/01_ddl_and_crud/01_create_table_and_insert.dart

   # Part 2 Interview Scenario:
   dart run lib/part2_interview_scenarios/01_second_highest_salary.dart
   ```

3. View the rendered visual table output directly in your Linux console!
