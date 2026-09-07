/*
Scenario 03: Multi-Threaded Heavy Crypto Hashing
Problem: Generating cryptographic SHA-256 hashes for large password batches blocks UI animations.
Goal: Compute password hashes concurrently across background Isolates.
*/

import 'dart:convert';
import 'dart:isolate';
import 'package:crypto/crypto.dart';

String hashPassword(String password) {
  final bytes = utf8.encode(password + "_salt_key_123");
  var digest = sha256.convert(bytes);
  // Perform 1000 hashing rounds (Key Stretching)
  for (int i = 0; i < 1000; i++) {
    digest = sha256.convert(digest.bytes);
  }
  return digest.toString();
}

void main() async {
  print('=== Scenario 03: Heavy Crypto Hashing in Isolate ===\n');

  final passwords = List.generate(100, (i) => 'secret_password_$i');

  print('1. Hashing 100 passwords (1,000 SHA-256 rounds each) in Isolate...');
  final stopwatch = Stopwatch()..start();

  final hashes = await Isolate.run(() {
    return passwords.map((p) => hashPassword(p)).toList();
  });

  stopwatch.stop();

  print('✅ Hashed ${hashes.length} passwords successfully!');
  print('Sample Hash: ${hashes.first}');
  print('⏱️ Total Execution Time: ${stopwatch.elapsedMilliseconds} ms');
}
