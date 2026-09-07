/*
Scenario 04: Chunked File Download & Progress Stream
Problem: Download and process large file chunks in real-time, emitting progress events to UI.
Goal: Stream progress percentages as file chunks arrive.
*/

import 'dart:async';

Stream<int> simulateChunkedDownload(int totalChunks) async* {
  for (int i = 1; i <= totalChunks; i++) {
    await Future.delayed(const Duration(milliseconds: 100)); // Simulate chunk download
    int progressPercentage = ((i / totalChunks) * 100).toInt();
    yield progressPercentage;
  }
}

void main() async {
  print('=== Scenario 04: File Download Progress Stream ===\n');

  const totalChunks = 10;
  print('Starting chunked download of 10 file chunks...');

  final downloadStream = simulateChunkedDownload(totalChunks);

  await for (final progress in downloadStream) {
    final progressBar = '█' * (progress ~/ 10) + '░' * (10 - (progress ~/ 10));
    print('Download Progress: [$progressBar] $progress%');
  }

  print('\n✅ File Download Completed Successfully!');
}
