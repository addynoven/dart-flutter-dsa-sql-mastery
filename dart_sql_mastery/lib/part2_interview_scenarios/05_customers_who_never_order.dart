/// Problem: Customers Who Never Order (LeetCode #183)
/// Scenario: Write a SQL query to report all customers who never order anything.

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 05: Customers Who Never Order (LeetCode #183) ===\n');

  db.execute('''
    CREATE TABLE Customers (
      id INTEGER PRIMARY KEY,
      name TEXT
    );
  ''');

  db.execute('''
    CREATE TABLE Orders (
      id INTEGER PRIMARY KEY,
      customerId INTEGER
    );
  ''');

  db.execute("INSERT INTO Customers VALUES (1, 'Joe'), (2, 'Henry'), (3, 'Sam'), (4, 'Max');");
  db.execute("INSERT INTO Orders VALUES (1, 3), (2, 1);");

  // TODO: Write SQL query to find customers who never ordered AS "Customers"
  const sql = '''
    SELECT c.name AS Customers
    FROM Customers c
    LEFT JOIN Orders o ON c.id = o.customerId
    WHERE o.id IS NULL;
  ''';

  db.rawQueryAndPrint(sql, [], 'Customers Who Never Order');

  db.close();
}
