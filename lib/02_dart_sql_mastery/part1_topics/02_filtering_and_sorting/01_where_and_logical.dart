/// Topic: Filtering & Sorting - WHERE Clause & Logical Operators
/// Concept: Combining filtering conditions using AND, OR, and NOT.

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 05: WHERE Clause & Logical Operators ===\n');

  db.execute('''
    CREATE TABLE items (
      id INTEGER PRIMARY KEY,
      name TEXT,
      category TEXT,
      price REAL,
      in_stock INTEGER
    );
  ''');

  db.execute('''
    INSERT INTO items (name, category, price, in_stock) VALUES
    ('Monitor', 'Electronics', 300, 1),
    ('Keyboard', 'Electronics', 80, 1),
    ('Desk', 'Furniture', 250, 0),
    ('Chair', 'Furniture', 150, 1),
    ('Mouse', 'Electronics', 40, 0);
  ''');

  // TODO: Select all items in category 'Electronics' AND in_stock = 1 AND price >= 50
  const query = '''
    SELECT name, category, price
    FROM items
    WHERE category = 'Electronics' AND in_stock = 1 AND price >= 50;
  ''';

  db.rawQueryAndPrint(query, [], 'In-Stock Electronics (Price >= 50)');

  db.close();
}
