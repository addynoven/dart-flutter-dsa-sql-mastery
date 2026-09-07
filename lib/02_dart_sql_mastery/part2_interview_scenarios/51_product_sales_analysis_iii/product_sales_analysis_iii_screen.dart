import 'package:flutter/material.dart';
import '../../src/widgets/sql_ui_interactive_container.dart';
import 'product_sales_analysis_iii_widget.dart';

class ProductSalesAnalysisIii51Screen extends StatelessWidget {
  const ProductSalesAnalysisIii51Screen({super.key});

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
      scenarioTitle: 'SQL Question #51: ProductSalesAnalysisIii',
      problemDescription: 'Fix the SQL query to transform the UI output.',
      initialBuggySql: 'SELECT * FROM TableName;',
      correctExpectedSqlHint: 'SELECT * FROM TableName ORDER BY id ASC;',
      solutionValidator: (data) => data.isNotEmpty,
      sqlExecutor: _executeSql,
      uiBuilder: (data, isCorrect) => ProductSalesAnalysisIii51Widget(records: data, isCorrect: isCorrect),
    );
  }
}
