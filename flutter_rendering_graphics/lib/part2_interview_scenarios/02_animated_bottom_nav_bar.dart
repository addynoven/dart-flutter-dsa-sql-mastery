/*
Scenario 02: Custom Animated Morphing Bottom Navigation Bar
Problem: Build a morphing animated indicator for tab switching in bottom navigation.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Scenario02Screen()));
}

class Scenario02Screen extends StatefulWidget {
  const Scenario02Screen({super.key});

  @override
  State<Scenario02Screen> createState() => _Scenario02ScreenState();
}

class _Scenario02ScreenState extends State<Scenario02Screen> {
  int _selectedIndex = 0;

  final items = [
    Icons.home,
    Icons.search,
    Icons.favorite,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 02: Animated Bottom Nav')),
      body: Center(
        child: Text('Active Tab Index: $_selectedIndex', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blue.shade900,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(items.length, (index) {
            final isSelected = _selectedIndex == index;
            return GestureDetector(
              onTap: () => setState(() => _selectedIndex = index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.blue.shade400 : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(items[index], color: Colors.white),
                    if (isSelected) ...[
                      const SizedBox(width: 8),
                      Text('Tab #${index + 1}', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ]
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
