/*
Scenario 09: Exporting 100,000 DB Records to CSV
Problem: Formatting 100,000 database objects into CSV strings locks UI.
Goal: Format and stream CSV export in background Isolate.
*/

import 'dart:isolate';

String exportToCsv(List<Map<String, dynamic>> records) {
  final sb = StringBuffer();
  sb.writeln('id,name,email,amount');
  for (final r in records) {
    sb.writeln('${r['id']},"${r['name']}","${r['email']}",${r['amount']}');
  }
  return sb.toString();
}

void main() async {
  print('=== Scenario 09: Exporting 100,000 DB Records to CSV ===\n');

  print('1. Generating 100,000 database row records...');
  final records = List.generate(100000, (i) => {
    'id': i + 1,
    'name': 'Customer #$i',
    'email': 'customer_$i@business.com',
    'amount': (i * 12.5) % 1000
  });

  print('2. Generating CSV string in background Isolate...');
  final stopwatch = Stopwatch()..start();

  final csvOutput = await Isolate.run(() => exportToCsv(records));

  stopwatch.stop();

  print('✅ Generated CSV Export! Total Length: ${csvOutput.length} characters');
  print('⏱️ CSV Generation Time: ${stopwatch.elapsedMilliseconds} ms');
}
