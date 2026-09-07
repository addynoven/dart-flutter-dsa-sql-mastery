/*
Lesson 02: Futures, async/await & Exception Handling
Concept: Futures represent a single value or error delivered asynchronously.
  Future.wait() runs multiple futures concurrently and waits for all to complete.
*/

import 'dart:async';

Future<String> fetchUserData() async {
  await Future.delayed(const Duration(milliseconds: 500));
  return 'User: Alice';
}

Future<String> fetchUserOrders() async {
  await Future.delayed(const Duration(milliseconds: 800));
  return 'Orders: [Item #101, Item #102]';
}

Future<void> main() async {
  print('=== Lesson 02: Futures & Concurrent Future.wait() ===\n');

  final stopwatch = Stopwatch()..start();

  try {
    // TODO: Execute fetchUserData() and fetchUserOrders() concurrently using Future.wait()
    final results = await Future.wait([
      fetchUserData(),
      fetchUserOrders(),
    ]);

    stopwatch.stop();

    print('Fetched User Data: ${results[0]}');
    print('Fetched Orders: ${results[1]}');
    print('Total Execution Time: ${stopwatch.elapsedMilliseconds}ms (Concurrent Future.wait)');
  } catch (e) {
    print('Error: $e');
  }
}
