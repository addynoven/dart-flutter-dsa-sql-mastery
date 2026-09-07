/// Topic: Relational Schema - LEFT JOIN & Unmatched Records
/// Concept: Preserving all rows from the left table even when there are no matching rows in the right table.

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 11: LEFT OUTER JOIN ===\n');

  db.execute('''
    CREATE TABLE customers (
      id INTEGER PRIMARY KEY,
      name TEXT
    );
  ''');

  db.execute('''
    CREATE TABLE orders (
      id INTEGER PRIMARY KEY,
      customer_id INTEGER,
      total REAL
    );
  ''');

  db.execute("INSERT INTO customers VALUES (1, 'Alice'), (2, 'Bob'), (3, 'Charlie');");
  db.execute("INSERT INTO orders VALUES (101, 1, 150.0), (102, 1, 200.0);");

  // TODO: Select customer name and total order amount. Include customers who have NO orders (their total will be NULL)
  const query = '''
    SELECT c.name AS customer_name, o.total AS order_total
    FROM customers c
    LEFT JOIN orders o ON c.id = o.customer_id;
  ''';

  db.rawQueryAndPrint(query, [], 'Customers with Orders (LEFT JOIN)');

  db.close();
}
