/*
Scenario 06: Unit Testing Riverpod AsyncNotifier with ProviderContainer
Problem: Unit test Riverpod StateNotifier using ProviderContainer without building Flutter UI widgets.
*/

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);
  void increment() => state++;
}

final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) => CounterNotifier());

void main() {
  test('Riverpod StateNotifier increments state correctly', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    expect(container.read(counterProvider), equals(0));

    container.read(counterProvider.notifier).increment();

    expect(container.read(counterProvider), equals(1));
  });
}
