/// Lesson 05: Provider & ChangeNotifierProvider
/// Concept: Simple reactive state management using ChangeNotifier and Consumer.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartNotifier extends ChangeNotifier {
  final List<String> _items = [];
  List<String> get items => List.unmodifiable(_items);

  void addItem(String item) {
    _items.add(item);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CartNotifier(),
      child: const MaterialApp(home: Lesson05Screen()),
    ),
  );
}

class Lesson05Screen extends StatelessWidget {
  const Lesson05Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 05: Provider & ChangeNotifier'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_sweep),
            onPressed: () => context.read<CartNotifier>().clearCart(),
          )
        ],
      ),
      body: Consumer<CartNotifier>(
        builder: (context, cart, child) {
          if (cart.items.isEmpty) {
            return const Center(child: Text('Your cart is empty!'));
          }
          return ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.shopping_bag),
                title: Text(cart.items[index]),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final count = context.read<CartNotifier>().items.length + 1;
          context.read<CartNotifier>().addItem('Item #$count');
        },
        child: const Icon(Icons.add_shopping_cart),
      ),
    );
  }
}
