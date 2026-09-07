/*
Scenario 01: Animated Custom Interactive Donut Chart
Problem: Build an interactive animated donut chart using CustomPainter and drawArc with sweep angles.
*/

import 'dart:math';
import 'package:flutter/material.dart';

class DonutSlice {
  final double value;
  final Color color;
  final String label;
  DonutSlice(this.value, this.color, this.label);
}

class DonutChartPainter extends CustomPainter {
  final List<DonutSlice> slices;
  final double progress;

  DonutChartPainter(this.slices, this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final total = slices.fold(0.0, (sum, s) => sum + s.value);
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width, size.height) / 2 - 10;
    final strokeWidth = 35.0;

    double startAngle = -pi / 2;

    for (final slice in slices) {
      final sweepAngle = (slice.value / total) * 2 * pi * progress;
      final paint = Paint()
        ..color = slice.color
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        false,
        paint,
      );

      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant DonutChartPainter oldDelegate) => oldDelegate.progress != progress;
}

void main() {
  runApp(const MaterialApp(home: Scenario01Screen()));
}

class Scenario01Screen extends StatefulWidget {
  const Scenario01Screen({super.key});

  @override
  State<Scenario01Screen> createState() => _Scenario01ScreenState();
}

class _Scenario01ScreenState extends State<Scenario01Screen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  final slices = [
    DonutSlice(40, Colors.blue, 'Flutter'),
    DonutSlice(30, Colors.teal, 'Dart'),
    DonutSlice(20, Colors.orange, 'SQLite'),
    DonutSlice(10, Colors.purple, 'BLoC'),
  ];

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
      appBar: AppBar(title: const Text('Scenario 01: Animated Donut Chart')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return SizedBox(
                  width: 250,
                  height: 250,
                  child: CustomPaint(
                    painter: DonutChartPainter(slices, _controller.value),
                    child: Center(
                      child: Text(
                        '${(_controller.value * 100).toInt()}%',
                        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => _controller.forward(from: 0),
              child: const Text('Re-Animate Donut Chart'),
            )
          ],
        ),
      ),
    );
  }
}
