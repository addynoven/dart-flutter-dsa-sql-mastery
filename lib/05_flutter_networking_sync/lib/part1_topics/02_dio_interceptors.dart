/*
Lesson 02: Dio Interceptors (onRequest, onResponse, onError)
Concept: Interceptors allow you to inspect, modify, or log requests and responses globally.
*/

import 'package:flutter/material.dart';

class MockInterceptorLogger {
  final List<String> logs = [];

  void onRequest(String method, String url, Map<String, String> headers) {
    logs.add('➡️ [REQUEST] $method $url\n   Headers: $headers');
  }

  void onResponse(int statusCode, dynamic data) {
    logs.add('✅ [RESPONSE] Status: $statusCode OK\n   Data: $data');
  }

  void onError(int statusCode, String error) {
    logs.add('❌ [ERROR] Status: $statusCode\n   Message: $error');
  }
}

void main() {
  runApp(const MaterialApp(home: Lesson02Screen()));
}

class Lesson02Screen extends StatefulWidget {
  const Lesson02Screen({super.key});

  @override
  State<Lesson02Screen> createState() => _Lesson02ScreenState();
}

class _Lesson02ScreenState extends State<Lesson02Screen> {
  final _logger = MockInterceptorLogger();

  void _triggerAuthorizedRequest() {
    setState(() {
      _logger.onRequest('GET', 'https://api.example.com/user/profile', {'Authorization': 'Bearer sample_jwt_token'});
      _logger.onResponse(200, {'username': 'alice_dev', 'role': 'admin'});
    });
  }

  void _triggerFailedRequest() {
    setState(() {
      _logger.onRequest('GET', 'https://api.example.com/protected/data', {'Authorization': 'Bearer expired_token'});
      _logger.onError(401, 'Unauthorized Token Expired');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson 02: Dio Interceptors')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _triggerAuthorizedRequest,
                  child: const Text('Authorized Request'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade100),
                  onPressed: _triggerFailedRequest,
                  child: const Text('Trigger 401 Error'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(color: Colors.grey.shade900, borderRadius: BorderRadius.circular(8)),
                child: ListView.separated(
                  itemCount: _logger.logs.length,
                  separatorBuilder: (_, __) => const Divider(color: Colors.grey),
                  itemBuilder: (context, index) {
                    return Text(_logger.logs[index], style: const TextStyle(color: Colors.amberAccent, fontFamily: 'monospace'));
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
