/// Problem: #1107 New Users Daily Count
/// Difficulty: Medium
/// LeetCode Link: https://leetcode.com/problems/new-users-daily-count/

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 60: #1107 New Users Daily Count (Medium) ===\n');

  // TODO 1: Initialize required table schema
  db.execute('''
    CREATE TABLE IF NOT EXISTS SampleData_1107 (id INTEGER PRIMARY KEY, val TEXT);
  ''');

  // TODO 2: Seed sample test data
  db.execute('''
    INSERT INTO SampleData_1107 VALUES (1, 'Data A'), (2, 'Data B');
  ''');

  print('--- Sample Source Data ---');
  db.rawQueryAndPrint('SELECT * FROM SampleData_1107;');

  // TODO 3: Write your raw SQL query to solve the scenario
  const sql = '''
    SELECT * FROM SampleData_1107;
  ''';

  db.rawQueryAndPrint(sql, [], 'Scenario Solution Output');

  db.close();
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

LeetCode #1107 — New Users Daily Count
Refer to LeetCode: https://leetcode.com/problems/new-users-daily-count/

===============================================================================
*/
