/// Topic: Relational Schema - Self-Join
/// Concept: Joining a table to itself to query hierarchical data (e.g. employees and their managers).

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 12: Self-Join ===\n');

  db.execute('''
    CREATE TABLE employees (
      id INTEGER PRIMARY KEY,
      name TEXT,
      manager_id INTEGER
    );
  ''');

  db.execute('''
    INSERT INTO employees VALUES
    (1, 'Alice', NULL),   -- CEO / Manager
    (2, 'Bob', 1),      -- Reports to Alice
    (3, 'Charlie', 1),  -- Reports to Alice
    (4, 'David', 2);    -- Reports to Bob
  ''');

  // TODO: Select employee name and their manager's name using Self-Join
  const query = '''
    SELECT
      e.name AS employee,
      COALESCE(m.name, 'No Manager (CEO)') AS manager
    FROM employees e
    LEFT JOIN employees m ON e.manager_id = m.id;
  ''';

  db.rawQueryAndPrint(query, [], 'Employee-Manager Hierarchy');

  db.close();
}
