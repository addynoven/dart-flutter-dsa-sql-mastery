/// Topic: Aggregations - GROUP BY & HAVING
/// Concept: Grouping rows by categories and filtering aggregated groups with HAVING.

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 15: GROUP BY & HAVING ===\n');

  db.execute('''
    CREATE TABLE orders (
      id INTEGER PRIMARY KEY,
      category TEXT,
      amount REAL
    );
  ''');

  db.execute('''
    INSERT INTO orders (category, amount) VALUES
    ('Tech', 500), ('Tech', 300), ('Tech', 200),
    ('Books', 50), ('Books', 30),
    ('Clothing', 100), ('Clothing', 150);
  ''');

  // TODO: Select category, total sales SUM(amount), and count COUNT(*). Filter groups to keep ONLY categories where SUM(amount) >= 300!
  const query = '''
    SELECT
      category,
      COUNT(*) AS total_orders,
      SUM(amount) AS total_sales
    FROM orders
    GROUP BY category
    HAVING SUM(amount) >= 300;
  ''';

  db.rawQueryAndPrint(query, [], 'Top Categories (Sales >= 300)');

  db.close();
}
