import 'package:flutter/material.dart';

class PassMessageScreen extends StatefulWidget {
  const PassMessageScreen({super.key});

  @override
  State<PassMessageScreen> createState() => _PassMessageScreenState();
}

class _PassMessageScreenState extends State<PassMessageScreen> {
  String _message = 'No message yet';

  final TextEditingController _messageController = TextEditingController();

  void _submitMessage() {
    setState(() {
      _message = _messageController.text;
    });
    _messageController.clear();
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pass Message')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _messageController,
              decoration: InputDecoration(
                labelText: 'Enter a message',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _submitMessage(),
              child: const Text('Submit'),
            ),
            const SizedBox(height: 20),
            Text('Your Message: ', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            Text(
              _message,
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
