/// Problem: Department Highest Salary (LeetCode #184)
/// Scenario: Write a SQL query to find employees who have the highest salary in each of the departments.

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 06: Department Highest Salary (LeetCode #184) ===\n');

  db.execute('''
    CREATE TABLE Department (
      id INTEGER PRIMARY KEY,
      name TEXT
    );
  ''');

  db.execute('''
    CREATE TABLE Employee (
      id INTEGER PRIMARY KEY,
      name TEXT,
      salary INTEGER,
      departmentId INTEGER
    );
  ''');

  db.execute("INSERT INTO Department VALUES (1, 'IT'), (2, 'Sales');");
  db.execute('''
    INSERT INTO Employee VALUES
    (1, 'Joe', 70000, 1),
    (2, 'Jim', 90000, 1),
    (3, 'Henry', 80000, 2),
    (4, 'Sam', 60000, 2),
    (5, 'Max', 90000, 1);
  ''');

  // TODO: Write SQL query to find Department name AS "Department", Employee name AS "Employee", and salary AS "Salary"
  const sql = '''
    SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
    FROM Employee e
    JOIN Department d ON e.departmentId = d.id
    WHERE (e.departmentId, e.salary) IN (
      SELECT departmentId, MAX(salary)
      FROM Employee
      GROUP BY departmentId
    );
  ''';

  db.rawQueryAndPrint(sql, [], 'Department Highest Salary');

  db.close();
}
