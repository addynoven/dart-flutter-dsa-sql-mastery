/*
Scenario 05: Widget Testing Alert Dialogs, SnackBar & Navigation
Problem: Verify that tapping a button shows AlertDialog and SnackBar notifications.
*/

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class DialogTestWidget extends StatelessWidget {
  const DialogTestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (ctx) => ElevatedButton(
            key: const Key('show_dialog_btn'),
            onPressed: () {
              showDialog(
                context: ctx,
                builder: (_) => AlertDialog(
                  title: const Text('Confirm Delete'),
                  actions: [
                    TextButton(
                      key: const Key('confirm_btn'),
                      onPressed: () {
                        Navigator.pop(ctx);
                        ScaffoldMessenger.of(ctx).showSnackBar(const SnackBar(content: Text('Item Deleted')));
                      },
                      child: const Text('Confirm'),
                    )
                  ],
                ),
              );
            },
            child: const Text('Delete Item'),
          ),
        ),
      ),
    );
  }
}

void main() {
  testWidgets('opens AlertDialog and shows SnackBar on confirm', (WidgetTester tester) async {
    await tester.pumpWidget(const DialogTestWidget());

    // Tap Delete Item button
    await tester.tap(find.byKey(const Key('show_dialog_btn')));
    await tester.pumpAndSettle();

    // Verify AlertDialog opened
    expect(find.text('Confirm Delete'), findsOneWidget);

    // Tap Confirm button in dialog
    await tester.tap(find.byKey(const Key('confirm_btn')));
    await tester.pumpAndSettle();

    // Verify SnackBar popped up
    expect(find.text('Item Deleted'), findsOneWidget);
  });
}
