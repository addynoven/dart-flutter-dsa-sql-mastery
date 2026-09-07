/*
Scenario 01: Multi-Item Shopping Cart with BLoC
Problem: Build an e-commerce shopping cart using BLoC that manages product selection, quantity increment/decrement, and live price total calculation.
*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItem {
  final String id;
  final String name;
  final double price;
  final int quantity;

  CartItem({required this.id, required this.name, required this.price, required this.quantity});

  CartItem copyWith({int? quantity}) {
    return CartItem(id: id, name: name, price: price, quantity: quantity ?? this.quantity);
  }
}

// --- EVENTS ---
abstract class CartEvent {}
class AddItemEvent extends CartEvent { final CartItem item; AddItemEvent(this.item); }
class RemoveItemEvent extends CartEvent { final String id; RemoveItemEvent(this.id); }
class UpdateQuantityEvent extends CartEvent { final String id; final int delta; UpdateQuantityEvent(this.id, this.delta); }

// --- STATE ---
class CartState {
  final List<CartItem> items;
  CartState({required this.items});

  double get totalPrice => items.fold(0, (sum, item) => sum + (item.price * item.quantity));
  int get totalCount => items.fold(0, (sum, item) => sum + item.quantity);
}

// --- BLOC ---
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState(items: [])) {
    on<AddItemEvent>((event, emit) {
      final existingIndex = state.items.indexWhere((i) => i.id == event.item.id);
      if (existingIndex != -1) {
        final updated = List<CartItem>.from(state.items);
        final item = updated[existingIndex];
        updated[existingIndex] = item.copyWith(quantity: item.quantity + 1);
        emit(CartState(items: updated));
      } else {
        emit(CartState(items: [...state.items, event.item]));
      }
    });

    on<UpdateQuantityEvent>((event, emit) {
      final updated = <CartItem>[];
      for (final item in state.items) {
        if (item.id == event.id) {
          final newQty = item.quantity + event.delta;
          if (newQty > 0) updated.add(item.copyWith(quantity: newQty));
        } else {
          updated.add(item);
        }
      }
      emit(CartState(items: updated));
    });
  }
}

void main() {
  runApp(
    BlocProvider(
      create: (_) => CartBloc(),
      child: const MaterialApp(home: Scenario01Screen()),
    ),
  );
}

class Scenario01Screen extends StatelessWidget {
  const Scenario01Screen({super.key});

  static final catalog = [
    CartItem(id: '1', name: 'Flutter T-Shirt', price: 29.99, quantity: 1),
    CartItem(id: '2', name: 'Dart Hoodie', price: 59.99, quantity: 1),
    CartItem(id: '3', name: 'Developer Mug', price: 14.99, quantity: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scenario 01: Shopping Cart (BLoC)'),
        actions: [
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return Badge(
                label: Text('${state.totalCount}'),
                child: const Icon(Icons.shopping_cart),
              );
            },
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text('Product Catalog', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: catalog.length,
              itemBuilder: (context, index) {
                final product = catalog[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                        Text('\$${product.price}'),
                        ElevatedButton(
                          onPressed: () => context.read<CartBloc>().add(AddItemEvent(product)),
                          child: const Text('Add to Cart'),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const Divider(),
          const Text('Your Cart', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Expanded(
            child: BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                if (state.items.isEmpty) {
                  return const Center(child: Text('Cart is empty'));
                }
                return ListView.builder(
                  itemCount: state.items.length,
                  itemBuilder: (context, index) {
                    final item = state.items[index];
                    return ListTile(
                      title: Text(item.name),
                      subtitle: Text('\$${item.price} x ${item.quantity} = \$${(item.price * item.quantity).toStringAsFixed(2)}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove_circle_outline),
                            onPressed: () => context.read<CartBloc>().add(UpdateQuantityEvent(item.id, -1)),
                          ),
                          Text('${item.quantity}'),
                          IconButton(
                            icon: const Icon(Icons.add_circle_outline),
                            onPressed: () => context.read<CartBloc>().add(UpdateQuantityEvent(item.id, 1)),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.blue.shade50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Total:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) {
                    return Text('\$${state.totalPrice.toStringAsFixed(2)}', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
