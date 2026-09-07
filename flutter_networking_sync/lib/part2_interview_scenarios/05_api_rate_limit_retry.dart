/*
Scenario 05: Exponential Backoff & Retry on 429 Rate Limits
Problem: When API returns 429 Too Many Requests, apply exponential backoff (retry after 1s, 2s, 4s...) before failing.
*/

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Scenario05Screen()));
}

class Scenario05Screen extends StatefulWidget {
  const Scenario05Screen({super.key});

  @override
  State<Scenario05Screen> createState() => _Scenario05ScreenState();
}

class _Scenario05ScreenState extends State<Scenario05Screen> {
  final List<String> _retryLogs = [];
  bool _isProcessing = false;

  Future<void> _executeWithExponentialBackoff() async {
    setState(() {
      _isProcessing = true;
      _retryLogs.clear();
      _retryLogs.add('1. Initiating API Request...');
    });

    int maxRetries = 3;
    for (int attempt = 1; attempt <= maxRetries; attempt++) {
      await Future.delayed(const Duration(milliseconds: 300));
      if (attempt < maxRetries) {
        int backoffSeconds = pow(2, attempt - 1).toInt();
        setState(() {
          _retryLogs.add('⚠️ Attempt $attempt: 429 Too Many Requests! Rate limited.');
          _retryLogs.add('⏳ Applying Exponential Backoff: Waiting ${backoffSeconds}s before Retry...');
        });
        await Future.delayed(Duration(seconds: backoffSeconds));
      } else {
        setState(() {
          _retryLogs.add('✅ Attempt $attempt: Rate limit cleared! Response 200 OK.');
          _retryLogs.add('🎉 Data successfully retrieved!');
          _isProcessing = false;
        });
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 05: Exponential Backoff Retry')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.timer),
              label: const Text('Trigger Rate Limited Request'),
              onPressed: _isProcessing ? null : _executeWithExponentialBackoff,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                child: ListView.builder(
                  itemCount: _retryLogs.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(_retryLogs[index], style: const TextStyle(color: Colors.lightGreenAccent, fontFamily: 'monospace')),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
