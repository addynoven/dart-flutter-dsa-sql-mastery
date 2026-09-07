/*
Lesson 03: Riverpod Providers & StateNotifierProvider
Concept: Compile-safe reactive dependency injection and state management with Riverpod.
*/

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// --- STATE ---
class TodoItem {
  final String id;
  final String title;
  final bool isCompleted;
  TodoItem({required this.id, required this.title, this.isCompleted = false});

  TodoItem copyWith({bool? isCompleted}) {
    return TodoItem(id: id, title: title, isCompleted: isCompleted ?? this.isCompleted);
  }
}

// --- STATE NOTIFIER ---
class TodoListNotifier extends StateNotifier<List<TodoItem>> {
  TodoListNotifier() : super([
    TodoItem(id: '1', title: 'Learn Riverpod Providers'),
    TodoItem(id: '2', title: 'Build Flutter App'),
  ]);

  void addTodo(String title) {
    state = [...state, TodoItem(id: DateTime.now().toString(), title: title)];
  }

  void toggleTodo(String id) {
    state = [
      for (final todo in state)
        if (todo.id == id) todo.copyWith(isCompleted: !todo.isCompleted) else todo
    ];
  }
}

// --- PROVIDER ---
final todoListProvider = StateNotifierProvider<TodoListNotifier, List<TodoItem>>((ref) {
  return TodoListNotifier();
});

void main() {
  runApp(const ProviderScope(child: MaterialApp(home: Lesson03Screen())));
}

class Lesson03Screen extends ConsumerWidget {
  const Lesson03Screen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todoListProvider);
    final controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Lesson 03: Riverpod Providers')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(child: TextField(controller: controller, decoration: const InputDecoration(labelText: 'New Todo'))),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    if (controller.text.isNotEmpty) {
                      ref.read(todoListProvider.notifier).addTodo(controller.text);
                      controller.clear();
                    }
                  },
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];
                return CheckboxListTile(
                  title: Text(todo.title, style: TextStyle(decoration: todo.isCompleted ? TextDecoration.lineThrough : null)),
                  value: todo.isCompleted,
                  onChanged: (_) => ref.read(todoListProvider.notifier).toggleTodo(todo.id),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
