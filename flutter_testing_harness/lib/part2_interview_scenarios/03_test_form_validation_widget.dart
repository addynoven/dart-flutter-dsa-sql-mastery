/*
Scenario 03: Widget Testing Multi-Field Form Validation UI
Problem: Test a Form widget to ensure validation error messages appear when user inputs invalid data.
*/

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                key: const Key('email_field'),
                controller: _emailController,
                validator: (val) => val == null || !val.contains('@') ? 'Invalid Email' : null,
              ),
              ElevatedButton(
                key: const Key('submit_btn'),
                onPressed: () => _formKey.currentState!.validate(),
                child: const Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  testWidgets('shows validation error when email is invalid', (WidgetTester tester) async {
    await tester.pumpWidget(const LoginFormWidget());

    // Enter invalid email
    await tester.enterText(find.byKey(const Key('email_field')), 'invalid-email');
    await tester.tap(find.byKey(const Key('submit_btn')));
    await tester.pumpAndSettle();

    // Verify error message is visible
    expect(find.text('Invalid Email'), findsOneWidget);
  });
}
