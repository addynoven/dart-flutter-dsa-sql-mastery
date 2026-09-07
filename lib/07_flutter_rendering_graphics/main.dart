import 'package:flutter/material.dart';
import 'part1_topics/01_flutter_three_trees.dart' as lesson01;
import 'part1_topics/02_custom_painter_canvas.dart' as lesson02;
import 'part1_topics/03_implicit_animations.dart' as lesson03;
import 'part1_topics/04_explicit_animations.dart' as lesson04;
import 'part1_topics/05_staggered_and_hero.dart' as lesson05;

import 'part2_interview_scenarios/01_custom_pie_chart.dart' as scenario01;
import 'part2_interview_scenarios/02_animated_bottom_nav_bar.dart' as scenario02;
import 'part2_interview_scenarios/03_line_chart_custom_painter.dart' as scenario03;
import 'part2_interview_scenarios/04_swipe_to_dismiss_cards.dart' as scenario04;
import 'part2_interview_scenarios/05_particle_effects_canvas.dart' as scenario05;
import 'part2_interview_scenarios/06_skeleton_loading_shimmer.dart' as scenario06;
import 'part2_interview_scenarios/07_signature_drawing_pad.dart' as scenario07;
import 'part2_interview_scenarios/08_circular_progress_ring.dart' as scenario08;
import 'part2_interview_scenarios/09_3d_card_flip_animation.dart' as scenario09;
import 'part2_interview_scenarios/10_wave_clip_path_animation.dart' as scenario10;

void main() {
  runApp(const MasterAppDashboard());
}

class MasterAppDashboard extends StatelessWidget {
  const MasterAppDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Rendering, CustomPainters & Animations',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
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
        title: const Text('🎨 Graphics & Animations Dashboard'),
        backgroundColor: Colors.orange.shade100,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Part 1: Topic-Wise Lessons', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          _buildItem(context, 'Lesson 01: 3-Tree Architecture', () => lesson01.main()),
          _buildItem(context, 'Lesson 02: CustomPainter & Canvas', () => lesson02.main()),
          _buildItem(context, 'Lesson 03: Implicit Animations', () => lesson03.main()),
          _buildItem(context, 'Lesson 04: Explicit Animations', () => lesson04.main()),
          _buildItem(context, 'Lesson 05: Hero & Staggered Animations', () => lesson05.main()),
          const Divider(height: 32),
          const Text('Part 2: Interview Scenarios', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          _buildItem(context, 'Scenario 01: Animated Donut Chart', () => scenario01.main()),
          _buildItem(context, 'Scenario 02: Animated Bottom Nav', () => scenario02.main()),
          _buildItem(context, 'Scenario 03: Line Chart CustomPainter', () => scenario03.main()),
          _buildItem(context, 'Scenario 04: Swipeable Cards', () => scenario04.main()),
          _buildItem(context, 'Scenario 05: Particle Explosion', () => scenario05.main()),
          _buildItem(context, 'Scenario 06: Shimmer Skeleton UI', () => scenario06.main()),
          _buildItem(context, 'Scenario 07: Signature Pad', () => scenario07.main()),
          _buildItem(context, 'Scenario 08: Circular Progress Ring', () => scenario08.main()),
          _buildItem(context, 'Scenario 09: 3D Card Flip', () => scenario09.main()),
          _buildItem(context, 'Scenario 10: Wave ClipPath Animation', () => scenario10.main()),
        ],
      ),
    );
  }

  Widget _buildItem(BuildContext context, String title, VoidCallback onTap) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        leading: const Icon(Icons.brush, color: Colors.orange),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
