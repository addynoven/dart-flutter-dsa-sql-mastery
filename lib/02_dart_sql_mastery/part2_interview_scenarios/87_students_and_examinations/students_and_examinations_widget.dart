import 'package:flutter/material.dart';

class StudentsAndExaminations87Widget extends StatelessWidget {
  final List<Map<String, dynamic>> records;
  final bool isCorrect;

  const StudentsAndExaminations87Widget({
    super.key,
    required this.records,
    required this.isCorrect,
  });

  @override
  Widget build(BuildContext context) {
    if (records.isEmpty) {
      return const Center(child: Text('No records returned from SQL query.'));
    }

    final columns = records.first.keys.toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Icon(isCorrect ? Icons.check_circle : Icons.warning, color: isCorrect ? Colors.green : Colors.orange),
              const SizedBox(width: 8),
              Text(
                isCorrect ? '✅ Scenario UI Output Validated!' : '⚠️ UI Bug Detected: Fix SQL below!',
                style: TextStyle(fontWeight: FontWeight.bold, color: isCorrect ? Colors.green.shade800 : Colors.orange.shade900),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: columns.map((col) => DataColumn(label: Text(col, style: const TextStyle(fontWeight: FontWeight.bold)))).toList(),
                rows: records.map((row) {
                  return DataRow(
                    cells: columns.map((col) => DataCell(Text('${row[col]}'))).toList(),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
