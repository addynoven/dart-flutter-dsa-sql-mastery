# 🚀 Mobile Developer Interview Mastery in Dart & Flutter

A comprehensive, production-grade interview preparation workspace in **Dart & Flutter**, featuring a **Single Unified Dependency Architecture** and an interactive **Master App Launcher Dashboard (`lib/main.dart`)** covering **Flutter UI Essentials**, **Data Structures & Algorithms**, **SQLite & Raw SQL Database Mastery**, **Flutter State Management & Clean Architecture**, **Dart Concurrency & Isolates**, **Flutter Networking & Offline Sync**, **Flutter Testing & TDD**, and **Flutter Rendering Pipeline, CustomPainters & Animations**.

---

## ⚡ Quick 1-Step Zero-Config Setup (Windows, macOS, Linux)

No Docker or database installation required! Single dependency configuration across the entire repository:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/addynoven/dart-flutter-dsa-sql-mastery.git
   cd dart-flutter-dsa-sql-mastery
   ```

2. **Run the 1-Step Setup Script**:
   ```bash
   dart run setup.dart
   # OR: flutter pub get
   ```

3. **Launch the Master Interactive Dashboard App**:
   ```bash
   flutter run -d linux lib/main.dart
   ```

---

## 🗂️ Unified Single-App Architecture (8 Tracks under `lib/`)

```text
/home/neon/programs/DSA/
├── pubspec.yaml                           # ONE Master Pubspec with ALL dependencies
├── README.md                              # Master Workspace Portal
├── setup.dart                             # 1-Command Workspace Installer
├── analysis_options.yaml                  # Global Linter Rules
│
└── lib/                                   # Central lib/ Directory
    ├── main.dart                          # Master App Launcher Dashboard (Launches All Tracks)
    │
    ├── 00_flutter_ui_playground/          # TRACK 0: 11 Essential UI Apps (Easy -> Hard)
    ├── 01_neetcode_150_dsa/               # TRACK 1: 150 DSA Dart Problems
    ├── 02_dart_sql_mastery/               # TRACK 2: 126 SQLite Exercises & Visual Renderer
    ├── 03_flutter_architecture_mastery/   # TRACK 3: 16 State Management & Clean Arch Apps
    ├── 04_dart_concurrency_isolates/     # TRACK 4: 15 Concurrency & Isolate Exercises
    ├── 05_flutter_networking_sync/        # TRACK 5: 15 Dio Interceptor & Offline Sync Apps
    ├── 06_flutter_testing_harness/        # TRACK 6: 15 Unit, Widget & TDD Test Suites
    └── 07_flutter_rendering_graphics/     # TRACK 7: 15 CustomPainter & Canvas Graphics Apps
```

---

## 📱 Track 0: Flutter UI Playground & Essentials
- 🎯 **11 Essential Flutter UI Apps** ordered from Easy to Hard.
- 🎨 **Level 1 to Level 3**: Counter, Background Color, Random Colors, Pass Message, Random Quotes, Testimonials, Modal Dialogs, Filterable List, Image Carousel, Calculator, and Neumorphism UI.
- 📋 **[View Playground Checklist](lib/00_flutter_ui_playground/todo_playground.md)**

---

## ⚡ Track 1: NeetCode 150 Data Structures & Algorithms
- 🎯 **150 Coding Problems** covering all core DSA categories.
- 📋 **[View DSA Checklist](lib/01_neetcode_150_dsa/todo_list.md)**
- 🚀 **How to Run**:
  ```bash
  dart run lib/01_neetcode_150_dsa/lib/01_arrays_and_hashing/01_contains_duplicate.dart
  ```

---

## 🗄️ Track 2: Dart & Flutter SQLite & Raw SQL Mastery
- 🎯 **126 Total SQL Exercises** (20 Topic Lessons + 106 LeetCode Scenario Questions).
- 📊 **Visual Terminal Tables**: Every query renders as a visual Unicode table in your terminal.
- 📋 **[View SQL Checklist](lib/02_dart_sql_mastery/todo_sql.md)**
- 🚀 **How to Run**:
  ```bash
  dart run lib/02_dart_sql_mastery/lib/part2_interview_scenarios/01_combine_two_tables.dart
  ```

---

## 📱 Track 3: Flutter State Management & Clean Architecture
- 🎯 **16 Total Interactive Flutter Exercises** (6 Topic Lessons + 10 Real-World Interview Scenario Apps).
- 🎨 **Flutter UI Widgets**: Interactive Material UI widgets (`flutter_bloc`, `flutter_riverpod`, `provider`).
- 📋 **[View Architecture Checklist](lib/03_flutter_architecture_mastery/todo_arch.md)**

---

## ⚡ Track 4: Dart Concurrency, Event Loop & Isolates
- 🎯 **15 Concurrency Exercises** (5 Topic Lessons + 10 Real-World Multithreading Scenarios).
- ⚡ **Zero UI Jank**: Offload 50MB JSON parsing, image compression, and crypto hashing to background Isolates (`Isolate.run()`, `ReceivePort`/`SendPort`).
- 📋 **[View Concurrency Checklist](lib/04_dart_concurrency_isolates/todo_concurrency.md)**
- 🚀 **How to Run**:
  ```bash
  dart run lib/04_dart_concurrency_isolates/lib/part2_interview_scenarios/01_heavy_json_parsing_isolate.dart
  ```

---

## 🌐 Track 5: Flutter Networking, Interceptors & Offline Sync
- 🎯 **15 Networking & Sync Exercises** (5 Topic Lessons + 10 Real-World Interview Scenarios).
- 🔒 **401 JWT Refresh & Offline Sync**: Automated token refresh rotation, queued offline mutations, and paginated REST API feeds.
- 📋 **[View Networking Checklist](lib/05_flutter_networking_sync/todo_networking.md)**

---

## 🧪 Track 6: Flutter Testing, TDD & Mocktail
- 🎯 **15 Testing Exercises** (5 Topic Lessons + 10 Real-World Testing Scenarios).
- 🧪 **Unit & Widget Testing**: Test functions, mock repositories with `mocktail`, test BLoCs with `blocTest`, and test UI gestures with `WidgetTester`.
- 📋 **[View Testing Checklist](lib/06_flutter_testing_harness/todo_testing.md)**
- 🚀 **How to Run**:
  ```bash
  flutter test
  ```

---

## 🎨 Track 7: Flutter Rendering Pipeline, CustomPainters & Animations
- 🎯 **15 Graphics & Animation Exercises** (5 Topic Lessons + 10 Real-World Custom Graphics Scenarios).
- 🎨 **Canvas & CustomPainters**: Draw interactive donut charts, smooth line charts with crosshairs, particle explosions, signature pads, and 3D Matrix4 card flips.
- 📋 **[View Graphics Checklist](lib/07_flutter_rendering_graphics/todo_graphics.md)**

---

## 🌿 Git Branching Strategy

- 🧊 **`template` Branch**: Frozen starter template containing clean problem stubs, full question descriptions, and pre-wired test runners.
- 🏆 **`main` Branch**: Master answer branch where your completed, working solutions are merged into.

### Starting a New Practice Session:
```bash
# 1. Switch to template
git checkout template

# 2. Create a new practice branch
git checkout -b practice/shopping-cart-bloc

# 3. Solve problems and merge back into main when done!
```

---

## 🛠️ Maintainer & Template Management Guide

If you are a maintainer looking for instructions on how to update, sync, or push changes to the protected `template` branch, please read the **[Maintainer Guide (MAINTAINERS.md)](MAINTAINERS.md)**.
