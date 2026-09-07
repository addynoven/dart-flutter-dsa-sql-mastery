import 'dart:math';

import 'package:flutter/material.dart';

class BackgroundColorScreen extends StatefulWidget {
  const BackgroundColorScreen({super.key});

  @override
  State<BackgroundColorScreen> createState() => _BackgroundColorScreenState();
}

class _BackgroundColorScreenState extends State<BackgroundColorScreen> {
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = Color(
        (Random().nextDouble() * 0xFFFFFF).toInt(),
      ).withAlpha(255);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Background Color Switcher')),
      backgroundColor: _backgroundColor,
      body: Center(
        child: ElevatedButton(
          onPressed: _changeBackgroundColor,
          child: const Text('Change Background Color'),
        ),
      ),
    );
  }
}
