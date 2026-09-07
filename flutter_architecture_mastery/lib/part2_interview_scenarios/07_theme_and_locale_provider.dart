/// Scenario 07: Dynamic Theme Mode & Localization Switcher
/// Problem: Manage global app theme and locale switching using Provider.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsNotifier extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => SettingsNotifier(),
      child: const Scenario07App(),
    ),
  );
}

class Scenario07App extends StatelessWidget {
  const Scenario07App({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<SettingsNotifier>();

    return MaterialApp(
      themeMode: settings.themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scenario 07: Theme Provider'),
          actions: [
            IconButton(
              icon: Icon(settings.themeMode == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode),
              onPressed: () => context.read<SettingsNotifier>().toggleTheme(),
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                settings.themeMode == ThemeMode.dark ? Icons.nightlight_round : Icons.wb_sunny,
                size: 80,
                color: settings.themeMode == ThemeMode.dark ? Colors.amber : Colors.orange,
              ),
              const SizedBox(height: 20),
              Text(
                'Current Theme: ${settings.themeMode.name.toUpperCase()}',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
