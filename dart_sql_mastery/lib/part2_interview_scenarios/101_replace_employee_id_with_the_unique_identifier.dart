/// Problem: #1378 Replace Employee ID With The Unique Identifier
/// Difficulty: Easy
/// LeetCode Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 101: #1378 Replace Employee ID With The Unique Identifier (Easy) ===\n');

  // TODO 1: Initialize required table schema
  db.execute('''
    CREATE TABLE IF NOT EXISTS SampleData_1378 (id INTEGER PRIMARY KEY, val TEXT);
  ''');

  // TODO 2: Seed sample test data
  db.execute('''
    INSERT INTO SampleData_1378 VALUES (1, 'Data A'), (2, 'Data B');
  ''');

  print('--- Sample Source Data ---');
  db.rawQueryAndPrint('SELECT * FROM SampleData_1378;');

  // TODO 3: Write your raw SQL query to solve the scenario
  const sql = '''
    SELECT * FROM SampleData_1378;
  ''';

  db.rawQueryAndPrint(sql, [], 'Scenario Solution Output');

  db.close();
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

LeetCode #1378 — Replace Employee ID With The Unique Identifier
Refer to LeetCode: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

===============================================================================
*/
