/// Problem: #595 Big Countries
/// Difficulty: Easy
/// LeetCode Link: https://leetcode.com/problems/big-countries/

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 29: #595 Big Countries (Easy) ===\n');

  // TODO 1: Initialize required table schema
  db.execute('''
    CREATE TABLE IF NOT EXISTS SampleData_595 (id INTEGER PRIMARY KEY, val TEXT);
  ''');

  // TODO 2: Seed sample test data
  db.execute('''
    INSERT INTO SampleData_595 VALUES (1, 'Data A'), (2, 'Data B');
  ''');

  print('--- Sample Source Data ---');
  db.rawQueryAndPrint('SELECT * FROM SampleData_595;');

  // TODO 3: Write your raw SQL query to solve the scenario
  const sql = '''
    SELECT * FROM SampleData_595;
  ''';

  db.rawQueryAndPrint(sql, [], 'Scenario Solution Output');

  db.close();
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Table: World

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |
+-------------+---------+
name is the primary key (column with unique values) for this table.
Each row of this table gives information about the name of a country, the continent to which it belongs, its area, the population, and its GDP value.

A country is big if:

	it has an area of at least three million (i.e., 3000000 km2), or
	it has a population of at least twenty-five million (i.e., 25000000).

Write a solution to find the name, population, and area of the big countries.

Return the result table in any order.

The result format is in the following example.

Example 1:

Input: 
World table:
+-------------+-----------+---------+------------+--------------+
| name        | continent | area    | population | gdp          |
+-------------+-----------+---------+------------+--------------+
| Afghanistan | Asia      | 652230  | 25500100   | 20343000000  |
| Albania     | Europe    | 28748   | 2831741    | 12960000000  |
| Algeria     | Africa    | 2381741 | 37100000   | 188681000000 |
| Andorra     | Europe    | 468     | 78115      | 3712000000   |
| Angola      | Africa    | 1246700 | 20609294   | 100990000000 |
+-------------+-----------+---------+------------+--------------+
Output: 
+-------------+------------+---------+
| name        | population | area    |
+-------------+------------+---------+
| Afghanistan | 25500100   | 652230  |
| Algeria     | 37100000   | 2381741 |
+-------------+------------+---------+

===============================================================================
*/
