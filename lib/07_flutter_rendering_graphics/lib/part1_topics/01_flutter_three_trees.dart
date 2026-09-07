/*
Lesson 01: Flutter 3-Tree Architecture (Widget, Element, RenderObject)
Concept: Flutter separates UI into 3 Trees:
  1. Widget Tree: Immutable UI configuration.
  2. Element Tree: Manages element lifecycle & state diffing.
  3. RenderObject Tree: Calculates layout constraints, paints pixels, & handles hit-testing.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Lesson01Screen()));
}

class Lesson01Screen extends StatelessWidget {
  const Lesson01Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson 01: 3-Tree Architecture')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Card(
              color: Colors.blueAccent,
              child: ListTile(
                leading: Icon(Icons.widgets, color: Colors.white),
                title: Text('1. Widget Tree', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                subtitle: Text('Immutable UI configuration blueprint. Inexpensive to rebuild.', style: TextStyle(color: Colors.white70)),
              ),
            ),
            const SizedBox(height: 12),
            const Card(
              color: Colors.orangeAccent,
              child: ListTile(
                leading: Icon(Icons.account_tree, color: Colors.white),
                title: Text('2. Element Tree', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                subtitle: Text('Persistent lifecycle bridge. Compares Widget diffs & updates RenderObjects.', style: TextStyle(color: Colors.white70)),
              ),
            ),
            const SizedBox(height: 12),
            const Card(
              color: Colors.green,
              child: ListTile(
                leading: Icon(Icons.palette, color: Colors.white),
                title: Text('3. RenderObject Tree', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                subtitle: Text('Calculates BoxConstraints, performs layout, and paints pixels on Skia/Impeller Canvas.', style: TextStyle(color: Colors.white70)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
