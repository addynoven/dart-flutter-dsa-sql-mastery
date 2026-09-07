/*
Lesson 03: Streams, StreamControllers & StreamTransformers
Concept: Streams emit a sequence of values over time. Single-subscription vs Broadcast streams.
*/

import 'dart:async';

void main() async {
  print('=== Lesson 03: Streams & StreamTransformers ===\n');

  final controller = StreamController<int>.broadcast();

  // Stream subscriber
  final subscription = controller.stream
      .map((val) => val * 10) // Multiply by 10
      .where((val) => val >= 20) // Filter values >= 20
      .listen(
        (val) => print('Received Stream Emission: $val'),
        onDone: () => print('Stream Completed!'),
      );

  // Emit values into stream
  controller.add(1); // 10 (filtered out)
  controller.add(2); // 20 (emitted)
  controller.add(3); // 30 (emitted)
  controller.add(4); // 40 (emitted)

  await Future.delayed(const Duration(milliseconds: 200));
  await controller.close();
  await subscription.cancel();
}
