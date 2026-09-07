import 'package:flutter/material.dart';

import '00_flutter_ui_playground/screens/screens.dart' as track0;
import '02_dart_sql_mastery/sql_mastery_flutter.dart' as track2;
import '03_flutter_architecture_mastery/main.dart' as track3;
import '05_flutter_networking_sync/main.dart' as track5;
import '06_flutter_testing_harness/main.dart' as track6;
import '07_flutter_rendering_graphics/main.dart' as track7;

void main() {
  runApp(const MasterAppPortal());
}

class MasterAppPortal extends StatelessWidget {
  const MasterAppPortal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Developer Interview Mastery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MasterPortalHomeScreen(),
    );
  }
}

class MasterPortalHomeScreen extends StatelessWidget {
  const MasterPortalHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tracks = [
      _TrackPortalItem(
        number: '00',
        title: 'Flutter UI Playground & Essentials',
        subtitle: '11 Essential UI Apps (Counter, Calculator, Neumorphism, Modals)',
        color: Colors.blue,
        icon: Icons.widgets,
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const track0.HomeScreen())),
      ),
      _TrackPortalItem(
        number: '01',
        title: 'NeetCode 150 Data Structures & Algorithms',
        subtitle: '150 Coding Problems across 18 Topic Categories in Dart',
        color: Colors.green,
        icon: Icons.code,
        onTap: () => _showTerminalInfoDialog(context, 'Track 01: NeetCode 150 DSA', 'dart run lib/01_neetcode_150_dsa/01_arrays_and_hashing/01_contains_duplicate.dart'),
      ),
      _TrackPortalItem(
        number: '02',
        title: 'Dart & Flutter SQLite & Raw SQL Mastery',
        subtitle: '🎮 Gamified "Fix SQL to Fix UI" Interactive Scenarios + 126 SQL Questions',
        color: Colors.teal,
        icon: Icons.storage,
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const track2.SqlMasteryDashboard())),
      ),
      _TrackPortalItem(
        number: '03',
        title: 'Flutter State Management & Clean Architecture',
        subtitle: '16 Exercises: BLoC, Cubit, Riverpod, Provider & Clean Arch',
        color: Colors.deepPurple,
        icon: Icons.architecture,
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const track3.MasterAppDashboard())),
      ),
      _TrackPortalItem(
        number: '04',
        title: 'Dart Concurrency, Event Loop & Isolates',
        subtitle: '15 Multithreading Exercises: 50MB JSON Parsing, Crypto & Ports',
        color: Colors.amber.shade800,
        icon: Icons.bolt,
        onTap: () => _showTerminalInfoDialog(context, 'Track 04: Concurrency & Isolates', 'dart run lib/04_dart_concurrency_isolates/part2_interview_scenarios/01_heavy_json_parsing_isolate.dart'),
      ),
      _TrackPortalItem(
        number: '05',
        title: 'Flutter Networking, Interceptors & Offline Sync',
        subtitle: '15 Exercises: Dio REST APIs, 401 JWT Refresh, Offline Queue',
        color: Colors.cyan.shade800,
        icon: Icons.cloud_sync,
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const track5.MasterAppDashboard())),
      ),
      _TrackPortalItem(
        number: '06',
        title: 'Flutter Testing, TDD & Mocktail Harness',
        subtitle: '15 Test Suites: Unit Tests, Mocktail Mocks, Widget Tests & Gestures',
        color: Colors.red.shade800,
        icon: Icons.bug_report,
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const track6.MasterAppDashboard())),
      ),
      _TrackPortalItem(
        number: '07',
        title: 'Flutter Rendering Pipeline & CustomPainters',
        subtitle: '15 Graphics Apps: 3-Tree Architecture, Canvas, 3D Flip Cards',
        color: Colors.orange.shade800,
        icon: Icons.brush,
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const track7.MasterAppDashboard())),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('🚀 Mobile Developer Interview Mastery'),
        backgroundColor: Colors.indigo.shade100,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: tracks.length,
        itemBuilder: (context, index) {
          final item = tracks[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: CircleAvatar(
                backgroundColor: item.color.withAlpha(50),
                child: Text(item.number, style: TextStyle(color: item.color, fontWeight: FontWeight.bold)),
              ),
              title: Text(item.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              subtitle: Text(item.subtitle, style: const TextStyle(fontSize: 12)),
              trailing: Icon(Icons.arrow_forward_ios, color: item.color, size: 18),
              onTap: item.onTap,
            ),
          );
        },
      ),
    );
  }

  void _showTerminalInfoDialog(BuildContext context, String title, String command) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(title),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('This track outputs visual CLI terminal rendering or Dart isolates execution.'),
            const SizedBox(height: 12),
            const Text('Run directly in terminal:', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(6)),
              child: SelectableText(command, style: const TextStyle(color: Colors.greenAccent, fontFamily: 'monospace', fontSize: 13)),
            )
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('OK')),
        ],
      ),
    );
  }
}

class _TrackPortalItem {
  final String number;
  final String title;
  final String subtitle;
  final Color color;
  final IconData icon;
  final VoidCallback onTap;

  _TrackPortalItem({
    required this.number,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.icon,
    required this.onTap,
  });
}
