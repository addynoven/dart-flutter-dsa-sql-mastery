# 🚀 Mobile Developer Interview Mastery in Dart & Flutter

A comprehensive, production-ready interview preparation workspace in **Dart**, containing complete practice suites for both **Data Structures & Algorithms** and **SQLite & Raw SQL Database Mastery**.

---

## ⚡ Quick 1-Step Zero-Config Setup (Windows, macOS, Linux)

No Docker or database installation required! Since SQLite is embedded directly into Dart via FFI, anyone can set up and run this entire repository on any PC in seconds:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/addynoven/dart-flutter-dsa-sql-mastery.git
   cd dart-flutter-dsa-sql-mastery
   ```

2. **Run the 1-Step Setup Script**:
   ```bash
   dart run setup.dart
   ```

That's it! All package dependencies across both suites are fetched automatically.

---

## 🗂️ Workspace Architecture

```text
/home/neon/programs/DSA/
├── README.md                            # Master Portal README
├── pubspec.yaml                         # Workspace Pubspec
│
├── neetcode_150_dsa/                    # TRACK 1: DATA STRUCTURES & ALGORITHMS
│   ├── README.md                        # DSA Cheat Sheet & Topic Breakdown
│   ├── todo_list.md                     # Interactive 150-Problem Progress Checklist
│   ├── pubspec.yaml                     # Package Dependencies (collection, lints)
│   └── lib/                             # 18 Topic Categories (150 Dart Problem Files)
│       ├── 01_arrays_and_hashing/
│       ├── 02_two_pointers/
│       ├── 03_sliding_window/
│       ├── 04_stack/
│       ├── 05_binary_search/
│       ├── 06_linked_list/
│       ├── 07_trees/
│       ├── 08_heap_priority_queue/
│       ├── 09_backtracking/
│       ├── 10_tries/
│       ├── 11_graphs/
│       ├── 12_advanced_graphs/
│       ├── 13_1d_dynamic_programming/
│       ├── 14_2d_dynamic_programming/
│       ├── 15_greedy/
│       ├── 16_intervals/
│       ├── 17_math_and_geometry/
│       └── 18_bit_manipulation/
│
└── dart_sql_mastery/                    # TRACK 2: SQLITE & RAW SQL MASTERY
    ├── README.md                        # SQL & sqflite Cheat Sheet
    ├── todo_sql.md                      # Interactive 126-Exercise Progress Checklist
    ├── pubspec.yaml                     # Package Dependencies (sqlite3, ffi)
    └── lib/
        ├── src/
        │   ├── utils/table_formatter.dart # Visual Console ASCII/Unicode Table Formatter
        │   └── raw_sqlite_helper.dart     # Raw SQLite Wrapper matching sqflite paradigms
        ├── part1_topics/                # 20 Topic Lessons (DDL, CRUD, Joins, Grouping, Transactions)
        └── part2_interview_scenarios/   # 106 LeetCode SQL Scenario Questions (#175 to #1050+)
```

---

## ⚡ Track 1: NeetCode 150 Data Structures & Algorithms
- 🎯 **150 Coding Problems** covering all core DSA categories.
- 📋 **[View DSA Checklist (todo_list.md)](neetcode_150_dsa/todo_list.md)**
- 💡 Each file includes full problem statements, constraints, test cases, and `class Solution` stubs.
- 🚀 **How to Run DSA Exercises**:
  ```bash
  cd neetcode_150_dsa
  dart run lib/01_arrays_and_hashing/01_contains_duplicate.dart
  ```

---

## 🗄️ Track 2: Dart & Flutter SQLite & Raw SQL Mastery
- 🎯 **126 Total SQL Exercises** (20 Topic Lessons + 106 LeetCode Scenario Questions).
- 📊 **Visual Terminal Tables**: Every query renders as a visual Unicode table in your Linux terminal.
- 📋 **[View SQL Checklist (todo_sql.md)](dart_sql_mastery/todo_sql.md)**
- 🚀 **How to Run SQL Exercises**:
  ```bash
  cd dart_sql_mastery
  dart run lib/part2_interview_scenarios/01_combine_two_tables.dart
  ```

---

## 🌿 Git Branching Strategy

- 🧊 **`template` Branch**: Frozen starter template containing clean problem stubs, full question descriptions, and pre-wired `main()` test runners.
- 🏆 **`main` Branch**: Master answer branch where your completed, working solutions are merged into.

### Starting a New Practice Session:
```bash
# 1. Switch to template
git checkout template

# 2. Create a new practice branch
git checkout -b practice/arrays-and-hashing

# 3. Solve problems and merge back into main when done!
```
