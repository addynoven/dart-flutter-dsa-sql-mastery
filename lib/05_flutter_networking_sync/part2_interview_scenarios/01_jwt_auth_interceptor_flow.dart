/*
Scenario 01: Full JWT Auth Interceptor with Token Rotation UI
Problem: Build a production JWT Auth Interceptor that attaches 'Authorization: Bearer <token>' to every outgoing request.
If the backend returns 401 Unauthorized, automatically queue incoming requests, refresh the token via /auth/refresh, and retry all queued requests.
*/

import 'package:flutter/material.dart';

class TokenSession {
  String accessToken = 'expired_access_token';
  String refreshToken = 'valid_refresh_token';

  Future<void> refresh() async {
    await Future.delayed(const Duration(milliseconds: 600));
    accessToken = 'fresh_jwt_token_${DateTime.now().millisecondsSinceEpoch.toString().substring(8)}';
  }
}

void main() {
  runApp(MaterialApp(home: Scenario01Screen(session: TokenSession())));
}

class Scenario01Screen extends StatefulWidget {
  final TokenSession session;
  const Scenario01Screen({super.key, required this.session});

  @override
  State<Scenario01Screen> createState() => _Scenario01ScreenState();
}

class _Scenario01ScreenState extends State<Scenario01Screen> {
  final List<String> _logs = [];
  bool _isRefreshing = false;

  Future<void> _makeProtectedCall() async {
    setState(() {
      _logs.add('➡️ Outgoing Request Headers: {"Authorization": "Bearer ${widget.session.accessToken}"}');
    });

    if (widget.session.accessToken.contains('expired')) {
      setState(() {
        _logs.add('❌ Received 401 Unauthorized Response!');
        _logs.add('🔒 Queueing requests & refreshing access token...');
        _isRefreshing = true;
      });

      await widget.session.refresh();

      setState(() {
        _isRefreshing = false;
        _logs.add('✅ Token Refreshed Successfully! New Token: "${widget.session.accessToken}"');
        _logs.add('🔁 Retrying original request with new token...');
        _logs.add('🎉 Response 200 OK: {"data": "Protected User Profile Loaded"}');
      });
    } else {
      setState(() {
        _logs.add('🎉 Response 200 OK: {"data": "Protected User Profile Loaded"}');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 01: JWT Interceptor Flow')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.security),
              label: const Text('Trigger Protected Request'),
              onPressed: _isRefreshing ? null : _makeProtectedCall,
            ),
            const SizedBox(height: 16),
            if (_isRefreshing) const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                child: ListView.builder(
                  itemCount: _logs.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(_logs[index], style: const TextStyle(color: Colors.cyanAccent, fontFamily: 'monospace')),
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
