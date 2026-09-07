/*
Scenario 08: Paginated Infinite Scroll List with Riverpod
Problem: Implement infinite scrolling pagination state with Riverpod.
*/

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PaginatedListNotifier extends StateNotifier<List<String>> {
  PaginatedListNotifier() : super([]) {
    fetchNextPage();
  }

  bool isLoadingMore = false;

  Future<void> fetchNextPage() async {
    if (isLoadingMore) return;
    isLoadingMore = true;
    await Future.delayed(const Duration(milliseconds: 600));
    final nextItems = List.generate(10, (i) => 'Item #${state.length + i + 1}');
    state = [...state, ...nextItems];
    isLoadingMore = false;
  }
}

final paginatedListProvider = StateNotifierProvider<PaginatedListNotifier, List<String>>((ref) {
  return PaginatedListNotifier();
});

void main() {
  runApp(const ProviderScope(child: MaterialApp(home: Scenario08Screen())));
}

class Scenario08Screen extends ConsumerWidget {
  const Scenario08Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(paginatedListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 08: Infinite Scroll (Riverpod)')),
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
            ref.read(paginatedListProvider.notifier).fetchNextPage();
          }
          return true;
        },
        child: ListView.builder(
          itemCount: items.length + 1,
          itemBuilder: (context, index) {
            if (index == items.length) {
              return const Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(child: CircularProgressIndicator()),
              );
            }
            return ListTile(
              leading: CircleAvatar(child: Text('${index + 1}')),
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}
