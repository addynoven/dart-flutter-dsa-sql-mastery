/*
Scenario 03: Smooth Line Chart with Touch Crosshair
Problem: Draw a smooth line chart with CustomPainter and Path quadraticBezierTo.
*/

import 'package:flutter/material.dart';

class LineChartPainter extends CustomPainter {
  final List<double> dataPoints;
  LineChartPainter(this.dataPoints);

  @override
  void paint(Canvas canvas, Size size) {
    if (dataPoints.isEmpty) return;

    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    final maxVal = dataPoints.reduce((a, b) => a > b ? a : b);
    final dx = size.width / (dataPoints.length - 1);

    final path = Path();
    for (int i = 0; i < dataPoints.length; i++) {
      final x = i * dx;
      final y = size.height - (dataPoints[i] / maxVal) * size.height;
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
      canvas.drawCircle(Offset(x, y), 5, Paint()..color = Colors.indigo);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant LineChartPainter oldDelegate) => true;
}

void main() {
  runApp(const MaterialApp(home: Scenario03Screen()));
}

class Scenario03Screen extends StatelessWidget {
  const Scenario03Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 03: Line Chart CustomPainter')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SizedBox(
            width: double.infinity,
            height: 200,
            child: CustomPaint(
              painter: LineChartPainter([10, 35, 25, 70, 45, 90, 60]),
            ),
          ),
        ),
      ),
    );
  }
}
