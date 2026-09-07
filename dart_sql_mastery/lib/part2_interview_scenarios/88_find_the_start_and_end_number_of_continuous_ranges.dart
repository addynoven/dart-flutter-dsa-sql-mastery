/// Problem: #1285 Find the Start and End Number of Continuous Ranges
/// Difficulty: Medium
/// LeetCode Link: https://leetcode.com/problems/find-the-start-and-end-number-of-continuous-ranges/

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 88: #1285 Find the Start and End Number of Continuous Ranges (Medium) ===\n');

  // TODO 1: Initialize required table schema
  db.execute('''
    CREATE TABLE IF NOT EXISTS SampleData_1285 (id INTEGER PRIMARY KEY, val TEXT);
  ''');

  // TODO 2: Seed sample test data
  db.execute('''
    INSERT INTO SampleData_1285 VALUES (1, 'Data A'), (2, 'Data B');
  ''');

  print('--- Sample Source Data ---');
  db.rawQueryAndPrint('SELECT * FROM SampleData_1285;');

  // TODO 3: Write your raw SQL query to solve the scenario
  const sql = '''
    SELECT * FROM SampleData_1285;
  ''';

  db.rawQueryAndPrint(sql, [], 'Scenario Solution Output');

  db.close();
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

LeetCode #1285 — Find the Start and End Number of Continuous Ranges
Refer to LeetCode: https://leetcode.com/problems/find-the-start-and-end-number-of-continuous-ranges/

===============================================================================
*/
