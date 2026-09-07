/*
Scenario 09: 3D Card Flip Animation using Matrix4
Problem: Perform a 3D Y-axis rotation matrix transformation to flip a card showing front and back faces.
*/

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Scenario09Screen()));
}

class Scenario09Screen extends StatefulWidget {
  const Scenario09Screen({super.key});

  @override
  State<Scenario09Screen> createState() => _Scenario09ScreenState();
}

class _Scenario09ScreenState extends State<Scenario09Screen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _showFront = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 600));
  }

  void _flipCard() {
    if (_showFront) {
      _controller.forward();
    } else {
      _controller.reverse();
    }

    setState(() {
      _showFront = !_showFront;
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
      appBar: AppBar(title: const Text('Scenario 09: 3D Card Flip')),
      body: Center(
        child: GestureDetector(
          onTap: _flipCard,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              final angle = _controller.value * pi;
              final transform = Matrix4.identity()
                ..setEntry(3, 2, 0.001) // Perspective
                ..rotateY(angle);

              return Transform(
                transform: transform,
                alignment: Alignment.center,
                child: Container(
                  width: 220,
                  height: 320,
                  decoration: BoxDecoration(
                    color: angle < pi / 2 ? Colors.indigo : Colors.deepOrange,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      angle < pi / 2 ? 'Front Side' : 'Back Side',
                      style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
