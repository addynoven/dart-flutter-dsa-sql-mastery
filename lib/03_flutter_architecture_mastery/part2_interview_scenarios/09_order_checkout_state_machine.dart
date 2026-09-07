/*
Scenario 09: Order Checkout State Machine with Cubit
Problem: Manage complex multi-state order checkout (Idle -> Processing -> PaymentSuccess -> Failed) using Cubit.
*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum CheckoutStatus { idle, processing, success, failed }

class CheckoutState {
  final CheckoutStatus status;
  final String? errorMessage;
  CheckoutState({this.status = CheckoutStatus.idle, this.errorMessage});
}

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit() : super(CheckoutState());

  void processPayment(bool shouldSucceed) async {
    emit(CheckoutState(status: CheckoutStatus.processing));
    await Future.delayed(const Duration(seconds: 1));
    if (shouldSucceed) {
      emit(CheckoutState(status: CheckoutStatus.success));
    } else {
      emit(CheckoutState(status: CheckoutStatus.failed, errorMessage: 'Payment Declined by Bank'));
    }
  }

  void reset() => emit(CheckoutState(status: CheckoutStatus.idle));
}

void main() {
  runApp(
    BlocProvider(
      create: (_) => CheckoutCubit(),
      child: const MaterialApp(home: Scenario09Screen()),
    ),
  );
}

class Scenario09Screen extends StatelessWidget {
  const Scenario09Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 09: Order Checkout')),
      body: BlocBuilder<CheckoutCubit, CheckoutState>(
        builder: (context, state) {
          if (state.status == CheckoutStatus.processing) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.status == CheckoutStatus.success) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.check_circle, size: 80, color: Colors.green),
                  const SizedBox(height: 16),
                  const Text('Payment Successful!', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => context.read<CheckoutCubit>().reset(),
                    child: const Text('New Order'),
                  )
                ],
              ),
            );
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (state.status == CheckoutStatus.failed) ...[
                  Text('Error: ${state.errorMessage}', style: const TextStyle(color: Colors.red, fontSize: 16)),
                  const SizedBox(height: 20),
                ],
                ElevatedButton.icon(
                  onPressed: () => context.read<CheckoutCubit>().processPayment(true),
                  icon: const Icon(Icons.payment),
                  label: const Text('Pay \$99.00 (Success Test)'),
                ),
                const SizedBox(height: 12),
                OutlinedButton.icon(
                  onPressed: () => context.read<CheckoutCubit>().processPayment(false),
                  icon: const Icon(Icons.error_outline),
                  label: const Text('Pay \$99.00 (Failure Test)'),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
