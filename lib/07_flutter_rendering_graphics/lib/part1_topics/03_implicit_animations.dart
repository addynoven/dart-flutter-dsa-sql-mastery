/*
Lesson 03: Implicit Animations (AnimatedContainer, AnimatedOpacity)
Concept: Implicit animations automatically animate property changes over a specified Duration.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Lesson03Screen()));
}

class Lesson03Screen extends StatefulWidget {
  const Lesson03Screen({super.key});

  @override
  State<Lesson03Screen> createState() => _Lesson03ScreenState();
}

class _Lesson03ScreenState extends State<Lesson03Screen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson 03: Implicit Animations')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              curve: Curves.fastOutSlowIn,
              width: _isExpanded ? 220 : 100,
              height: _isExpanded ? 220 : 100,
              decoration: BoxDecoration(
                color: _isExpanded ? Colors.purple : Colors.teal,
                borderRadius: BorderRadius.circular(_isExpanded ? 110 : 12),
              ),
              child: Icon(
                _isExpanded ? Icons.star : Icons.favorite,
                color: Colors.white,
                size: _isExpanded ? 80 : 40,
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              icon: const Icon(Icons.play_arrow),
              label: Text(_isExpanded ? 'Shrink' : 'Expand & Morph'),
              onPressed: () => setState(() => _isExpanded = !_isExpanded),
            )
          ],
        ),
      ),
    );
  }
}
