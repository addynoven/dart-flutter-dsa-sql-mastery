import 'package:flutter/material.dart';
  import '../../widgets/coming_soon_view.dart';

  class ModalDialogScreen extends StatelessWidget {
    const ModalDialogScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return const ComingSoonView(title: 'Modal Dialog');
    }
  }
