/*
Lesson 01: HTTP & Dio Basics (GET, POST, PUT, DELETE)
Concept: Dio is a powerful HTTP client for Dart/Flutter supporting interceptors, global configuration, and response parsing.
*/

import 'package:flutter/material.dart';

class ApiService {
  // Simulate GET request
  Future<Map<String, dynamic>> fetchProductDetails(int id) async {
    await Future.delayed(const Duration(milliseconds: 600));
    return {
      'id': id,
      'title': 'Flutter Pro Laptop',
      'price': 1299.99,
      'status': 'In Stock'
    };
  }

  // Simulate POST request
  Future<Map<String, dynamic>> createOrder(String title, double price) async {
    await Future.delayed(const Duration(milliseconds: 800));
    return {
      'order_id': 'ORD_9942',
      'title': title,
      'price': price,
      'created_at': DateTime.now().toIso8601String()
    };
  }
}

void main() {
  runApp(MaterialApp(home: Lesson01Screen(apiService: ApiService())));
}

class Lesson01Screen extends StatefulWidget {
  final ApiService apiService;
  const Lesson01Screen({super.key, required this.apiService});

  @override
  State<Lesson01Screen> createState() => _Lesson01ScreenState();
}

class _Lesson01ScreenState extends State<Lesson01Screen> {
  String _responseLog = 'Tap a button below to trigger REST API requests.';
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson 01: HTTP & Dio Basics')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.download),
                  label: const Text('GET Request'),
                  onPressed: _isLoading ? null : () async {
                    setState(() => _isLoading = true);
                    final data = await widget.apiService.fetchProductDetails(101);
                    setState(() {
                      _responseLog = 'GET Response (200 OK):\n$data';
                      _isLoading = false;
                    });
                  },
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.upload),
                  label: const Text('POST Request'),
                  onPressed: _isLoading ? null : () async {
                    setState(() => _isLoading = true);
                    final data = await widget.apiService.createOrder('Flutter Laptop', 1299.99);
                    setState(() {
                      _responseLog = 'POST Response (201 Created):\n$data';
                      _isLoading = false;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            if (_isLoading) const CircularProgressIndicator(),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(8)),
                child: SingleChildScrollView(
                  child: Text(_responseLog, style: const TextStyle(color: Colors.greenAccent, fontFamily: 'monospace', fontSize: 14)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
