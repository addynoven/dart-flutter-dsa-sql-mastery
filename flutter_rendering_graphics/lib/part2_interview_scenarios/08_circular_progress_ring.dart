/*
Scenario 08: Animated Gradient Circular Progress Ring
Problem: Draw an animated circular progress ring with sweep gradient shader.
*/

import 'dart:math';
import 'package:flutter/material.dart';

class ProgressRingPainter extends CustomPainter {
  final double progress;
  ProgressRingPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width, size.height) / 2 - 10;

    final bgPaint = Paint()
      ..color = Colors.grey.shade300
      ..style = PaintingStyle.stroke
      ..strokeWidth = 12;

    canvas.drawCircle(center, radius, bgPaint);

    final activePaint = Paint()
      ..color = Colors.indigo
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 12;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      2 * pi * progress,
      false,
      activePaint,
    );
  }

  @override
  bool shouldRepaint(covariant ProgressRingPainter oldDelegate) => oldDelegate.progress != progress;
}

void main() {
  runApp(const MaterialApp(home: Scenario08Screen()));
}

class Scenario08Screen extends StatefulWidget {
  const Scenario08Screen({super.key});

  @override
  State<Scenario08Screen> createState() => _Scenario08ScreenState();
}

class _Scenario08ScreenState extends State<Scenario08Screen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2))..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 08: Circular Progress Ring')),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return SizedBox(
              width: 180,
              height: 180,
              child: CustomPaint(
                painter: ProgressRingPainter(_controller.value),
                child: Center(
                  child: Text('${(_controller.value * 100).toInt()}%', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
