/*
Lesson 05: Bi-Directional Isolate Communication (ReceivePort & SendPort)
Concept: Long-running isolates communicate with the main isolate using ReceivePort and SendPort message channels.
*/

import 'dart:isolate';

// Background Isolate entry point
void workerIsolate(SendPort mainSendPort) {
  final workerReceivePort = ReceivePort();

  // Send worker's SendPort back to main isolate
  mainSendPort.send(workerReceivePort.sendPort);

  // Listen to incoming messages from main isolate
  workerReceivePort.listen((message) {
    if (message is String) {
      final response = 'Processed by Worker Isolate: ${message.toUpperCase()}';
      mainSendPort.send(response);
    }
  });
}

void main() async {
  print('=== Lesson 05: Bi-Directional Isolate Ports ===\n');

  final mainReceivePort = ReceivePort();

  // Spawn background isolate
  await Isolate.spawn(workerIsolate, mainReceivePort.sendPort);

  SendPort? workerSendPort;

  await for (final message in mainReceivePort) {
    if (message is SendPort) {
      workerSendPort = message;
      print('Connected to Worker Isolate via SendPort!');
      workerSendPort.send('hello from main isolate');
      workerSendPort.send('flutter concurrency is fast');
    } else if (message is String) {
      print('Main Isolate Received: $message');
      mainReceivePort.close(); // Close port after receiving responses
    }
  }
}
