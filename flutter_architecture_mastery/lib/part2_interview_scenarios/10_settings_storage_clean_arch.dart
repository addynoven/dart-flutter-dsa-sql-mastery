/*
Scenario 10: App Settings Repository with Clean Architecture
Problem: Build an app settings storage repository pattern following Clean Architecture rules.
*/

import 'package:flutter/material.dart';

abstract class SettingsRepository {
  Future<bool> getNotificationsEnabled();
  Future<void> setNotificationsEnabled(bool enabled);
}

class LocalSettingsRepositoryImpl implements SettingsRepository {
  bool _notifications = true;

  @override
  Future<bool> getNotificationsEnabled() async => _notifications;

  @override
  Future<void> setNotificationsEnabled(bool enabled) async {
    _notifications = enabled;
  }
}

void main() {
  runApp(MaterialApp(home: Scenario10Screen(repository: LocalSettingsRepositoryImpl())));
}

class Scenario10Screen extends StatefulWidget {
  final SettingsRepository repository;
  const Scenario10Screen({super.key, required this.repository});

  @override
  State<Scenario10Screen> createState() => _Scenario10ScreenState();
}

class _Scenario10ScreenState extends State<Scenario10Screen> {
  bool _notifications = true;

  @override
  void initState() {
    super.initState();
    widget.repository.getNotificationsEnabled().then((val) => setState(() => _notifications = val));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 10: Settings Clean Arch')),
      body: ListView(
        children: [
          SwitchListTile(
            title: const Text('Push Notifications'),
            subtitle: const Text('Receive realtime app alerts and updates'),
            value: _notifications,
            onChanged: (val) async {
              await widget.repository.setNotificationsEnabled(val);
              setState(() => _notifications = val);
            },
          )
        ],
      ),
    );
  }
}
