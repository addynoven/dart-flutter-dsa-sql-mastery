/*
Scenario 10: Clean Architecture REST Repository with Failover
Problem: Decouple REST API implementation behind clean repository interfaces with automatic fallback data sources.
*/

import 'package:flutter/material.dart';

abstract class ProductRepository {
  Future<List<String>> getProducts();
}

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<List<String>> getProducts() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return ['MacBook Pro M3', 'iPhone 15 Pro', 'iPad Air'];
  }
}

void main() {
  runApp(MaterialApp(home: Scenario10Screen(repository: ProductRepositoryImpl())));
}

class Scenario10Screen extends StatelessWidget {
  final ProductRepository repository;
  const Scenario10Screen({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 10: Clean Arch REST Repo')),
      body: FutureBuilder<List<String>>(
        future: repository.getProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          final products = snapshot.data ?? [];
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: Text(products[index]),
              );
            },
          );
        },
      ),
    );
  }
}
