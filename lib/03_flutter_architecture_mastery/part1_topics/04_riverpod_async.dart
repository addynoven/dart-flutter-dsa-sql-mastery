/*
Lesson 04: Riverpod AsyncNotifier & AsyncValue
Concept: Handling asynchronous data loading with AsyncValue (data, loading, error).
*/

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// --- ASYNC NOTIFIER ---
class UserProfileNotifier extends AsyncNotifier<String> {
  @override
  Future<String> build() async {
    return _fetchUserProfile();
  }

  Future<String> _fetchUserProfile() async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network fetch
    return 'Alice Developer (Senior Flutter Engineer)';
  }

  Future<void> refreshProfile() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchUserProfile());
  }
}

final userProfileProvider = AsyncNotifierProvider<UserProfileNotifier, String>(() {
  return UserProfileNotifier();
});

void main() {
  runApp(const ProviderScope(child: MaterialApp(home: Lesson04Screen())));
}

class Lesson04Screen extends ConsumerWidget {
  const Lesson04Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(userProfileProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Lesson 04: Riverpod AsyncNotifier')),
      body: Center(
        child: profileAsync.when(
          data: (profile) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.account_circle, size: 80, color: Colors.blue),
              const SizedBox(height: 16),
              Text(profile, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () => ref.read(userProfileProvider.notifier).refreshProfile(),
                icon: const Icon(Icons.refresh),
                label: const Text('Refresh Profile'),
              )
            ],
          ),
          error: (err, stack) => Text('Error: $err'),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}
