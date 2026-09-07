import 'package:flutter/material.dart';
import 'part1_topics/01_cubit_basics.dart' as lesson01;
import 'part1_topics/02_bloc_event_driven.dart' as lesson02;
import 'part1_topics/03_riverpod_providers.dart' as lesson03;
import 'part1_topics/04_riverpod_async.dart' as lesson04;
import 'part1_topics/05_provider_inherited.dart' as lesson05;
import 'part1_topics/06_clean_architecture.dart' as lesson06;

import 'part2_interview_scenarios/01_shopping_cart_bloc.dart' as scenario01;
import 'part2_interview_scenarios/02_auth_flow_riverpod.dart' as scenario02;
import 'part2_interview_scenarios/03_offline_news_clean_arch.dart' as scenario03;
import 'part2_interview_scenarios/04_multi_step_wizard_cubit.dart' as scenario04;
import 'part2_interview_scenarios/05_realtime_chat_stream_bloc.dart' as scenario05;
import 'part2_interview_scenarios/06_search_typeahead_bloc_transformer.dart' as scenario06;
import 'part2_interview_scenarios/07_theme_and_locale_provider.dart' as scenario07;
import 'part2_interview_scenarios/08_paginated_infinite_list_riverpod.dart' as scenario08;
import 'part2_interview_scenarios/09_order_checkout_state_machine.dart' as scenario09;
import 'part2_interview_scenarios/10_settings_storage_clean_arch.dart' as scenario10;

void main() {
  runApp(const MasterAppDashboard());
}

class MasterAppDashboard extends StatelessWidget {
  const MasterAppDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Architecture Mastery',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
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
        title: const Text('📱 Flutter Architecture Dashboard'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Part 1: Topic-Wise Lessons', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          _buildItem(context, 'Lesson 01: Cubit Basics', () => lesson01.main()),
          _buildItem(context, 'Lesson 02: Event-Driven BLoC', () => lesson02.main()),
          _buildItem(context, 'Lesson 03: Riverpod Providers', () => lesson03.main()),
          _buildItem(context, 'Lesson 04: Riverpod AsyncNotifier', () => lesson04.main()),
          _buildItem(context, 'Lesson 05: Provider & ChangeNotifier', () => lesson05.main()),
          _buildItem(context, 'Lesson 06: Clean Architecture', () => lesson06.main()),
          const Divider(height: 32),
          const Text('Part 2: Interview Scenarios', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          _buildItem(context, 'Scenario 01: Shopping Cart (BLoC)', () => scenario01.main()),
          _buildItem(context, 'Scenario 02: Auth Flow (Riverpod)', () => scenario02.main()),
          _buildItem(context, 'Scenario 03: Offline News (Clean Arch)', () => scenario03.main()),
          _buildItem(context, 'Scenario 04: Form Wizard (Cubit)', () => scenario04.main()),
          _buildItem(context, 'Scenario 05: Live Chat (BLoC)', () => scenario05.main()),
          _buildItem(context, 'Scenario 06: Debounced Search (BLoC)', () => scenario06.main()),
          _buildItem(context, 'Scenario 07: Theme Provider', () => scenario07.main()),
          _buildItem(context, 'Scenario 08: Infinite List (Riverpod)', () => scenario08.main()),
          _buildItem(context, 'Scenario 09: Checkout State Machine (Cubit)', () => scenario09.main()),
          _buildItem(context, 'Scenario 10: App Settings (Clean Arch)', () => scenario10.main()),
        ],
      ),
    );
  }

  Widget _buildItem(BuildContext context, String title, VoidCallback onTap) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        leading: const Icon(Icons.play_circle_fill, color: Colors.blue),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
