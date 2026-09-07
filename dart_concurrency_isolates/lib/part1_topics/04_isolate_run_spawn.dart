/*
Lesson 04: Offloading Heavy CPU Tasks with Isolate.run()
Concept: Isolate.run() executes a top-level or static function on a new background thread,
  preventing UI freeze and frame drops in Flutter apps.
*/

import 'dart:isolate';

// Heavy CPU-bound computation function (must be top-level or static)
int computeFibonacci(int n) {
  if (n <= 1) return n;
  return computeFibonacci(n - 1) + computeFibonacci(n - 2);
}

void main() async {
  print('=== Lesson 04: Isolate.run() Background Computation ===\n');

  const targetN = 40;
  final stopwatch = Stopwatch()..start();

  print('Calculating Fibonacci($targetN) in background Isolate...');

  // TODO: Execute computeFibonacci on background Isolate using Isolate.run()
  final result = await Isolate.run(() => computeFibonacci(targetN));

  stopwatch.stop();

  print('Result Fibonacci($targetN): $result');
  print('Execution Time on Background Isolate: ${stopwatch.elapsedMilliseconds}ms (UI Thread Stayed Responsive!)');
}
