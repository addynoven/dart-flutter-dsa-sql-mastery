/// Problem: #586 Customer Placing the Largest Number of Orders
/// Difficulty: Easy
/// LeetCode Link: https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/

import '../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 28: #586 Customer Placing the Largest Number of Orders (Easy) ===\n');

  // TODO 1: Initialize required table schema
  db.execute('''
    CREATE TABLE IF NOT EXISTS SampleData_586 (id INTEGER PRIMARY KEY, val TEXT);
  ''');

  // TODO 2: Seed sample test data
  db.execute('''
    INSERT INTO SampleData_586 VALUES (1, 'Data A'), (2, 'Data B');
  ''');

  print('--- Sample Source Data ---');
  db.rawQueryAndPrint('SELECT * FROM SampleData_586;');

  // TODO 3: Write your raw SQL query to solve the scenario
  const sql = '''
    SELECT * FROM SampleData_586;
  ''';

  db.rawQueryAndPrint(sql, [], 'Scenario Solution Output');

  db.close();
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

LeetCode #586 — Customer Placing the Largest Number of Orders
Refer to LeetCode: https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/

===============================================================================
*/
