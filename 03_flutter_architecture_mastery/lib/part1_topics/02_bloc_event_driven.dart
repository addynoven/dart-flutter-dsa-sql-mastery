/*
Lesson 02: Event-Driven BLoC (BlocBuilder, BlocListener, BlocConsumer)
Concept: BLoC processes explicit Events and emits States via on<Event> handlers.
*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// --- EVENTS ---
abstract class AuthEvent {}
class LoginRequested extends AuthEvent {
  final String email;
  final String password;
  LoginRequested(this.email, this.password);
}
class LogoutRequested extends AuthEvent {}

// --- STATES ---
abstract class AuthState {}
class AuthInitial extends AuthState {}
class AuthLoading extends AuthState {}
class AuthAuthenticated extends AuthState {
  final String email;
  AuthAuthenticated(this.email);
}
class AuthError extends AuthState {
  final String message;
  AuthError(this.message);
}

// --- BLOC ---
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginRequested>((event, emit) async {
      emit(AuthLoading());
      await Future.delayed(const Duration(seconds: 1)); // Simulate API call
      if (event.password == '123456') {
        emit(AuthAuthenticated(event.email));
      } else {
        emit(AuthError('Invalid password! Try 123456'));
      }
    });

    on<LogoutRequested>((event, emit) {
      emit(AuthInitial());
    });
  }
}

void main() {
  runApp(
    BlocProvider(
      create: (_) => AuthBloc(),
      child: const MaterialApp(home: Lesson02Screen()),
    ),
  );
}

class Lesson02Screen extends StatefulWidget {
  const Lesson02Screen({super.key});

  @override
  State<Lesson02Screen> createState() => _Lesson02ScreenState();
}

class _Lesson02ScreenState extends State<Lesson02Screen> {
  final _emailController = TextEditingController(text: 'user@flutter.dev');
  final _passwordController = TextEditingController(text: '123456');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lesson 02: Event-Driven BLoC')),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is AuthAuthenticated) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome, ${state.email}!', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => context.read<AuthBloc>().add(LogoutRequested()),
                    child: const Text('Logout'),
                  )
                ],
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(controller: _emailController, decoration: const InputDecoration(labelText: 'Email')),
                const SizedBox(height: 12),
                TextField(controller: _passwordController, obscureText: true, decoration: const InputDecoration(labelText: 'Password (try 123456)')),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(LoginRequested(_emailController.text, _passwordController.text));
                  },
                  child: const Text('Login'),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
