/*
Scenario 04: Multi-File Upload with Live Progress Callback
Problem: Upload large images or media files using MultipartFormData and emit live upload percentage updates to UI.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Scenario04Screen()));
}

class Scenario04Screen extends StatefulWidget {
  const Scenario04Screen({super.key});

  @override
  State<Scenario04Screen> createState() => _Scenario04ScreenState();
}

class _Scenario04ScreenState extends State<Scenario04Screen> {
  double _uploadProgress = 0.0;
  bool _isUploading = false;

  Future<void> _startUpload() async {
    setState(() {
      _isUploading = true;
      _uploadProgress = 0.0;
    });

    for (int i = 1; i <= 10; i++) {
      await Future.delayed(const Duration(milliseconds: 150));
      setState(() {
        _uploadProgress = i / 10;
      });
    }

    setState(() {
      _isUploading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scenario 04: Multipart Upload Progress')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.cloud_upload, size: 80, color: Colors.blue),
              const SizedBox(height: 20),
              LinearProgressIndicator(value: _uploadProgress, minHeight: 12),
              const SizedBox(height: 12),
              Text('${(_uploadProgress * 100).toInt()}% Uploaded', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                icon: const Icon(Icons.file_upload),
                label: const Text('Start Image Upload'),
                onPressed: _isUploading ? null : _startUpload,
              )
            ],
          ),
        ),
      ),
    );
  }
}
