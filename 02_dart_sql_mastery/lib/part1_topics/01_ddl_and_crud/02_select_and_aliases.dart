/// Topic: DDL & CRUD - SELECT, Column Aliases & Computed Fields
/// Concept: Selecting specific columns, renaming outputs using AS, and performing arithmetic expressions.

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 02: SELECT & Column Aliases ===\n');

  db.execute('''
    CREATE TABLE products (
      id INTEGER PRIMARY KEY,
      title TEXT,
      price REAL,
      stock INTEGER
    );
  ''');

  db.execute('''
    INSERT INTO products (title, price, stock) VALUES
    ('Laptop', 1200.0, 10),
    ('Smartphone', 800.0, 25),
    ('Headphones', 150.0, 50);
  ''');

  // TODO: Write a SELECT query that returns product title, original price, and total inventory value (price * stock) AS total_inventory_value
  const query = '''
    SELECT title, price, (price * stock) AS total_inventory_value
    FROM products;
  ''';

  db.rawQueryAndPrint(query, [], 'Product Inventory Value');

  db.close();
}
