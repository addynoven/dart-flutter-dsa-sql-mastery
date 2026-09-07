/*
Lesson 05: Offline-First Sync Strategy with Cache Fallback
Concept: Fetch from Network -> Save to Cache. If Offline -> Load from Local Cache.
*/

import 'package:flutter/material.dart';

class OfflineSyncRepository {
  final List<String> _localCache = ['Cached Post #1', 'Cached Post #2'];

  Future<List<String>> getPosts({required bool isOnline}) async {
    await Future.delayed(const Duration(milliseconds: 600));
    if (isOnline) {
      final remotePosts = ['Live Post #1 (Network)', 'Live Post #2 (Network)', 'Live Post #3 (Network)'];
      _localCache.clear();
      _localCache.addAll(remotePosts);
      return remotePosts;
    } else {
      return _localCache;
    }
  }
}

void main() {
  runApp(MaterialApp(home: Lesson05Screen(repository: OfflineSyncRepository())));
}

class Lesson05Screen extends StatefulWidget {
  final OfflineSyncRepository repository;
  const Lesson05Screen({super.key, required this.repository});

  @override
  State<Lesson05Screen> createState() => _Lesson05ScreenState();
}

class _Lesson05ScreenState extends State<Lesson05Screen> {
  bool _isOnline = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 05: Offline-First Sync'),
        actions: [
          Row(
            children: [
              Text(_isOnline ? 'Online' : 'Offline'),
              Switch(value: _isOnline, onChanged: (v) => setState(() => _isOnline = v)),
            ],
          )
        ],
      ),
      body: FutureBuilder<List<String>>(
        future: widget.repository.getPosts(isOnline: _isOnline),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          final posts = snapshot.data ?? [];
          return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(_isOnline ? Icons.cloud_done : Icons.cloud_off, color: _isOnline ? Colors.green : Colors.orange),
                title: Text(posts[index]),
                subtitle: Text(_isOnline ? 'Source: Remote REST API' : 'Source: Local SQLite Cache'),
              );
            },
          );
        },
      ),
    );
  }
}
