/*
Scenario 02: Queueing Offline POST Requests & Syncing
Problem: User creates or edits records while offline. Save actions to a local Sync Queue in SQLite. When network restores, push queued mutations to server in FIFO order.
*/

import 'package:flutter/material.dart';

class OfflineMutation {
  final String id;
  final String action;
  final Map<String, dynamic> payload;
  OfflineMutation(this.id, this.action, this.payload);
}

void main() {
  runApp(const MaterialApp(home: Scenario02Screen()));
}

class Scenario02Screen extends StatefulWidget {
  const Scenario02Screen({super.key});

  @override
  State<Scenario02Screen> createState() => _Scenario02ScreenState();
}

class _Scenario02ScreenState extends State<Scenario02Screen> {
  bool _isOnline = false;
  final List<OfflineMutation> _queue = [];
  final List<String> _syncedServerLogs = [];

  void _addMutation() {
    final id = DateTime.now().millisecondsSinceEpoch.toString().substring(8);
    final mutation = OfflineMutation(id, 'CREATE_NOTE', {'title': 'Offline Note #$id'});

    if (!_isOnline) {
      setState(() {
        _queue.add(mutation);
      });
    } else {
      setState(() {
        _syncedServerLogs.add('⚡ Direct Sync: ${mutation.action} (${mutation.payload['title']})');
      });
    }
  }

  Future<void> _syncQueue() async {
    if (_queue.isEmpty) return;
    final toSync = List<OfflineMutation>.from(_queue);
    for (final item in toSync) {
      await Future.delayed(const Duration(milliseconds: 300));
      setState(() {
        _syncedServerLogs.add('✅ Synced Queued Item #${item.id}: ${item.payload['title']}');
        _queue.remove(item);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scenario 02: Offline Sync Queue'),
        actions: [
          Row(
            children: [
              Text(_isOnline ? 'Online' : 'Offline'),
              Switch(
                value: _isOnline,
                onChanged: (v) {
                  setState(() => _isOnline = v);
                  if (v) _syncQueue();
                },
              )
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.add_comment),
              label: const Text('Create New Note'),
              onPressed: _addMutation,
            ),
            const SizedBox(height: 16),
            Card(
              color: Colors.orange.shade50,
              child: ListTile(
                leading: const Icon(Icons.offline_pin, color: Colors.orange),
                title: Text('Pending Offline Mutations Queue (${_queue.length})'),
                subtitle: Text(_queue.map((m) => m.payload['title']).join(', ')),
              ),
            ),
            const Divider(height: 32),
            const Text('Synced Server Log', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Expanded(
              child: ListView.builder(
                itemCount: _syncedServerLogs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.cloud_done, color: Colors.green),
                    title: Text(_syncedServerLogs[index]),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
