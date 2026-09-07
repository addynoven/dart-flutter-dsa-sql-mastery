/*
Lesson 04: Type-Safe JSON Serialization & Models
Concept: Converting dynamic JSON maps from API responses into immutable, strongly-typed Dart objects.
*/

import 'package:flutter/material.dart';

class UserProfile {
  final int id;
  final String name;
  final String email;
  final String role;

  UserProfile({required this.id, required this.name, required this.email, required this.role});

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? 'Unknown',
      email: json['email'] as String? ?? '',
      role: json['role'] as String? ?? 'User',
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'email': email,
    'role': role,
  };
}

void main() {
  runApp(const MaterialApp(home: Lesson04Screen()));
}

class Lesson04Screen extends StatefulWidget {
  const Lesson04Screen({super.key});

  @override
  State<Lesson04Screen> createState() => _Lesson04ScreenState();
}

class _Lesson04ScreenState extends State<Lesson04Screen> {
  UserProfile? _user;

  void _parseJson() {
    final rawJson = {
      'id': 101,
      'name': 'Alice Developer',
      'email': 'alice@flutter.dev',
      'role': 'Senior Flutter Engineer'
    };

    setState(() {
      _user = UserProfile.fromJson(rawJson);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson 04: JSON Serialization')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_user == null) ...[
              const Text('No model loaded yet.'),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: _parseJson, child: const Text('Parse API JSON Payload')),
            ] else ...[
              Card(
                margin: const EdgeInsets.all(24),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CircleAvatar(radius: 30, child: Icon(Icons.person)),
                      const SizedBox(height: 12),
                      Text(_user!.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text(_user!.role, style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w600)),
                      Text(_user!.email, style: const TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
