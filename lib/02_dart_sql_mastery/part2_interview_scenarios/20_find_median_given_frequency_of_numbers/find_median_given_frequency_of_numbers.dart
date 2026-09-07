/// Problem: #571 Find Median Given Frequency of Numbers
/// Difficulty: Hard
/// LeetCode Link: https://leetcode.com/problems/find-median-given-frequency-of-numbers/

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 20: #571 Find Median Given Frequency of Numbers (Hard) ===\n');

  // TODO 1: Initialize required table schema
  db.execute('''
    CREATE TABLE IF NOT EXISTS SampleData_571 (id INTEGER PRIMARY KEY, val TEXT);
  ''');

  // TODO 2: Seed sample test data
  db.execute('''
    INSERT INTO SampleData_571 VALUES (1, 'Data A'), (2, 'Data B');
  ''');

  print('--- Sample Source Data ---');
  db.rawQueryAndPrint('SELECT * FROM SampleData_571;');

  // TODO 3: Write your raw SQL query to solve the scenario
  const sql = '''
    SELECT * FROM SampleData_571;
  ''';

  db.rawQueryAndPrint(sql, [], 'Scenario Solution Output');

  db.close();
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

LeetCode #571 — Find Median Given Frequency of Numbers
Refer to LeetCode: https://leetcode.com/problems/find-median-given-frequency-of-numbers/

===============================================================================
*/
