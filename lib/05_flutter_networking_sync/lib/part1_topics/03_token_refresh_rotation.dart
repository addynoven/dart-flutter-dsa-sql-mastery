/*
Lesson 03: Automated 401 JWT Token Refresh & Request Retry Queue
Concept: When an API returns 401 Unauthorized, intercept the error, pause outgoing requests, fetch a new access token using a refresh token, and retry the failed request transparently.
*/

import 'package:flutter/material.dart';

class TokenManager {
  String accessToken = 'expired_access_token';
  String refreshToken = 'valid_refresh_token';

  Future<bool> refreshTokens() async {
    await Future.delayed(const Duration(milliseconds: 800)); // Simulate refresh API call
    accessToken = 'new_fresh_access_token_${DateTime.now().millisecondsSinceEpoch.toString().substring(8)}';
    return true;
  }
}

void main() {
  runApp(MaterialApp(home: Lesson03Screen(tokenManager: TokenManager())));
}

class Lesson03Screen extends StatefulWidget {
  final TokenManager tokenManager;
  const Lesson03Screen({super.key, required this.tokenManager});

  @override
  State<Lesson03Screen> createState() => _Lesson03ScreenState();
}

class _Lesson03ScreenState extends State<Lesson03Screen> {
  final List<String> _eventLogs = [];
  bool _isRefreshing = false;

  Future<void> _executeProtectedApiCall() async {
    setState(() {
      _eventLogs.add('1. Executing API Request with Token: "${widget.tokenManager.accessToken}"');
    });

    // Simulate 401 check
    if (widget.tokenManager.accessToken.contains('expired')) {
      setState(() {
        _eventLogs.add('2. ⚠️ API returned 401 Unauthorized! Intercepting request...');
        _eventLogs.add('3. 🔄 Invoking /auth/refresh-token endpoint...');
        _isRefreshing = true;
      });

      await widget.tokenManager.refreshTokens();

      setState(() {
        _isRefreshing = false;
        _eventLogs.add('4. ✅ New Access Token Received: "${widget.tokenManager.accessToken}"');
        _eventLogs.add('5. 🔁 Retrying original API request with new token...');
        _eventLogs.add('6. 🎉 API Call Succeeded (200 OK)! Output: {"status": "success"}');
      });
    } else {
      setState(() {
        _eventLogs.add('2. 🎉 API Call Succeeded directly (200 OK)!');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson 03: 401 Token Refresh Rotation')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.security),
              label: const Text('Execute Protected API Call'),
              onPressed: _isRefreshing ? null : _executeProtectedApiCall,
            ),
            const SizedBox(height: 20),
            if (_isRefreshing) const CircularProgressIndicator(),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                child: ListView.builder(
                  itemCount: _eventLogs.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(_eventLogs[index], style: const TextStyle(color: Colors.cyanAccent, fontFamily: 'monospace')),
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
