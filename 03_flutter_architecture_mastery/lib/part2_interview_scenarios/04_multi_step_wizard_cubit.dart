/*
Scenario 04: Multi-Step Registration Wizard with Cubit
Problem: Manage multi-page form registration state (Personal Info -> Address -> Payment -> Summary) using Cubit.
*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WizardState {
  final int step;
  final String name;
  final String city;
  WizardState({this.step = 0, this.name = '', this.city = ''});

  WizardState copyWith({int? step, String? name, String? city}) {
    return WizardState(step: step ?? this.step, name: name ?? this.name, city: city ?? this.city);
  }
}

class WizardCubit extends Cubit<WizardState> {
  WizardCubit() : super(WizardState());

  void updateName(String name) => emit(state.copyWith(name: name));
  void updateCity(String city) => emit(state.copyWith(city: city));
  void nextStep() => emit(state.copyWith(step: state.step + 1));
  void prevStep() => emit(state.copyWith(step: state.step - 1));
}

void main() {
  runApp(
    BlocProvider(
      create: (_) => WizardCubit(),
      child: const MaterialApp(home: Scenario04Screen()),
    ),
  );
}

class Scenario04Screen extends StatelessWidget {
  const Scenario04Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 04: Form Wizard (Cubit)')),
      body: BlocBuilder<WizardCubit, WizardState>(
        builder: (context, state) {
          return Stepper(
            currentStep: state.step,
            onStepContinue: () {
              if (state.step < 2) context.read<WizardCubit>().nextStep();
            },
            onStepCancel: () {
              if (state.step > 0) context.read<WizardCubit>().prevStep();
            },
            steps: [
              Step(
                title: const Text('Personal Details'),
                content: TextField(
                  decoration: const InputDecoration(labelText: 'Full Name'),
                  onChanged: (v) => context.read<WizardCubit>().updateName(v),
                ),
                isActive: state.step >= 0,
              ),
              Step(
                title: const Text('Address Details'),
                content: TextField(
                  decoration: const InputDecoration(labelText: 'City'),
                  onChanged: (v) => context.read<WizardCubit>().updateCity(v),
                ),
                isActive: state.step >= 1,
              ),
              Step(
                title: const Text('Confirmation'),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name: ${state.name}'),
                    Text('City: ${state.city}'),
                  ],
                ),
                isActive: state.step >= 2,
              ),
            ],
          );
        },
      ),
    );
  }
}
