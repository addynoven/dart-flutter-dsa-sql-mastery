/*
Scenario 10: Real-Time Multi-Stream Data Aggregator
Problem: Combine multiple independent streams (Crypto Prices, Stock Prices, Forex Rates) into a single unified stream.
Goal: Merge multiple StreamSources using async/stream utilities.
*/

import 'dart:async';
import 'package:async/async.dart';

Stream<String> cryptoStream() async* {
  yield 'BTC: \$65,000';
  await Future.delayed(const Duration(milliseconds: 150));
  yield 'ETH: \$3,500';
}

Stream<String> stockStream() async* {
  await Future.delayed(const Duration(milliseconds: 50));
  yield 'AAPL: \$180';
  await Future.delayed(const Duration(milliseconds: 150));
  yield 'GOOGL: \$140';
}

void main() async {
  print('=== Scenario 10: Multi-Stream Data Aggregator ===\n');

  print('Merging live Crypto and Stock streams...');

  // Merge streams concurrently
  final mergedStream = StreamGroup.merge([
    cryptoStream(),
    stockStream(),
  ]);

  await for (final marketData in mergedStream) {
    print('📈 Live Market Update: $marketData');
  }

  print('\n✅ All Data Streams Processed!');
}
