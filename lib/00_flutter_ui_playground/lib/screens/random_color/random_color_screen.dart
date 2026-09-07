import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorScreen extends StatefulWidget {
  const RandomColorScreen({super.key});

  @override
  State<RandomColorScreen> createState() => _RandomColorScreenState();
}

class _RandomColorScreenState extends State<RandomColorScreen> {
  Color _color = Colors.white;

  void _randomizeColor() {
    setState(() {
      _color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withAlpha(255);
    });
  }

  @override
  Widget build(BuildContext context) {
    final hexCode =
        '#${_color.toARGB32().toRadixString(16).padLeft(8, '0').substring(2).toUpperCase()}';
    final textColor = _color.computeLuminance() > 0.5
        ? Colors.black
        : Colors.white;
    return Scaffold(
      appBar: AppBar(title: const Text('Random Color Generator')),
      backgroundColor: _color,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              hexCode,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _randomizeColor,
              child: const Text('Change Color'),
            ),
          ],
        ),
      ),
    );
  }
}
