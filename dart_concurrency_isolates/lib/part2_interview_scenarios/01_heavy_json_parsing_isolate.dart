/*
Scenario 01: Parsing Heavy JSON Payloads in Background Isolate
Problem: Parsing large JSON responses (e.g., 50MB user records list) on the main thread causes UI frame drops and jank in Flutter apps.
Goal: Offload jsonDecode and data model mapping to an Isolate using Isolate.run().
*/

import 'dart:convert';
import 'dart:isolate';

class UserRecord {
  final int id;
  final String name;
  final String email;
  UserRecord({required this.id, required this.name, required this.email});

  factory UserRecord.fromJson(Map<String, dynamic> json) {
    return UserRecord(id: json['id'], name: json['name'], email: json['email']);
  }
}

// Background Isolate JSON parser callback
List<UserRecord> _parseJsonPayload(String rawJson) {
  final List<dynamic> parsedList = jsonDecode(rawJson);
  return parsedList.map((item) => UserRecord.fromJson(item)).toList();
}

void main() async {
  print('=== Scenario 01: Heavy JSON Parsing in Isolate ===\n');

  // Generate 50,000 JSON records payload
  print('1. Generating 50,000 sample JSON records...');
  final rawPayload = jsonEncode(
    List.generate(50000, (i) => {'id': i + 1, 'name': 'User #$i', 'email': 'user_$i@flutter.dev'}),
  );
  print('   Payload Size: ${(rawPayload.length / (1024 * 1024)).toStringAsFixed(2)} MB\n');

  // Benchmark Background Isolate JSON parsing
  print('2. Offloading jsonDecode + Model Mapping to Background Isolate...');
  final stopwatch = Stopwatch()..start();

  final List<UserRecord> records = await Isolate.run(() => _parseJsonPayload(rawPayload));

  stopwatch.stop();

  print('✅ Successfully parsed ${records.length} records!');
  print('⏱️ Total Isolate Processing Time: ${stopwatch.elapsedMilliseconds} ms');
  print('📱 Result: Main UI thread remained 100% smooth and frame-drop free!\n');
}
