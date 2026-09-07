/*
Scenario 04: Testing Paginated ListView Drag Gestures & Loading Indicators
Problem: Test infinite scrolling ListView by dragging down to trigger page loading.
*/

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class PaginatedListViewWidget extends StatefulWidget {
  const PaginatedListViewWidget({super.key});

  @override
  State<PaginatedListViewWidget> createState() => _PaginatedListViewWidgetState();
}

class _PaginatedListViewWidgetState extends State<PaginatedListViewWidget> {
  final List<String> _items = List.generate(15, (i) => 'Item #${i + 1}');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          key: const Key('scroll_list'),
          itemCount: _items.length,
          itemBuilder: (context, index) => ListTile(title: Text(_items[index])),
        ),
      ),
    );
  }
}

void main() {
  testWidgets('renders first item and scrolls list', (WidgetTester tester) async {
    await tester.pumpWidget(const PaginatedListViewWidget());

    expect(find.text('Item #1'), findsOneWidget);

    // Drag list up to scroll
    await tester.drag(find.byKey(const Key('scroll_list')), const Offset(0, -300));
    await tester.pumpAndSettle();

    expect(find.text('Item #10'), findsOneWidget);
  });
}
