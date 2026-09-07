/*
Scenario 05: Real-Time Chat Stream & Message Buffering with BLoC
Problem: Handle live WebSocket / Stream chat updates with BLoC.
*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatMessage {
  final String text;
  final bool isUser;
  ChatMessage(this.text, this.isUser);
}

class ChatCubit extends Cubit<List<ChatMessage>> {
  ChatCubit() : super([ChatMessage('Hello! How can I help you today?', false)]);

  void sendMessage(String text) {
    if (text.isEmpty) return;
    emit([...state, ChatMessage(text, true)]);

    // Simulate automated bot response stream
    Future.delayed(const Duration(milliseconds: 800), () {
      emit([...state, ChatMessage('Received: "$text" (Bot Response)', false)]);
    });
  }
}

void main() {
  runApp(
    BlocProvider(
      create: (_) => ChatCubit(),
      child: const MaterialApp(home: Scenario05Screen()),
    ),
  );
}

class Scenario05Screen extends StatelessWidget {
  const Scenario05Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 05: Live Chat (BLoC/Cubit)')),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<ChatCubit, List<ChatMessage>>(
              builder: (context, messages) {
                return ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final msg = messages[index];
                    return Align(
                      alignment: msg.isUser ? Alignment.centerRight : Alignment.centerLeft,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: msg.isUser ? Colors.blue.shade100 : Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(msg.text),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: TextField(controller: controller, decoration: const InputDecoration(hintText: 'Type a message...'))),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    context.read<ChatCubit>().sendMessage(controller.text);
                    controller.clear();
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
