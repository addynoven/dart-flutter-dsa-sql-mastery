/*
Lesson 01: Cubit Basics & Simple State Transitions
Concept: Cubit is a simplified BLoC subclass that exposes methods to emit new states.
*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// --- STATE ---
class CounterState {
  final int count;
  final bool isDarkTheme;
  const CounterState({required this.count, required this.isDarkTheme});
}

// --- CUBIT ---
class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(count: 0, isDarkTheme: false));

  void increment() => emit(CounterState(count: state.count + 1, isDarkTheme: state.isDarkTheme));
  void decrement() => emit(CounterState(count: state.count - 1, isDarkTheme: state.isDarkTheme));
  void toggleTheme() => emit(CounterState(count: state.count, isDarkTheme: !state.isDarkTheme));
}

void main() {
  runApp(
    BlocProvider(
      create: (_) => CounterCubit(),
      child: const Lesson01App(),
    ),
  );
}

class Lesson01App extends StatelessWidget {
  const Lesson01App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return MaterialApp(
          theme: state.isDarkTheme ? ThemeData.dark() : ThemeData.light(),
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Lesson 01: Cubit Basics'),
              actions: [
                IconButton(
                  icon: Icon(state.isDarkTheme ? Icons.light_mode : Icons.dark_mode),
                  onPressed: () => context.read<CounterCubit>().toggleTheme(),
                )
              ],
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Current Counter Value:', style: TextStyle(fontSize: 18)),
                  Text('${state.count}', style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () => context.read<CounterCubit>().decrement(),
                        icon: const Icon(Icons.remove),
                        label: const Text('Decrement'),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton.icon(
                        onPressed: () => context.read<CounterCubit>().increment(),
                        icon: const Icon(Icons.add),
                        label: const Text('Increment'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
