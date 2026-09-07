/*
Scenario 08: Auto-Reconnecting WebSocket with Offline Fallback
Problem: Handle WebSocket disconnects gracefully with auto-reconnection and local fallback storage.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Scenario08Screen()));
}

class Scenario08Screen extends StatefulWidget {
  const Scenario08Screen({super.key});

  @override
  State<Scenario08Screen> createState() => _Scenario08ScreenState();
}

class _Scenario08ScreenState extends State<Scenario08Screen> {
  bool _isConnected = true;
  final List<String> _streamLogs = ['Connected to wss://stream.crypto.com/v1'];

  void _toggleConnection() {
    setState(() {
      _isConnected = !_isConnected;
      if (_isConnected) {
        _streamLogs.add('🔄 Auto-Reconnected to WebSocket stream!');
      } else {
        _streamLogs.add('⚠️ Connection lost! Falling back to cached polling mode.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scenario 08: WebSocket Reconnect'),
        actions: [
          IconButton(
            icon: Icon(_isConnected ? Icons.wifi : Icons.wifi_off),
            onPressed: _toggleConnection,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: _streamLogs.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(_isConnected ? Icons.swap_vert : Icons.warning_amber, color: _isConnected ? Colors.green : Colors.orange),
            title: Text(_streamLogs[index]),
          );
        },
      ),
    );
  }
}
