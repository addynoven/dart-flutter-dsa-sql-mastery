/*
Lesson 05: User Gestures & Frame Pumping (tester.tap, enterText, pumpAndSettle)
Concept: Simulating user interactions (taps, text entry) and settling animation frames.
*/

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Widget under test
class InteractiveCounterApp extends StatefulWidget {
  const InteractiveCounterApp({super.key});

  @override
  State<InteractiveCounterApp> createState() => _InteractiveCounterAppState();
}

class _InteractiveCounterAppState extends State<InteractiveCounterApp> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Interactive Counter')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Count: $_count', key: const Key('count_text')),
              const SizedBox(height: 20),
              ElevatedButton(
                key: const Key('increment_btn'),
                onPressed: () => setState(() => _count++),
                child: const Text('Increment'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  testWidgets('Tapping increment button increases count', (WidgetTester tester) async {
    await tester.pumpWidget(const InteractiveCounterApp());

    // Verify initial count is 0
    expect(find.text('Count: 0'), findsOneWidget);

    // Tap the increment button
    await tester.tap(find.byKey(const Key('increment_btn')));
    await tester.pumpAndSettle(); // Re-render frames after state update

    // Verify count updated to 1
    expect(find.text('Count: 1'), findsOneWidget);
  });
}
