/*
Scenario 02: Authentication & Token Refresh Flow with Riverpod
Problem: Build an authentication flow managing token state, expired session handling, and login/logout transitions with Riverpod.
*/

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserSession {
  final String userId;
  final String token;
  UserSession({required this.userId, required this.token});
}

class AuthNotifier extends AsyncNotifier<UserSession?> {
  @override
  Future<UserSession?> build() async {
    return null; // Initial unauthenticated state
  }

  Future<void> login(String username, String password) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await Future.delayed(const Duration(milliseconds: 800));
      if (password == 'flutter123') {
        return UserSession(userId: 'usr_99', token: 'jwt_token_sample');
      }
      throw Exception('Invalid credentials! Try password: flutter123');
    });
  }

  void logout() {
    state = const AsyncValue.data(null);
  }
}

final authNotifierProvider = AsyncNotifierProvider<AuthNotifier, UserSession?>(() {
  return AuthNotifier();
});

void main() {
  runApp(const ProviderScope(child: MaterialApp(home: Scenario02Screen())));
}

class Scenario02Screen extends ConsumerWidget {
  const Scenario02Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authNotifierProvider);
    final passwordController = TextEditingController(text: 'flutter123');

    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 02: Auth Flow (Riverpod)')),
      body: authState.when(
        data: (session) {
          if (session == null) {
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Login to Your Account', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  TextField(controller: passwordController, obscureText: true, decoration: const InputDecoration(labelText: 'Password (try: flutter123)')),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () => ref.read(authNotifierProvider.notifier).login('user', passwordController.text),
                    child: const Text('Sign In'),
                  )
                ],
              ),
            );
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.verified_user, size: 80, color: Colors.green),
                const SizedBox(height: 16),
                Text('User Authenticated: ${session.userId}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('Token: ${session.token}', style: const TextStyle(color: Colors.grey)),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () => ref.read(authNotifierProvider.notifier).logout(),
                  child: const Text('Sign Out'),
                )
              ],
            ),
          );
        },
        error: (err, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Auth Error: $err', style: const TextStyle(color: Colors.red)),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => ref.read(authNotifierProvider.notifier).logout(),
                child: const Text('Try Again'),
              )
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
