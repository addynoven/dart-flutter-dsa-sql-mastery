/*
Scenario 08: Unit Testing Offline Sync Manager Queue
Problem: Test that OfflineSyncManager queues mutations when offline and processes them when online.
*/

import 'package:flutter_test/flutter_test.dart';

class SyncManager {
  final List<String> _queue = [];
  List<String> get queue => List.unmodifiable(_queue);

  void addMutation(String action, bool isOnline) {
    if (!isOnline) {
      _queue.add(action);
    }
  }

  void sync() {
    _queue.clear();
  }
}

void main() {
  test('SyncManager queues offline mutations and clears queue on sync', () {
    final syncManager = SyncManager();

    // Offline mutation
    syncManager.addMutation('CREATE_NOTE', false);
    expect(syncManager.queue.length, equals(1));

    // Online sync
    syncManager.sync();
    expect(syncManager.queue.isEmpty, isTrue);
  });
}
