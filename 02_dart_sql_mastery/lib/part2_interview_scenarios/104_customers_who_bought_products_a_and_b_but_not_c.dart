/// Problem: #1398 Customers Who Bought Products A and B but Not C
/// Difficulty: Medium
/// LeetCode Link: https://leetcode.com/problems/customers-who-bought-products-a-and-b-but-not-c/

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 104: #1398 Customers Who Bought Products A and B but Not C (Medium) ===\n');

  // TODO 1: Initialize required table schema
  db.execute('''
    CREATE TABLE IF NOT EXISTS SampleData_1398 (id INTEGER PRIMARY KEY, val TEXT);
  ''');

  // TODO 2: Seed sample test data
  db.execute('''
    INSERT INTO SampleData_1398 VALUES (1, 'Data A'), (2, 'Data B');
  ''');

  print('--- Sample Source Data ---');
  db.rawQueryAndPrint('SELECT * FROM SampleData_1398;');

  // TODO 3: Write your raw SQL query to solve the scenario
  const sql = '''
    SELECT * FROM SampleData_1398;
  ''';

  db.rawQueryAndPrint(sql, [], 'Scenario Solution Output');

  db.close();
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

LeetCode #1398 — Customers Who Bought Products A and B but Not C
Refer to LeetCode: https://leetcode.com/problems/customers-who-bought-products-a-and-b-but-not-c/

===============================================================================
*/
