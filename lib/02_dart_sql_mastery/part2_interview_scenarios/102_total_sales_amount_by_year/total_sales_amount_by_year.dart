/// Problem: #1384 Total Sales Amount by Year
/// Difficulty: Hard
/// LeetCode Link: https://leetcode.com/problems/total-sales-amount-by-year/

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 102: #1384 Total Sales Amount by Year (Hard) ===\n');

  // TODO 1: Initialize required table schema
  db.execute('''
    CREATE TABLE IF NOT EXISTS SampleData_1384 (id INTEGER PRIMARY KEY, val TEXT);
  ''');

  // TODO 2: Seed sample test data
  db.execute('''
    INSERT INTO SampleData_1384 VALUES (1, 'Data A'), (2, 'Data B');
  ''');

  print('--- Sample Source Data ---');
  db.rawQueryAndPrint('SELECT * FROM SampleData_1384;');

  // TODO 3: Write your raw SQL query to solve the scenario
  const sql = '''
    SELECT * FROM SampleData_1384;
  ''';

  db.rawQueryAndPrint(sql, [], 'Scenario Solution Output');

  db.close();
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

LeetCode #1384 — Total Sales Amount by Year
Refer to LeetCode: https://leetcode.com/problems/total-sales-amount-by-year/

===============================================================================
*/
