/*
Lesson 04: Explicit Animations (AnimationController, Tween, AnimatedBuilder)
Concept: Explicit animations give full fine-grained control over playback (forward, reverse, repeat, stop).
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Lesson04Screen()));
}

class Lesson04Screen extends StatefulWidget {
  const Lesson04Screen({super.key});

  @override
  State<Lesson04Screen> createState() => _Lesson04ScreenState();
}

class _Lesson04ScreenState extends State<Lesson04Screen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 2 * 3.14159).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson 04: Explicit Animations')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _rotationAnimation,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _rotationAnimation.value,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(color: Colors.indigo, borderRadius: BorderRadius.circular(20)),
                    child: const Icon(Icons.refresh, color: Colors.white, size: 60),
                  ),
                );
              },
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () => _controller.forward(), child: const Text('Forward')),
                const SizedBox(width: 12),
                ElevatedButton(onPressed: () => _controller.reverse(), child: const Text('Reverse')),
                const SizedBox(width: 12),
                ElevatedButton(onPressed: () => _controller.repeat(), child: const Text('Repeat')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
