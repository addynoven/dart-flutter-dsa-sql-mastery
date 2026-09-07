/*
Scenario 02: Background Image Resizing & Processing
Problem: Performing CPU-heavy pixel array transformations on the main UI thread freezes the app interface.
Goal: Perform matrix pixel transformations on a background Isolate.
*/

import 'dart:isolate';

// Simulated raw RGB image pixel matrix
List<int> compressPixelMatrix(List<int> pixels) {
  final compressed = <int>[];
  for (int i = 0; i < pixels.length; i += 2) {
    // Heavy pixel averaging calculation
    int avg = (pixels[i] + (i + 1 < pixels.length ? pixels[i + 1] : pixels[i])) ~/ 2;
    compressed.add(avg);
  }
  return compressed;
}

void main() async {
  print('=== Scenario 02: Background Image Processing Isolate ===\n');

  // Generate 5,000,000 pixel values (Simulating 4K image)
  print('1. Generating 5,000,000 image pixel matrix...');
  final pixels = List.generate(5000000, (i) => (i * 17) % 256);

  print('2. Compressing Image Pixels in Background Isolate...');
  final stopwatch = Stopwatch()..start();

  final compressed = await Isolate.run(() => compressPixelMatrix(pixels));

  stopwatch.stop();

  print('✅ Compressed Image Pixels from ${pixels.length} -> ${compressed.length}');
  print('⏱️ Isolate Compression Time: ${stopwatch.elapsedMilliseconds} ms');
}
