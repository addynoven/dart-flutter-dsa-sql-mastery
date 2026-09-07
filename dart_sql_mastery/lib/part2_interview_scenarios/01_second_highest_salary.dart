/// Problem: Second Highest Salary (LeetCode #176)
/// Scenario: Write a SQL query to report the second highest salary from the Employee table.
/// If there is no second highest salary, the query should report NULL.

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 01: Second Highest Salary (LeetCode #176) ===\n');

  db.execute('''
    CREATE TABLE Employee (
      id INTEGER PRIMARY KEY,
      salary INTEGER
    );
  ''');

  db.execute("INSERT INTO Employee VALUES (1, 100), (2, 200), (3, 300);");

  print('--- Employee Table ---');
  db.rawQueryAndPrint('SELECT * FROM Employee;');

  // TODO: Write your SQL query to select the second highest salary as "SecondHighestSalary"
  const sql = '''
    SELECT (
      SELECT DISTINCT salary
      FROM Employee
      ORDER BY salary DESC
      LIMIT 1 OFFSET 1
    ) AS SecondHighestSalary;
  ''';

  db.rawQueryAndPrint(sql, [], 'Query Result (SecondHighestSalary)');

  db.close();
}
