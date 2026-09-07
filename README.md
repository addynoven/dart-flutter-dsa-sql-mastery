# 🚀 Mobile Developer Interview Mastery in Dart & Flutter

A comprehensive, production-ready interview preparation workspace in **Dart & Flutter**, containing complete practice suites for **Data Structures & Algorithms**, **SQLite & Raw SQL Database Mastery**, **Flutter State Management & Clean Architecture**, **Dart Concurrency & Isolates**, **Flutter Networking & Offline Sync**, and **Flutter Testing & TDD**.

---

## ⚡ Quick 1-Step Zero-Config Setup (Windows, macOS, Linux)

No Docker or database installation required! Anyone can set up and run this entire workspace on any PC in seconds:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/addynoven/dart-flutter-dsa-sql-mastery.git
   cd dart-flutter-dsa-sql-mastery
   ```

2. **Run the 1-Step Setup Script**:
   ```bash
   dart run setup.dart
   ```

That's it! All package dependencies across all tracks are fetched automatically.

---

## 🗂️ Workspace Architecture

```text
/home/neon/programs/DSA/
├── README.md                              # Master Workspace Portal
├── setup.dart                             # 1-Command Setup Script
├── pubspec.yaml                           # Workspace Pubspec
│
├── neetcode_150_dsa/                      # TRACK 1: DATA STRUCTURES & ALGORITHMS (150 Problems)
│   ├── README.md                          # DSA Cheat Sheet & Topic Breakdown
│   ├── todo_list.md                       # Interactive 150-Problem Progress Checklist
│   └── lib/                               # 18 Topic Categories (150 Dart Problem Files)
│
├── dart_sql_mastery/                      # TRACK 2: SQLITE & RAW SQL MASTERY (126 Exercises)
│   ├── README.md                          # SQL & sqflite Cheat Sheet
│   ├── todo_sql.md                        # Interactive 126-Exercise Progress Checklist
│   └── lib/                               # 20 Topic Lessons + 106 LeetCode SQL Scenarios
│
├── flutter_architecture_mastery/          # TRACK 3: STATE MANAGEMENT & CLEAN ARCHITECTURE (16 Exercises)
│   ├── README.md                          # State Management & Architecture Cheat Sheet
│   ├── todo_arch.md                       # Interactive Progress Checklist
│   └── lib/                               # Cubit, BLoC, Riverpod, Provider & Clean Arch Scenarios
│
├── dart_concurrency_isolates/            # TRACK 4: DART EVENT LOOP & ISOLATES MULTITHREADING (15 Exercises)
│   ├── README.md                          # Concurrency & Isolates Cheat Sheet
│   ├── todo_concurrency.md                # Interactive Progress Checklist
│   └── lib/                               # Event Loop, Microtasks, Streams, & Background Isolates
│
├── flutter_networking_sync/               # TRACK 5: NETWORKING, INTERCEPTORS & OFFLINE SYNC (15 Exercises)
│   ├── README.md                          # Networking & Sync Cheat Sheet
│   ├── todo_networking.md                 # Interactive Progress Checklist
│   └── lib/                               # HTTP/Dio, Interceptors, 401 Refresh, & Offline Sync
│
└── flutter_testing_harness/               # TRACK 6: FLUTTER TESTING, TDD & MOCKTAIL (15 Exercises)
    ├── README.md                          # Testing & TDD Cheat Sheet
    ├── todo_testing.md                    # Interactive Progress Checklist
    └── lib/                               # Unit Tests, Mocktail Mocks, Widget Tests & Gestures
```

---

## ⚡ Track 1: NeetCode 150 Data Structures & Algorithms
- 🎯 **150 Coding Problems** covering all core DSA categories.
- 📋 **[View DSA Checklist (todo_list.md)](neetcode_150_dsa/todo_list.md)**
- 🚀 **How to Run**:
  ```bash
  cd neetcode_150_dsa
  dart run lib/01_arrays_and_hashing/01_contains_duplicate.dart
  ```

---

## 🗄️ Track 2: Dart & Flutter SQLite & Raw SQL Mastery
- 🎯 **126 Total SQL Exercises** (20 Topic Lessons + 106 LeetCode Scenario Questions).
- 📊 **Visual Terminal Tables**: Every query renders as a visual Unicode table in your Linux terminal.
- 📋 **[View SQL Checklist (todo_sql.md)](dart_sql_mastery/todo_sql.md)**
- 🚀 **How to Run**:
  ```bash
  cd dart_sql_mastery
  dart run lib/part2_interview_scenarios/01_combine_two_tables.dart
  ```

---

## 📱 Track 3: Flutter State Management & Clean Architecture
- 🎯 **16 Total Interactive Flutter Exercises** (6 Topic Lessons + 10 Real-World Interview Scenario Apps).
- 🎨 **Flutter UI Widgets**: Interactive Material UI widgets (`flutter_bloc`, `flutter_riverpod`, `provider`).
- 📋 **[View Architecture Checklist (todo_arch.md)](flutter_architecture_mastery/todo_arch.md)**
- 🚀 **How to Run**:
  ```bash
  cd flutter_architecture_mastery
  flutter run lib/part2_interview_scenarios/01_shopping_cart_bloc.dart
  ```

---

## ⚡ Track 4: Dart Concurrency, Event Loop & Isolates
- 🎯 **15 Concurrency Exercises** (5 Topic Lessons + 10 Real-World Multithreading Scenarios).
- ⚡ **Zero UI Jank**: Offload 50MB JSON parsing, image compression, and crypto hashing to background Isolates (`Isolate.run()`, `ReceivePort`/`SendPort`).
- 📋 **[View Concurrency Checklist (todo_concurrency.md)](dart_concurrency_isolates/todo_concurrency.md)**
- 🚀 **How to Run**:
  ```bash
  cd dart_concurrency_isolates
  dart run lib/part2_interview_scenarios/01_heavy_json_parsing_isolate.dart
  ```

---

## 🌐 Track 5: Flutter Networking, Interceptors & Offline Sync
- 🎯 **15 Networking & Sync Exercises** (5 Topic Lessons + 10 Real-World Interview Scenarios).
- 🔒 **401 JWT Refresh & Offline Sync**: Automated token refresh rotation, queued offline mutations, and paginated REST API feeds.
- 📋 **[View Networking Checklist (todo_networking.md)](flutter_networking_sync/todo_networking.md)**
- 🚀 **How to Run**:
  ```bash
  cd flutter_networking_sync
  flutter run lib/part2_interview_scenarios/01_jwt_auth_interceptor_flow.dart
  ```

---

## 🧪 Track 6: Flutter Testing, TDD & Mocktail
- 🎯 **15 Testing Exercises** (5 Topic Lessons + 10 Real-World Testing Scenarios).
- 🧪 **Unit & Widget Testing**: Test functions, mock repositories with `mocktail`, test BLoCs with `blocTest`, and test UI gestures with `WidgetTester`.
- 📋 **[View Testing Checklist (todo_testing.md)](flutter_testing_harness/todo_testing.md)**
- 🚀 **How to Run**:
  ```bash
  cd flutter_testing_harness
  flutter test
  ```

---

## 🌿 Git Branching Strategy

- 🧊 **`template` Branch**: Frozen starter template containing clean problem stubs, full question descriptions, and pre-wired test runners.
- 🏆 **`main` Branch**: Master answer branch where your completed, working solutions are merged into.

### Starting a New Practice Session:
```bash
# 1. Switch to template
git checkout template

# 2. Create a new practice branch
git checkout -b practice/shopping-cart-bloc-test

# 3. Solve problems and merge back into main when done!
```

---

## 🛠️ Maintainer & Template Management Guide

If you are a maintainer looking for instructions on how to update, sync, or push changes to the protected `template` branch, please read the **[Maintainer Guide (MAINTAINERS.md)](MAINTAINERS.md)**.
