/*
Scenario 10: End-to-End User Onboarding Flow Integration Test
Problem: Simulate full user onboarding flow (Enter Name -> Select Interests -> Complete Onboarding).
*/

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class OnboardingApp extends StatefulWidget {
  const OnboardingApp({super.key});

  @override
  State<OnboardingApp> createState() => _OnboardingAppState();
}

class _OnboardingAppState extends State<OnboardingApp> {
  bool _isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: _isCompleted
              ? const Text('Welcome to Your Dashboard!')
              : ElevatedButton(
                  key: const Key('start_btn'),
                  onPressed: () => setState(() => _isCompleted = true),
                  child: const Text('Complete Onboarding'),
                ),
        ),
      ),
    );
  }
}

void main() {
  testWidgets('End-to-End Onboarding Flow transitions from Start to Dashboard', (WidgetTester tester) async {
    await tester.pumpWidget(const OnboardingApp());

    expect(find.text('Complete Onboarding'), findsOneWidget);

    await tester.tap(find.byKey(const Key('start_btn')));
    await tester.pumpAndSettle();

    expect(find.text('Welcome to Your Dashboard!'), findsOneWidget);
  });
}
