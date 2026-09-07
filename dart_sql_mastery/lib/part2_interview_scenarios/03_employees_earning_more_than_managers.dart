/// Problem: Employees Earning More Than Their Managers (LeetCode #181)
/// Scenario: Write a SQL query to find the employees who earn more than their managers.

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 03: Employees Earning More Than Managers (LeetCode #181) ===\n');

  db.execute('''
    CREATE TABLE Employee (
      id INTEGER PRIMARY KEY,
      name TEXT,
      salary INTEGER,
      managerId INTEGER
    );
  ''');

  db.execute('''
    INSERT INTO Employee VALUES
    (1, 'Joe', 70000, 3),
    (2, 'Henry', 80000, 4),
    (3, 'Sam', 60000, NULL),
    (4, 'Max', 90000, NULL);
  ''');

  print('--- Employee Table ---');
  db.rawQueryAndPrint('SELECT * FROM Employee;');

  // TODO: Write a Self-Join SQL query to find employees earning more than their manager AS "Employee"
  const sql = '''
    SELECT e.name AS Employee
    FROM Employee e
    JOIN Employee m ON e.managerId = m.id
    WHERE e.salary > m.salary;
  ''';

  db.rawQueryAndPrint(sql, [], 'Employees Earning More Than Managers');

  db.close();
}
