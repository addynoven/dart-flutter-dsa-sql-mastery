/*
Scenario 04: Tinder-Style Swipeable Cards with Rotations
Problem: Build swipeable card gestures with angle rotation based on drag offset.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Scenario04Screen()));
}

class Scenario04Screen extends StatefulWidget {
  const Scenario04Screen({super.key});

  @override
  State<Scenario04Screen> createState() => _Scenario04ScreenState();
}

class _Scenario04ScreenState extends State<Scenario04Screen> {
  Offset _dragOffset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 04: Swipeable Cards')),
      body: Center(
        child: GestureDetector(
          onPanUpdate: (details) {
            setState(() {
              _dragOffset += details.delta;
            });
          },
          onPanEnd: (_) {
            setState(() {
              _dragOffset = Offset.zero; // Reset card position on release
            });
          },
          child: Transform.translate(
            offset: _dragOffset,
            child: Transform.rotate(
              angle: _dragOffset.dx / 300, // Rotate card relative to drag
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                child: Container(
                  width: 280,
                  height: 380,
                  color: Colors.deepPurple.shade300,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.swipe, size: 80, color: Colors.white),
                      SizedBox(height: 16),
                      Text('Drag Me Left / Right!', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
