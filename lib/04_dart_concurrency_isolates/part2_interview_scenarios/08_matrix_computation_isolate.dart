/*
Scenario 08: Parallel Matrix Multiplication in Isolate
Problem: Multiplying 500x500 matrices on main thread freezes the app for several seconds.
Goal: Execute matrix multiplication in background Isolate.
*/

import 'dart:isolate';

List<List<int>> multiplyMatrices(List<List<int>> a, List<List<int>> b) {
  int n = a.length;
  final result = List.generate(n, (_) => List.filled(n, 0));
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      for (int k = 0; k < n; k++) {
        result[i][j] += a[i][k] * b[k][j];
      }
    }
  }
  return result;
}

void main() async {
  print('=== Scenario 08: Parallel Matrix Multiplication ===\n');

  const size = 300;
  print('1. Generating two $size x $size matrices...');
  final matrixA = List.generate(size, (i) => List.generate(size, (j) => (i + j) % 10));
  final matrixB = List.generate(size, (i) => List.generate(size, (j) => (i * j) % 10));

  print('2. Multiplying matrices in background Isolate...');
  final stopwatch = Stopwatch()..start();

  final result = await Isolate.run(() => multiplyMatrices(matrixA, matrixB));

  stopwatch.stop();

  print('✅ Matrix Multiplication Complete! Result [0][0]: ${result[0][0]}');
  print('⏱️ Isolate Computation Time: ${stopwatch.elapsedMilliseconds} ms');
}
