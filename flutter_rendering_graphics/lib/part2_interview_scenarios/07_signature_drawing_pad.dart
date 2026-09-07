/*
Scenario 07: Finger Drawing Pad with Path Smoothing
Problem: Allow users to draw smooth signatures on Canvas using Gesture touch points.
*/

import 'package:flutter/material.dart';

class SignaturePainter extends CustomPainter {
  final List<Offset?> points;
  SignaturePainter(this.points);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 4.0;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i]!, points[i + 1]!, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant SignaturePainter oldDelegate) => true;
}

void main() {
  runApp(const MaterialApp(home: Scenario07Screen()));
}

class Scenario07Screen extends StatefulWidget {
  const Scenario07Screen({super.key});

  @override
  State<Scenario07Screen> createState() => _Scenario07ScreenState();
}

class _Scenario07ScreenState extends State<Scenario07Screen> {
  final List<Offset?> _points = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scenario 07: Signature Pad'),
        actions: [
          IconButton(icon: const Icon(Icons.clear), onPressed: () => setState(() => _points.clear())),
        ],
      ),
      body: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            _points.add(details.localPosition);
          });
        },
        onPanEnd: (_) => _points.add(null),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber.shade50,
          child: CustomPaint(
            painter: SignaturePainter(_points),
          ),
        ),
      ),
    );
  }
}
