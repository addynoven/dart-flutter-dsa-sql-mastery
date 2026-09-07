import 'package:flutter/material.dart';
import '../../src/widgets/sql_ui_interactive_container.dart';
import 'customers_who_bought_all_products_widget.dart';

class CustomersWhoBoughtAllProducts47Screen extends StatelessWidget {
  const CustomersWhoBoughtAllProducts47Screen({super.key});

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
      scenarioTitle: 'SQL Question #47: CustomersWhoBoughtAllProducts',
      problemDescription: 'Fix the SQL query to transform the UI output.',
      initialBuggySql: 'SELECT * FROM TableName;',
      correctExpectedSqlHint: 'SELECT * FROM TableName ORDER BY id ASC;',
      solutionValidator: (data) => data.isNotEmpty,
      sqlExecutor: _executeSql,
      uiBuilder: (data, isCorrect) => CustomersWhoBoughtAllProducts47Widget(records: data, isCorrect: isCorrect),
    );
  }
}
