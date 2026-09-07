/*
Lesson 01: Dart Event Loop & Microtask Queue
Concept: Dart is single-threaded. Execution order follows:
  1. Synchronous code (main call stack)
  2. Microtask Queue (Future.microtask)
  3. Event Queue (Future(), Timer(), I/O events)
*/

import 'dart:async';

void main() {
  print('=== Lesson 01: Event Loop & Microtasks ===\n');

  print('1. Sync Start');

  Future(() {
    print('4. Event Queue Callback #1 (Future)');
  });

  Future.microtask(() {
    print('3. Microtask Queue Callback #1');
  });

  Future.microtask(() {
    print('3b. Microtask Queue Callback #2');
  });

  Future(() {
    print('4b. Event Queue Callback #2');
  });

  print('2. Sync End\n');

  // TODO: Predict and verify output order in console!
}
