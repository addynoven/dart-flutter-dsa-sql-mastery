import 'package:flutter/material.dart';

import 'screens/screens.dart';

import 'widgets/app_scroll_behavior.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Playground',
      scrollBehavior: AppScrollBehavior(),
      home: const HomeScreen(),
    );
  }
}
