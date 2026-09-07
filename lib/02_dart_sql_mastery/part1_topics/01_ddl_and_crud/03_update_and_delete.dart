/// Topic: DDL & CRUD - UPDATE and DELETE
/// Concept: Modifying existing rows with UPDATE and deleting specific rows with DELETE.

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 03: UPDATE & DELETE ===\n');

  db.execute('''
    CREATE TABLE employees (
      id INTEGER PRIMARY KEY,
      name TEXT,
      salary REAL,
      status TEXT
    );
  ''');

  db.execute('''
    INSERT INTO employees (name, salary, status) VALUES
    ('Alice', 50000, 'Active'),
    ('Bob', 45000, 'Pending'),
    ('Charlie', 60000, 'Inactive');
  ''');

  print('--- Initial Employees ---');
  db.rawQueryAndPrint('SELECT * FROM employees;');

  // TODO 1: Update Bob's status to 'Active' and increase salary by 5000
  const updateSql = '''
    UPDATE employees
    SET status = 'Active', salary = salary + 5000
    WHERE name = 'Bob';
  ''';
  db.execute(updateSql);

  // TODO 2: Delete employee Charlie (status = 'Inactive')
  const deleteSql = '''
    DELETE FROM employees
    WHERE status = 'Inactive';
  ''';
  db.execute(deleteSql);

  db.rawQueryAndPrint('SELECT * FROM employees;', [], 'Employees After UPDATE and DELETE');

  db.close();
}
