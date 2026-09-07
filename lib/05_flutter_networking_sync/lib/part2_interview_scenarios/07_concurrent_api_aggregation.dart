/*
Scenario 07: Aggregating 4 Parallel REST API Endpoints
Problem: Fetch user profile, orders, notifications, and balance concurrently using Future.wait() to minimize load time.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Scenario07Screen()));
}

class Scenario07Screen extends StatefulWidget {
  const Scenario07Screen({super.key});

  @override
  State<Scenario07Screen> createState() => _Scenario07ScreenState();
}

class _Scenario07ScreenState extends State<Scenario07Screen> {
  Map<String, dynamic>? _dashboardData;
  bool _isLoading = false;
  int _loadTimeMs = 0;

  Future<void> _fetchDashboardDataConcurrently() async {
    setState(() {
      _isLoading = true;
    });

    final stopwatch = Stopwatch()..start();

    // 4 Parallel REST API Calls
    final results = await Future.wait([
      Future.delayed(const Duration(milliseconds: 500), () => 'Alice Developer'),
      Future.delayed(const Duration(milliseconds: 600), () => 3),
      Future.delayed(const Duration(milliseconds: 400), () => '\$1,250.00'),
      Future.delayed(const Duration(milliseconds: 550), () => '5 Unread Alerts'),
    ]);

    stopwatch.stop();

    setState(() {
      _dashboardData = {
        'user': results[0],
        'orders': results[1],
        'balance': results[2],
        'alerts': results[3],
      };
      _loadTimeMs = stopwatch.elapsedMilliseconds;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 07: Parallel API Aggregation')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.speed),
              label: const Text('Fetch 4 Parallel Endpoints'),
              onPressed: _isLoading ? null : _fetchDashboardDataConcurrently,
            ),
            const SizedBox(height: 20),
            if (_isLoading) const CircularProgressIndicator(),
            if (_dashboardData != null) ...[
              Text('⏱️ Total Aggregation Time: ${_loadTimeMs}ms (vs ~2050ms Sequential!)', style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
              const SizedBox(height: 16),
              Card(
                child: Column(
                  children: [
                    ListTile(leading: const Icon(Icons.person), title: Text('User: ${_dashboardData!['user']}')),
                    ListTile(leading: const Icon(Icons.shopping_bag), title: Text('Active Orders: ${_dashboardData!['orders']}')),
                    ListTile(leading: const Icon(Icons.account_balance_wallet), title: Text('Balance: ${_dashboardData!['balance']}')),
                    ListTile(leading: const Icon(Icons.notifications), title: Text('Alerts: ${_dashboardData!['alerts']}')),
                  ],
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
