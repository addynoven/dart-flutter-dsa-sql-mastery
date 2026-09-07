/*
Lesson 03: BLoC & Cubit State Testing with blocTest
Concept: Using blocTest<Bloc, State>() to verify emitted state sequences for Cubits and BLoCs.
*/

import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Cubit under test
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
  void reset() => emit(0);
}

void main() {
  group('CounterCubit blocTest Suite', () {
    blocTest<CounterCubit, int>(
      'emits [1] when increment() is called',
      build: () => CounterCubit(),
      act: (cubit) => cubit.increment(),
      expect: () => [1],
    );

    blocTest<CounterCubit, int>(
      'emits [1, 2, 0] when increment() -> increment() -> reset() is called',
      build: () => CounterCubit(),
      act: (cubit) {
        cubit.increment();
        cubit.increment();
        cubit.reset();
      },
      expect: () => [1, 2, 0],
    );
  });
}
