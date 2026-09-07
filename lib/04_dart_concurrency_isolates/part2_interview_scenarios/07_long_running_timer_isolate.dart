/*
Scenario 07: Persistent Background Timer Isolate
Problem: Main thread timers get paused when operating system puts Flutter UI in background.
Goal: Run a high-precision timer in an independent Isolate.
*/

import 'dart:isolate';

void timerIsolate(SendPort sendPort) {
  int seconds = 0;
  // Independent Isolate timer
  Stream.periodic(const Duration(milliseconds: 500), (i) => ++seconds).listen((sec) {
    sendPort.send(sec);
  });
}

void main() async {
  print('=== Scenario 07: Persistent Background Timer Isolate ===\n');

  final receivePort = ReceivePort();
  final isolate = await Isolate.spawn(timerIsolate, receivePort.sendPort);

  print('Background Timer Isolate Started:');

  int count = 0;
  await for (final ticks in receivePort) {
    print('  ⏱️ Background Timer Tick: $ticks');
    count++;
    if (count >= 5) {
      break;
    }
  }

  receivePort.close();
  isolate.kill(priority: Isolate.immediate);
  print('\n✅ Timer Isolate Stopped.');
}
