/*
Scenario 05: Reusable Isolate Worker Pool Pattern
Problem: Spawning a new Isolate for every small task creates startup overhead.
Goal: Maintain a persistent Worker Isolate via SendPort/ReceivePort for re-usable task execution.
*/

import 'dart:async';
import 'dart:isolate';

class IsolateWorker {
  late Isolate _isolate;
  late SendPort _workerSendPort;
  final _responseController = StreamController<dynamic>.broadcast();

  Future<void> init() async {
    final initPort = ReceivePort();
    _isolate = await Isolate.spawn(_workerEntryPoint, initPort.sendPort);

    final events = initPort.asBroadcastStream();
    _workerSendPort = await events.first as SendPort;

    events.listen((message) {
      _responseController.add(message);
    });
  }

  Future<String> executeTask(String task) async {
    _workerSendPort.send(task);
    final response = await _responseController.stream.firstWhere((msg) => msg is String);
    return response as String;
  }

  void dispose() {
    _isolate.kill(priority: Isolate.immediate);
    _responseController.close();
  }

  static void _workerEntryPoint(SendPort mainPort) {
    final workerPort = ReceivePort();
    mainPort.send(workerPort.sendPort);

    workerPort.listen((message) {
      if (message is String) {
        final result = 'Task Result: ${message.toUpperCase()}';
        mainPort.send(result);
      }
    });
  }
}

void main() async {
  print('=== Scenario 05: Reusable Isolate Worker Pool ===\n');

  final worker = IsolateWorker();
  await worker.init();

  print('Worker Pool Initialized. Executing tasks:');
  final res1 = await worker.executeTask('task alpha');
  print('  1. $res1');

  final res2 = await worker.executeTask('task beta');
  print('  2. $res2');

  worker.dispose();
  print('\n✅ Worker Pool Shut Down Successfully!');
}
