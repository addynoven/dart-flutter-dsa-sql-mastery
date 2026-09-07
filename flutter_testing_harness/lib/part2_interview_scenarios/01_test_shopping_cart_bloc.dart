/*
Scenario 01: Unit Testing Shopping Cart BLoC Events & States
Problem: Verify that adding items and updating quantities in CartBloc emits the correct CartState values with totals.
*/

import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItem {
  final String id;
  final String name;
  final double price;
  final int quantity;
  CartItem({required this.id, required this.name, required this.price, required this.quantity});
}

abstract class CartEvent {}
class AddItemEvent extends CartEvent { final CartItem item; AddItemEvent(this.item); }

class CartState {
  final List<CartItem> items;
  CartState(this.items);
  double get total => items.fold(0, (sum, i) => sum + (i.price * i.quantity));
}

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState([])) {
    on<AddItemEvent>((event, emit) {
      emit(CartState([...state.items, event.item]));
    });
  }
}

void main() {
  group('CartBloc Unit Test Suite', () {
    blocTest<CartBloc, CartState>(
      'emits new CartState with item and correct total when AddItemEvent is added',
      build: () => CartBloc(),
      act: (bloc) => bloc.add(AddItemEvent(CartItem(id: '1', name: 'Laptop', price: 999.99, quantity: 1))),
      verify: (bloc) {
        expect(bloc.state.items.length, equals(1));
        expect(bloc.state.total, equals(999.99));
      },
    );
  });
}
