/// Problem: #1205 Monthly Transactions II
/// Difficulty: Medium
/// LeetCode Link: https://leetcode.com/problems/monthly-transactions-ii/

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 79: #1205 Monthly Transactions II (Medium) ===\n');

  // TODO 1: Initialize required table schema
  db.execute('''
    CREATE TABLE IF NOT EXISTS SampleData_1205 (id INTEGER PRIMARY KEY, val TEXT);
  ''');

  // TODO 2: Seed sample test data
  db.execute('''
    INSERT INTO SampleData_1205 VALUES (1, 'Data A'), (2, 'Data B');
  ''');

  print('--- Sample Source Data ---');
  db.rawQueryAndPrint('SELECT * FROM SampleData_1205;');

  // TODO 3: Write your raw SQL query to solve the scenario
  const sql = '''
    SELECT * FROM SampleData_1205;
  ''';

  db.rawQueryAndPrint(sql, [], 'Scenario Solution Output');

  db.close();
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

LeetCode #1205 — Monthly Transactions II
Refer to LeetCode: https://leetcode.com/problems/monthly-transactions-ii/

===============================================================================
*/
