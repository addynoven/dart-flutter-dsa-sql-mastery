import 'package:flutter/material.dart';
import "../screens.dart";

class PlaygroundProject {
  final String level;
  final String title;
  final Widget screen;

  const PlaygroundProject({
    required this.level,
    required this.title,
    required this.screen,
  });
}

final projects = [
  // Level 1: Beginner Essentials (Simple State & Inputs)
  PlaygroundProject(
    level: '🟢 Level 1: Easy',
    title: '01. Counter App',
    screen: const CounterScreen(),
  ),
  PlaygroundProject(
    level: '🟢 Level 1: Easy',
    title: '02. Background Color Switcher',
    screen: const BackgroundColorScreen(),
  ),
  PlaygroundProject(
    level: '🟢 Level 1: Easy',
    title: '03. Random Color Generator',
    screen: const RandomColorScreen(),
  ),
  PlaygroundProject(
    level: '🟢 Level 1: Easy',
    title: '04. Pass Message App',
    screen: const PassMessageScreen(),
  ),
  PlaygroundProject(
    level: '🟢 Level 1: Easy',
    title: '05. Random Quotes Generator',
    screen: const RandomQuotesScreen(),
  ),

  // Level 2: Intermediate UI (Cards, Lists, Modals & PageViews)
  PlaygroundProject(
    level: '🟡 Level 2: Intermediate',
    title: '06. Customer Testimonials Card',
    screen: const TestimonialsScreen(),
  ),
  PlaygroundProject(
    level: '🟡 Level 2: Intermediate',
    title: '07. Modal Dialogs & BottomSheets',
    screen: const ModalDialogScreen(),
  ),
  PlaygroundProject(
    level: '🟡 Level 2: Intermediate',
    title: '08. Searchable Filterable List',
    screen: const FilterableListScreen(),
  ),
  PlaygroundProject(
    level: '🟡 Level 2: Intermediate',
    title: '09. Image Carousel Slider',
    screen: const ImageCarouselScreen(),
  ),

  // Level 3: Advanced UI (Complex Logic & Custom Styling)
  PlaygroundProject(
    level: '🔴 Level 3: Advanced',
    title: '10. Full Calculator App',
    screen: const CalculatorScreen(),
  ),
  PlaygroundProject(
    level: '🔴 Level 3: Advanced',
    title: '11. Neumorphism Soft UI',
    screen: const Neumorphism(),
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('📱 Flutter UI Playground (Easy ➔ Hard)'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: projects.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final project = projects[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: index < 5
                  ? Colors.green.shade100
                  : index < 9
                      ? Colors.orange.shade100
                      : Colors.purple.shade100,
              child: Text('${index + 1}', style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
            title: Text(project.title, style: const TextStyle(fontWeight: FontWeight.w600)),
            subtitle: Text(project.level, style: const TextStyle(fontSize: 12)),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => project.screen),
            ),
          );
        },
      ),
    );
  }
}
