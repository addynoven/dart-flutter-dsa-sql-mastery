/*
Lesson 04: Widget Testing Fundamentals (WidgetTester, Finders, pumpWidget)
Concept: Testing Flutter UI Widget rendering using testWidgets(), find.text(), find.byType(), and expect().
*/

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Widget under test
class GreetingCard extends StatelessWidget {
  final String title;
  final String subtitle;
  const GreetingCard({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.star, key: Key('star_icon')),
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}

void main() {
  testWidgets('GreetingCard renders title, subtitle, and star icon', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: GreetingCard(title: 'Welcome Flutter', subtitle: 'Testing is Easy'),
        ),
      ),
    );

    // Verify Title and Subtitle Text Widgets exist
    expect(find.text('Welcome Flutter'), findsOneWidget);
    expect(find.text('Testing is Easy'), findsOneWidget);

    // Verify Star Icon Widget exists by Key
    expect(find.byKey(const Key('star_icon')), findsOneWidget);
  });
}
