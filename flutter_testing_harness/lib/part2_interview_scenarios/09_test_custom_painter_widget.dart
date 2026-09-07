/*
Scenario 09: Canvas / CustomPainter Widget Testing
Problem: Test CustomPainter rendering without UI visual regression issues.
*/

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.blue;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 40, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

void main() {
  testWidgets('CirclePainter Widget renders CustomPaint canvas', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomPaint(
            key: const Key('circle_paint'),
            painter: CirclePainter(),
          ),
        ),
      ),
    );

    expect(find.byKey(const Key('circle_paint')), findsOneWidget);
  });
}
