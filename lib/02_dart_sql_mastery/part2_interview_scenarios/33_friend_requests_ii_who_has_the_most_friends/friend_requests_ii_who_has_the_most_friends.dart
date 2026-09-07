/// Problem: #602 Friend Requests II: Who Has the Most Friends
/// Difficulty: Medium
/// LeetCode Link: https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 33: #602 Friend Requests II: Who Has the Most Friends (Medium) ===\n');

  // TODO 1: Initialize required table schema
  db.execute('''
    CREATE TABLE IF NOT EXISTS SampleData_602 (id INTEGER PRIMARY KEY, val TEXT);
  ''');

  // TODO 2: Seed sample test data
  db.execute('''
    INSERT INTO SampleData_602 VALUES (1, 'Data A'), (2, 'Data B');
  ''');

  print('--- Sample Source Data ---');
  db.rawQueryAndPrint('SELECT * FROM SampleData_602;');

  // TODO 3: Write your raw SQL query to solve the scenario
  const sql = '''
    SELECT * FROM SampleData_602;
  ''';

  db.rawQueryAndPrint(sql, [], 'Scenario Solution Output');

  db.close();
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

LeetCode #602 — Friend Requests II: Who Has the Most Friends
Refer to LeetCode: https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/

===============================================================================
*/
