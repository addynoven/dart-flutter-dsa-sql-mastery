import 'package:flutter/material.dart';
import 'part1_topics/01_http_and_dio_basics.dart' as lesson01;
import 'part1_topics/02_dio_interceptors.dart' as lesson02;
import 'part1_topics/03_token_refresh_rotation.dart' as lesson03;
import 'part1_topics/04_json_serialization.dart' as lesson04;
import 'part1_topics/05_offline_first_sync.dart' as lesson05;

import 'part2_interview_scenarios/01_jwt_auth_interceptor_flow.dart' as scenario01;
import 'part2_interview_scenarios/02_offline_sync_queue.dart' as scenario02;
import 'part2_interview_scenarios/03_paginated_api_feed.dart' as scenario03;
import 'part2_interview_scenarios/04_file_upload_progress.dart' as scenario04;
import 'part2_interview_scenarios/05_api_rate_limit_retry.dart' as scenario05;
import 'part2_interview_scenarios/06_graphql_query_subscription.dart' as scenario06;
import 'part2_interview_scenarios/07_concurrent_api_aggregation.dart' as scenario07;
import 'part2_interview_scenarios/08_websocket_reconnect_sync.dart' as scenario08;
import 'part2_interview_scenarios/09_encrypted_cache_storage.dart' as scenario09;
import 'part2_interview_scenarios/10_rest_repository_clean_arch.dart' as scenario10;

void main() {
  runApp(const MasterAppDashboard());
}

class MasterAppDashboard extends StatelessWidget {
  const MasterAppDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Networking & Sync Mastery',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const DashboardHomeScreen(),
    );
  }
}

class DashboardHomeScreen extends StatelessWidget {
  const DashboardHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🌐 Networking & Sync Dashboard'),
        backgroundColor: Colors.purple.shade100,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Part 1: Topic-Wise Lessons', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          _buildItem(context, 'Lesson 01: HTTP & Dio Basics', () => lesson01.main()),
          _buildItem(context, 'Lesson 02: Dio Interceptors', () => lesson02.main()),
          _buildItem(context, 'Lesson 03: 401 Token Refresh Rotation', () => lesson03.main()),
          _buildItem(context, 'Lesson 04: JSON Serialization', () => lesson04.main()),
          _buildItem(context, 'Lesson 05: Offline-First Sync', () => lesson05.main()),
          const Divider(height: 32),
          const Text('Part 2: Interview Scenarios', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          _buildItem(context, 'Scenario 01: JWT Auth Interceptor Flow', () => scenario01.main()),
          _buildItem(context, 'Scenario 02: Offline Sync Queue', () => scenario02.main()),
          _buildItem(context, 'Scenario 03: Paginated API Feed', () => scenario03.main()),
          _buildItem(context, 'Scenario 04: File Upload Progress', () => scenario04.main()),
          _buildItem(context, 'Scenario 05: Exponential Backoff Retry', () => scenario05.main()),
          _buildItem(context, 'Scenario 06: GraphQL Subscription Sync', () => scenario06.main()),
          _buildItem(context, 'Scenario 07: Parallel API Aggregation', () => scenario07.main()),
          _buildItem(context, 'Scenario 08: WebSocket Reconnect', () => scenario08.main()),
          _buildItem(context, 'Scenario 09: Encrypted API Cache', () => scenario09.main()),
          _buildItem(context, 'Scenario 10: Clean Arch REST Repo', () => scenario10.main()),
        ],
      ),
    );
  }

  Widget _buildItem(BuildContext context, String title, VoidCallback onTap) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        leading: const Icon(Icons.cloud_sync, color: Colors.purple),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
