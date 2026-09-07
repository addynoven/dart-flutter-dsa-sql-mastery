# 🎯 NeetCode 150 in Dart
### Mastering Data Structures & Algorithms for Flutter & Mobile Software Engineer Interviews

Welcome to the **NeetCode 150 Dart Repository**! This repo provides a structured approach to practicing all 150 NeetCode coding interview questions using **Dart**, tailored for Flutter and Mobile Application Developer technical interview rounds.

## 📌 Quick Links
- 📋 **[Track Your Progress on todo_list.md](todo_list.md)**
- 🌐 **[NeetCode Practice Roadmap](https://neetcode.io/practice)**
- ⚡ **[Dart Official Documentation](https://dart.dev/guides)**

---

## 📁 Repository Directory Structure

```text
neetcode-150-dart/
├── pubspec.yaml
├── README.md
├── todo_list.md
└── lib/
    ├── 01_arrays_and_hashing/
    │   ├── 01_contains_duplicate.dart
    │   ├── 02_valid_anagram.dart
    │   ├── 03_two_sum.dart
    │   └── ...
    ├── 02_two_pointers/
    ├── 03_sliding_window/
    ├── 04_stack/
    ├── 05_binary_search/
    ├── 06_linked_list/
    ├── 07_trees/
    ├── 08_heap_priority_queue/
    ├── 09_backtracking/
    ├── 10_tries/
    ├── 11_graphs/
    ├── 12_advanced_graphs/
    ├── 13_1d_dynamic_programming/
    ├── 14_2d_dynamic_programming/
    ├── 15_greedy/
    ├── 16_intervals/
    ├── 17_math_and_geometry/
    └── 18_bit_manipulation/
```

---

## 💡 Essential Dart Cheat Sheet for DSA

When interviewing for Flutter / Dart roles, interviewers expect clean, idiomatic Dart code and strong familiarity with Dart standard library collections:

```dart
// 1. Primitive Arrays & Dynamic Lists
List<int> nums = [1, 2, 3];
List<int> fixedList = List.filled(5, 0); // [0, 0, 0, 0, 0]
List<List<int>> dp = List.generate(m, (_) => List.filled(n, 0)); // 2D Matrix (m x n)

// 2. Queue & Deque (BFS, Sliding Window)
import 'dart:collection';
Queue<int> queue = Queue<int>();
queue.addLast(1); // Enqueue
int first = queue.removeFirst(); // Dequeue (O(1))

// 3. Priority Queue / Min & Max Heap (package:collection)
import 'package:collection/collection.dart';
PriorityQueue<int> minHeap = PriorityQueue<int>();
PriorityQueue<int> maxHeap = PriorityQueue<int>((a, b) => b.compareTo(a));
minHeap.add(5);
int minVal = minHeap.removeFirst();

// 4. Sets & Maps (O(1) Lookups)
Set<int> seen = {};
Map<int, int> freq = {};
freq[key] = (freq[key] ?? 0) + 1;

// 5. Division & Bitwise Operators
int div = 7 ~/ 2; // Truncating integer division -> 3
int xor = 5 ^ 3;
int bitAnd = 5 & 3;

// 6. Common Node Structures (Trees & Linked Lists)
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}
```

---

## 🗂️ NeetCode 150 Categories Overview

| # | Category | Total | Easy | Medium | Hard |
|---|---|---|---|---|---|
| 1 | **Arrays & Hashing** | 9 | 🟢 3 | 🟡 6 | 🔴 0 |
| 2 | **Two Pointers** | 5 | 🟢 1 | 🟡 3 | 🔴 1 |
| 3 | **Sliding Window** | 6 | 🟢 1 | 🟡 3 | 🔴 2 |
| 4 | **Stack** | 6 | 🟢 1 | 🟡 4 | 🔴 1 |
| 5 | **Binary Search** | 7 | 🟢 1 | 🟡 5 | 🔴 1 |
| 6 | **Linked List** | 11 | 🟢 3 | 🟡 6 | 🔴 2 |
| 7 | **Trees** | 15 | 🟢 6 | 🟡 7 | 🔴 2 |
| 8 | **Heap / Priority Queue** | 7 | 🟢 2 | 🟡 4 | 🔴 1 |
| 9 | **Backtracking** | 10 | 🟢 0 | 🟡 9 | 🔴 1 |
| 10 | **Tries** | 3 | 🟢 0 | 🟡 2 | 🔴 1 |
| 11 | **Graphs** | 13 | 🟢 0 | 🟡 12 | 🔴 1 |
| 12 | **Advanced Graphs** | 6 | 🟢 0 | 🟡 3 | 🔴 3 |
| 13 | **1-D Dynamic Programming** | 12 | 🟢 2 | 🟡 10 | 🔴 0 |
| 14 | **2-D Dynamic Programming** | 11 | 🟢 0 | 🟡 7 | 🔴 4 |
| 15 | **Greedy** | 8 | 🟢 0 | 🟡 8 | 🔴 0 |
| 16 | **Intervals** | 6 | 🟢 1 | 🟡 4 | 🔴 1 |
| 17 | **Math & Geometry** | 8 | 🟢 2 | 🟡 6 | 🔴 0 |
| 18 | **Bit Manipulation** | 7 | 🟢 5 | 🟡 2 | 🔴 0 |

---

**Overall Difficulty Distribution:** 🟢 Easy: **28** | 🟡 Medium: **101** | 🔴 Hard: **21** (Total: **150**)

## 🚀 Getting Started

### Prerequisites
Ensure you have Dart SDK or Flutter SDK installed:

```bash
dart --version
# or
flutter --version
```

---

## 🌿 Git Branching & Practice Workflow

This repository uses a structured two-branch strategy for interview preparation:

- 🧊 **`template` Branch**: Frozen template containing all 150 problem files with empty `Solution` stubs, complete descriptions, and pre-wired `main()` test runners.
- 🏆 **`main` Branch**: The master answer branch where your completed, working Dart solutions get merged into.

### Step-by-Step Practice Workflow:

1. **Start a new practice branch from `template`**:
   ```bash
   git checkout template
   git checkout -b practice/arrays-and-hashing
   ```

2. **Solve a problem**:
   - Open a `.dart` file under `lib/<topic>/<problem>.dart`.
   - Implement your algorithm inside `class Solution`.
   - Test your code locally:
     ```bash
     dart run lib/01_arrays_and_hashing/01_contains_duplicate.dart
     ```
   - Check off completed problems on [`todo_list.md`](todo_list.md).

3. **Merge your answers into `main`**:
   ```bash
   git add .
   git commit -m "Solve Contains Duplicate in Dart"
   git checkout main
   git merge practice/arrays-and-hashing
   git push origin main
   ```

---
Happy Coding & Good Luck with your Flutter Interview! 📱✨
