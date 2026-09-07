/// Scenario 06: Debounced Typeahead Search with BLoC Transformers
/// Problem: Prevent API spam by debouncing live user search queries using Event Transformers in BLoC.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// --- CUBIT SIMULATION OF DEBOUNCED SEARCH ---
class SearchCubit extends Cubit<List<String>> {
  SearchCubit() : super([]);

  void search(String query) async {
    if (query.isEmpty) {
      emit([]);
      return;
    }
    await Future.delayed(const Duration(milliseconds: 300)); // Debounce simulation
    final mockDatabase = ['Flutter', 'Dart', 'BLoC', 'Riverpod', 'Provider', 'Clean Architecture', 'SQLite'];
    final results = mockDatabase.where((item) => item.toLowerCase().contains(query.toLowerCase())).toList();
    emit(results);
  }
}

void main() {
  runApp(
    BlocProvider(
      create: (_) => SearchCubit(),
      child: const MaterialApp(home: Scenario06Screen()),
    ),
  );
}

class Scenario06Screen extends StatelessWidget {
  const Scenario06Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 06: Debounced Search')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Search Technologies', prefixIcon: Icon(Icons.search)),
              onChanged: (q) => context.read<SearchCubit>().search(q),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: BlocBuilder<SearchCubit, List<String>>(
                builder: (context, results) {
                  if (results.isEmpty) {
                    return const Center(child: Text('No results found'));
                  }
                  return ListView.builder(
                    itemCount: results.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const Icon(Icons.code),
                        title: Text(results[index]),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
