/*
Lesson 02: CustomPainter & Canvas Graphics
Concept: CustomPainter exposes a Canvas for low-level pixel drawing with Paint, Path, drawCircle, and drawRect.
*/

import 'package:flutter/material.dart';

class BasicShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // 1. Draw Blue Circle
    final circlePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width * 0.3, size.height * 0.4), 40, circlePaint);

    // 2. Draw Stroked Red Rectangle
    final rectPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;
    canvas.drawRect(Rect.fromLTWH(size.width * 0.55, size.height * 0.25, 80, 80), rectPaint);

    // 3. Draw Green Smooth Curved Path
    final pathPaint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    final path = Path()
      ..moveTo(20, size.height * 0.75)
      ..quadraticBezierTo(size.width / 2, size.height * 0.5, size.width - 20, size.height * 0.75);

    canvas.drawPath(path, pathPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

void main() {
  runApp(const MaterialApp(home: Lesson02Screen()));
}

class Lesson02Screen extends StatelessWidget {
  const Lesson02Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson 02: CustomPainter & Canvas')),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.grey.shade200,
          child: CustomPaint(
            painter: BasicShapesPainter(),
          ),
        ),
      ),
    );
  }
}
