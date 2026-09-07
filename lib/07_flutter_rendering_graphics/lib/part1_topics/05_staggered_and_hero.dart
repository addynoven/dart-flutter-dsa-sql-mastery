/*
Lesson 05: Hero Transitions & Staggered Animations
Concept: Hero transitions animate shared widgets across screens, while Interval curves stagger animation sequences.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Lesson05Screen()));
}

class Lesson05Screen extends StatelessWidget {
  const Lesson05Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson 05: Hero & Staggered Animations')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const HeroDetailPage()),
            );
          },
          child: Hero(
            tag: 'hero_profile_avatar',
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.amber,
              child: const Icon(Icons.person, size: 50, color: Colors.black87),
            ),
          ),
        ),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  const HeroDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero Transition Detail')),
      body: Column(
        children: [
          Hero(
            tag: 'hero_profile_avatar',
            child: Container(
              height: 250,
              color: Colors.amber,
              child: const Center(child: Icon(Icons.person, size: 120, color: Colors.black87)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text('Smooth Hero animation transition executed across route screens!'),
          )
        ],
      ),
    );
  }
}
