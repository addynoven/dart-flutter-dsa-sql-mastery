import 'package:flutter/material.dart';
import '../../src/widgets/sql_ui_interactive_container.dart';
import 'project_employees_ii_widget.dart';

class ProjectEmployeesIi53Screen extends StatelessWidget {
  const ProjectEmployeesIi53Screen({super.key});

  static Future<List<Map<String, dynamic>>> _executeSql(String sql) async {
    await Future.delayed(const Duration(milliseconds: 100));
    return [
      {'id': 1, 'name': 'Sample Data A', 'value': 100},
      {'id': 2, 'name': 'Sample Data B', 'value': 200},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SqlUiInteractiveContainer(
      scenarioTitle: 'SQL Question #53: ProjectEmployeesIi',
      problemDescription: 'Fix the SQL query to transform the UI output.',
      initialBuggySql: 'SELECT * FROM TableName;',
      correctExpectedSqlHint: 'SELECT * FROM TableName ORDER BY id ASC;',
      solutionValidator: (data) => data.isNotEmpty,
      sqlExecutor: _executeSql,
      uiBuilder: (data, isCorrect) => ProjectEmployeesIi53Widget(records: data, isCorrect: isCorrect),
    );
  }
}
