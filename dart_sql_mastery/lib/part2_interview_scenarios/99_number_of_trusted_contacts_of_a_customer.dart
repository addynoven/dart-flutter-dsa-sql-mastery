/// Problem: #1364 Number of Trusted Contacts of a Customer
/// Difficulty: Medium
/// LeetCode Link: https://leetcode.com/problems/number-of-trusted-contacts-of-a-customer/

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 99: #1364 Number of Trusted Contacts of a Customer (Medium) ===\n');

  // TODO 1: Initialize required table schema
  db.execute('''
    CREATE TABLE IF NOT EXISTS SampleData_1364 (id INTEGER PRIMARY KEY, val TEXT);
  ''');

  // TODO 2: Seed sample test data
  db.execute('''
    INSERT INTO SampleData_1364 VALUES (1, 'Data A'), (2, 'Data B');
  ''');

  print('--- Sample Source Data ---');
  db.rawQueryAndPrint('SELECT * FROM SampleData_1364;');

  // TODO 3: Write your raw SQL query to solve the scenario
  const sql = '''
    SELECT * FROM SampleData_1364;
  ''';

  db.rawQueryAndPrint(sql, [], 'Scenario Solution Output');

  db.close();
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

LeetCode #1364 — Number of Trusted Contacts of a Customer
Refer to LeetCode: https://leetcode.com/problems/number-of-trusted-contacts-of-a-customer/

===============================================================================
*/
