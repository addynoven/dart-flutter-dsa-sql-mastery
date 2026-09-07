/// Topic: Aggregations - Scalar & Correlated Subqueries
/// Concept: Embedding nested SELECT queries inside WHERE or SELECT clauses.

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 16: Subqueries ===\n');

  db.execute('''
    CREATE TABLE employees (
      id INTEGER PRIMARY KEY,
      name TEXT,
      salary REAL
    );
  ''');

  db.execute("INSERT INTO employees VALUES (1, 'Alice', 70000), (2, 'Bob', 50000), (3, 'Charlie', 90000), (4, 'David', 60000);");

  // TODO: Select employees whose salary is ABOVE the company average salary using a subquery!
  const query = '''
    SELECT name, salary
    FROM employees
    WHERE salary > (SELECT AVG(salary) FROM employees);
  ''';

  db.rawQueryAndPrint(query, [], 'Employees Earning Above Average');

  db.close();
}
