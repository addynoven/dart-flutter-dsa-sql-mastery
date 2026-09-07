/*
Scenario 10: Animated Liquid Wave Background with Path
Problem: Create an animated fluid wave background using CustomClipper<Path>.
*/

import 'dart:math';
import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  final double progress;
  WaveClipper(this.progress);

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.7);

    final firstControlPoint = Offset(size.width / 4, size.height * 0.7 + sin(progress * 2 * pi) * 20);
    final firstEndPoint = Offset(size.width / 2, size.height * 0.7);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    final secondControlPoint = Offset(size.width * 3 / 4, size.height * 0.7 - sin(progress * 2 * pi) * 20);
    final secondEndPoint = Offset(size.width, size.height * 0.7);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant WaveClipper oldClipper) => true;
}

void main() {
  runApp(const MaterialApp(home: Scenario10Screen()));
}

class Scenario10Screen extends StatefulWidget {
  const Scenario10Screen({super.key});

  @override
  State<Scenario10Screen> createState() => _Scenario10ScreenState();
}

class _Scenario10ScreenState extends State<Scenario10Screen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2))..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 10: Wave ClipPath Animation')),
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return ClipPath(
            clipper: WaveClipper(_controller.value),
            child: Container(
              height: 300,
              color: Colors.blue.shade400,
              child: const Center(
                child: Text('Fluid Wave Animation', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
              ),
            ),
          );
        },
      ),
    );
  }
}
