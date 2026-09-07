/*
Lesson 01: Unit Testing Basics & Matchers
Concept: test(), group(), expect(), and matchers (equals, contains, isTrue, throwsA).
*/

import 'package:flutter_test/flutter_test.dart';

// Code under test: Price Calculator Utility
class PriceCalculator {
  static double calculateTotal(double price, int quantity, {double discountPercent = 0.0}) {
    if (price < 0 || quantity < 0) {
      throw ArgumentError('Price and quantity cannot be negative');
    }
    final subtotal = price * quantity;
    final discount = subtotal * (discountPercent / 100);
    return subtotal - discount;
  }
}

void main() {
  group('PriceCalculator Unit Tests', () {
    test('calculates correct total without discount', () {
      final total = PriceCalculator.calculateTotal(29.99, 2);
      expect(total, equals(59.98));
    });

    test('calculates correct total with 20% discount', () {
      final total = PriceCalculator.calculateTotal(100.0, 2, discountPercent: 20.0);
      expect(total, equals(160.0));
    });

    test('throws ArgumentError on negative price or quantity', () {
      expect(
        () => PriceCalculator.calculateTotal(-10.0, 2),
        throwsA(isA<ArgumentError>()),
      );
    });
  });
}
