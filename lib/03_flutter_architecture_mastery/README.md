# 📱 Flutter State Management & Clean Architecture Mastery

A hands-on, production-grade Flutter practice suite covering **BLoC / Cubit**, **Riverpod**, **Provider**, and **Clean Architecture** with interactive **Flutter UI widgets**.

---

## 🚀 Features

- 📱 **Flutter UI Integration**: Every lesson and scenario contains a complete, runnable Flutter App UI (`MaterialApp`, `Scaffold`, Buttons, Cards, ListViews, Badges) pre-configured to display state transitions visually.
- 🧱 **Part 1: Topic-Wise Foundational Lessons**: 6 modules covering Cubit, BLoC Event Streams, Riverpod Providers & AsyncNotifiers, Provider/ChangeNotifier, and Clean Architecture (Data → Domain → Presentation).
- 🧩 **Part 2: Real-World Scenario & Interview Challenges**: 10 real-world scenario questions (*Shopping Cart with BLoC*, *Auth Flow with Riverpod*, *Debounced Typeahead Search*, *Clean Arch News Feed*, *Multi-step Form Wizard*, etc.).

---

## 📌 Quick Links
- 📋 **[Track Your Architecture Progress on todo_arch.md](todo_arch.md)**
- ⚡ **[flutter_bloc Package Docs](https://pub.dev/packages/flutter_bloc)**
- ⚡ **[flutter_riverpod Package Docs](https://pub.dev/packages/flutter_riverpod)**

---

## 💡 State Management & Architecture Cheat Sheet

### 1. BLoC vs Riverpod vs Provider Comparison

| Pattern | Primary Component | State Update Trigger | Flutter UI Consumer | Best For |
|---|---|---|---|---|
| **Cubit** | `Cubit<State>` | `emit(newState)` | `BlocBuilder<Cubit, State>` | Simple to Medium state logic |
| **BLoC** | `Bloc<Event, State>` | `add(Event)` → `on<Event>` | `BlocBuilder`, `BlocListener` | Event-driven, complex state machines |
| **Riverpod** | `AsyncNotifier<State>` | `state = AsyncData(val)` | `ConsumerWidget` + `ref.watch()` | Reactive, compile-safe dependency injection |
| **Provider** | `ChangeNotifier` | `notifyListeners()` | `Consumer<Notifier>` | Simple legacy & global settings |

---

### 2. Clean Architecture Layer Separation
```text
┌─────────────────────────────────────────────────────────┐
│                    PRESENTATION LAYER                   │
│   - UI Widgets (StatelessWidget, ConsumerWidget)        │
│   - State Controllers (Bloc, Cubit, AsyncNotifier)      │
└────────────────────────────┬────────────────────────────┘
                             │ calls UseCase
┌────────────────────────────▼────────────────────────────┐
│                       DOMAIN LAYER                      │
│   - Entities (Pure Dart Business Models)                │
│   - UseCases / Interactors (Execute business logic)     │
│   - Repository Interfaces (Abstract contracts)          │
└────────────────────────────┬────────────────────────────┘
                             │ implements Repository Interface
┌────────────────────────────▼────────────────────────────┐
│                        DATA LAYER                       │
│   - Repository Implementations                          │
│   - Data Sources (Remote REST API / Local SQLite DB)    │
│   - Data Models (JSON / Serialization)                  │
└─────────────────────────────────────────────────────────┘
```

---

## 🚀 How to Run Exercises

1. Install dependencies:
   ```bash
   cd flutter_architecture_mastery
   flutter pub get
   ```

2. Run any topic lesson or scenario as a Flutter App or Widget runner:
   ```bash
   # Run BLoC Shopping Cart Scenario:
   flutter run lib/part2_interview_scenarios/01_shopping_cart_bloc.dart

   # Run Riverpod Auth Flow Scenario:
   flutter run lib/part2_interview_scenarios/02_auth_flow_riverpod.dart
   ```
