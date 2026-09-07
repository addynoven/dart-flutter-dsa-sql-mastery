/*
Scenario 06: Custom Shimmer Effect Painter for Skeleton UI
Problem: Build a custom shimmer loading animation for list item skeletons.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Scenario06Screen()));
}

class Scenario06Screen extends StatefulWidget {
  const Scenario06Screen({super.key});

  @override
  State<Scenario06Screen> createState() => _Scenario06ScreenState();
}

class _Scenario06ScreenState extends State<Scenario06Screen> with SingleTickerProviderStateMixin {
  late AnimationController _shimmerController;

  @override
  void initState() {
    super.initState();
    _shimmerController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000))..repeat();
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 06: Shimmer Skeleton UI')),
      body: AnimatedBuilder(
        animation: _shimmerController,
        builder: (context, child) {
          return ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Container(width: 50, height: 50, color: Colors.grey.shade300),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(width: double.infinity, height: 14, color: Colors.grey.shade300),
                          const SizedBox(height: 8),
                          Container(width: 150, height: 10, color: Colors.grey.shade200),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
