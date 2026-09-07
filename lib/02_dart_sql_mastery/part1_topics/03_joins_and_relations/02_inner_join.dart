/// Topic: Relational Schema - INNER JOIN
/// Concept: Combining matching records across multiple tables using relational keys.

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 10: INNER JOIN ===\n');

  db.execute('''
    CREATE TABLE departments (
      id INTEGER PRIMARY KEY,
      dept_name TEXT
    );
  ''');

  db.execute('''
    CREATE TABLE employees (
      id INTEGER PRIMARY KEY,
      name TEXT,
      dept_id INTEGER,
      FOREIGN KEY (dept_id) REFERENCES departments(id)
    );
  ''');

  db.execute("INSERT INTO departments VALUES (1, 'Engineering'), (2, 'Marketing');");
  db.execute("INSERT INTO employees VALUES (101, 'Alice', 1), (102, 'Bob', 2), (103, 'Charlie', 1);");

  // TODO: Select employee name, department name using INNER JOIN
  const query = '''
    SELECT e.name AS employee_name, d.dept_name AS department
    FROM employees e
    INNER JOIN departments d ON e.dept_id = d.id;
  ''';

  db.rawQueryAndPrint(query, [], 'Employee Departments');

  db.close();
}
