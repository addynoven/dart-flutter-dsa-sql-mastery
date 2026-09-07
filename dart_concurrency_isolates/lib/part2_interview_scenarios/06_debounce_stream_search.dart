/*
Scenario 06: Custom Debounced Search Stream
Problem: User typing in search field triggers API requests on every single keystroke.
Goal: Create a custom StreamTransformer to debounce input events.
*/

import 'dart:async';

void main() async {
  print('=== Scenario 06: Debounced Search Stream ===\n');

  final searchController = StreamController<String>();

  // Debounced listener
  String? lastQuery;
  Timer? debounceTimer;

  searchController.stream.listen((query) {
    debounceTimer?.cancel();
    debounceTimer = Timer(const Duration(milliseconds: 300), () {
      if (query != lastQuery) {
        lastQuery = query;
        print('⚡ Executing Search API Query for: "$query"');
      }
    });
  });

  print('Simulating rapid user typing: "f" -> "fl" -> "flu" -> "flutter"');
  searchController.add('f');
  await Future.delayed(const Duration(milliseconds: 100));
  searchController.add('fl');
  await Future.delayed(const Duration(milliseconds: 100));
  searchController.add('flu');
  await Future.delayed(const Duration(milliseconds: 100));
  searchController.add('flutter'); // Final query after 300ms pause

  await Future.delayed(const Duration(milliseconds: 500));
  await searchController.close();
}
