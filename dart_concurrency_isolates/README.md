# ⚡ Dart Concurrency, Event Loop & Isolates Mastery

A hands-on practice suite covering **Dart Event Loop**, **Microtask Queue**, **Futures**, **Streams**, and **Background Multithreading with Isolates**.

---

## 🚀 Features

- ⚡ **Zero UI Jank**: Learn how to offload heavy computations, JSON parsing, crypto hashing, and database processing to background isolates.
- 🔄 **Dart Event Loop Architecture**: Master execution order between synchronous code, `Future.microtask()`, and `Future()`.
- 🗂️ **Part 1: Topic-Wise Foundational Lessons**: 5 modules covering Event Queue vs Microtasks, Async/Await, Streams/StreamTransformers, `Isolate.run()`, and Bi-directional Ports (`ReceivePort`/`SendPort`).
- 🧩 **Part 2: Real-World Scenario & Interview Challenges**: 10 real-world concurrency scenarios (*50MB JSON Parsing*, *Background Image Compression*, *Crypto Hashing*, *Isolate Worker Pool*, *Chunked File Download Stream*, etc.) with execution time benchmarks.

---

## 📌 Quick Links
- 📋 **[Track Your Concurrency Progress on todo_concurrency.md](todo_concurrency.md)**
- ⚡ **[Dart Official Concurrency & Isolates Docs](https://dart.dev/language/concurrency)**

---

## 💡 Dart Concurrency & Event Loop Cheat Sheet

### 1. Dart Event Loop Execution Order
```text
HIGHEST PRIORITY ──> 1. Synchronous Code (Current Execution Stack)
                     2. Microtask Queue (Future.microtask)
LOWEST PRIORITY  ──> 3. Event Queue (Future(), Timer(), I/O, User Gestures)
```

---

### 2. When to Use Futures vs Streams vs Isolates

| Concept | Returns | Mechanism | Best Used For |
|---|---|---|---|
| **Future** | Single value asynchronously | Asynchronous Event Loop | Network requests, File read/write |
| **Stream** | Sequence of values over time | Event Stream Controller | Live WebSocket messages, Auth status, Location updates |
| **Isolate.run()** | Computed result | Background CPU Thread | Heavy JSON parsing, Image processing, Encryption |
| **ReceivePort / SendPort** | Bi-directional Messages | Inter-Isolate Port Channels | Persistent Background Worker Pool |

---

## 🚀 How to Run Exercises

1. Install dependencies:
   ```bash
   cd dart_concurrency_isolates
   dart pub get
   ```

2. Run any topic lesson or scenario directly in terminal:
   ```bash
   # Run Event Loop Lesson:
   dart run lib/part1_topics/01_event_loop_and_microtasks.dart

   # Run 50MB JSON Parsing Isolate Scenario:
   dart run lib/part2_interview_scenarios/01_heavy_json_parsing_isolate.dart
   ```
