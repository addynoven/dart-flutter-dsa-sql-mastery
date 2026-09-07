/*
Scenario 06: GraphQL Query & Real-time Subscription Sync
Problem: Execute GraphQL queries for data fetching and merge live WebSocket subscriptions for real-time updates.
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

class _Scenario06ScreenState extends State<Scenario06Screen> {
  final List<String> _notifications = ['Initial Query: Welcome to GraphQL Sync'];

  void _triggerSubscriptionEvent() {
    setState(() {
      _notifications.add('⚡ Subscription Event #${_notifications.length}: Live User Activity Detected');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 06: GraphQL Subscription Sync')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.bolt),
              label: const Text('Emit Subscription Update'),
              onPressed: _triggerSubscriptionEvent,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _notifications.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.graphic_eq, color: Colors.purple),
                  title: Text(_notifications[index]),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
