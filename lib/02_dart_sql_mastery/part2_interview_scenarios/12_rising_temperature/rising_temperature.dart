/// Problem: #197 Rising Temperature
/// Difficulty: Easy
/// LeetCode Link: https://leetcode.com/problems/rising-temperature/

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 12: #197 Rising Temperature (Easy) ===\n');

  // TODO 1: Initialize required table schema
  db.execute('''
    CREATE TABLE IF NOT EXISTS SampleData_197 (id INTEGER PRIMARY KEY, val TEXT);
  ''');

  // TODO 2: Seed sample test data
  db.execute('''
    INSERT INTO SampleData_197 VALUES (1, 'Data A'), (2, 'Data B');
  ''');

  print('--- Sample Source Data ---');
  db.rawQueryAndPrint('SELECT * FROM SampleData_197;');

  // TODO 3: Write your raw SQL query to solve the scenario
  const sql = '''
    SELECT * FROM SampleData_197;
  ''';

  db.rawQueryAndPrint(sql, [], 'Scenario Solution Output');

  db.close();
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

LeetCode #197 — Rising Temperature
Refer to LeetCode: https://leetcode.com/problems/rising-temperature/

===============================================================================
*/
