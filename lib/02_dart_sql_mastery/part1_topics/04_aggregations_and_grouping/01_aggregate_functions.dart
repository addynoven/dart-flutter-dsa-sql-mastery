/// Topic: Aggregations - Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)
/// Concept: Performing calculations across rows to return single summary scalar values.

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 14: Aggregate Functions ===\n');

  db.execute('''
    CREATE TABLE sales (
      id INTEGER PRIMARY KEY,
      amount REAL
    );
  ''');

  db.execute("INSERT INTO sales (amount) VALUES (100.0), (250.0), (75.5), (300.0), (120.0);");

  // TODO: Select COUNT(*), SUM(amount), AVG(amount), MIN(amount), MAX(amount)
  const query = '''
    SELECT
      COUNT(*) AS total_sales_count,
      SUM(amount) AS total_revenue,
      ROUND(AVG(amount), 2) AS avg_sale,
      MIN(amount) AS lowest_sale,
      MAX(amount) AS highest_sale
    FROM sales;
  ''';

  db.rawQueryAndPrint(query, [], 'Sales Aggregation Metrics');

  db.close();
}
