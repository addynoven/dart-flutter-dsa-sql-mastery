/*
Scenario 05: Custom Particle Explosion Effects on Canvas
Problem: Render animated particles moving outwards from a central point.
*/

import 'dart:math';
import 'package:flutter/material.dart';

class Particle {
  double x, y, dx, dy, radius;
  Color color;
  Particle(this.x, this.y, this.dx, this.dy, this.radius, this.color);
}

class ParticlePainter extends CustomPainter {
  final List<Particle> particles;
  ParticlePainter(this.particles);

  @override
  void paint(Canvas canvas, Size size) {
    for (final p in particles) {
      final paint = Paint()..color = p.color;
      canvas.drawCircle(Offset(p.x, p.y), p.radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant ParticlePainter oldDelegate) => true;
}

void main() {
  runApp(const MaterialApp(home: Scenario05Screen()));
}

class Scenario05Screen extends StatefulWidget {
  const Scenario05Screen({super.key});

  @override
  State<Scenario05Screen> createState() => _Scenario05ScreenState();
}

class _Scenario05ScreenState extends State<Scenario05Screen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final List<Particle> _particles = [];
  final _random = Random();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 1))..addListener(_updateParticles);
  }

  void _explode() {
    _particles.clear();
    for (int i = 0; i < 40; i++) {
      final angle = _random.nextDouble() * 2 * pi;
      final speed = _random.nextDouble() * 4 + 2;
      _particles.add(Particle(
        150, 150,
        cos(angle) * speed,
        sin(angle) * speed,
        _random.nextDouble() * 6 + 3,
        Colors.primaries[_random.nextInt(Colors.primaries.length)],
      ));
    }
    _controller.forward(from: 0);
  }

  void _updateParticles() {
    setState(() {
      for (final p in _particles) {
        p.x += p.dx;
        p.y += p.dy;
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 05: Particle Explosion')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: CustomPaint(
                painter: ParticlePainter(_particles),
              ),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.bolt),
              label: const Text('Trigger Explosion'),
              onPressed: _explode,
            )
          ],
        ),
      ),
    );
  }
}
