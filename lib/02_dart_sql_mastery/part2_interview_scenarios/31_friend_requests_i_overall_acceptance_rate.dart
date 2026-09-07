/// Problem: #597 Friend Requests I: Overall Acceptance Rate
/// Difficulty: Easy
/// LeetCode Link: https://leetcode.com/problems/friend-requests-i-overall-acceptance-rate/

import '../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 31: #597 Friend Requests I: Overall Acceptance Rate (Easy) ===\n');

  // TODO 1: Initialize required table schema
  db.execute('''
    CREATE TABLE IF NOT EXISTS SampleData_597 (id INTEGER PRIMARY KEY, val TEXT);
  ''');

  // TODO 2: Seed sample test data
  db.execute('''
    INSERT INTO SampleData_597 VALUES (1, 'Data A'), (2, 'Data B');
  ''');

  print('--- Sample Source Data ---');
  db.rawQueryAndPrint('SELECT * FROM SampleData_597;');

  // TODO 3: Write your raw SQL query to solve the scenario
  const sql = '''
    SELECT * FROM SampleData_597;
  ''';

  db.rawQueryAndPrint(sql, [], 'Scenario Solution Output');

  db.close();
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

LeetCode #597 — Friend Requests I: Overall Acceptance Rate
Refer to LeetCode: https://leetcode.com/problems/friend-requests-i-overall-acceptance-rate/

===============================================================================
*/
