/// Problem: Capital Gain/Loss (LeetCode #1393)
/// Scenario: Write a SQL query to report the Capital Gain/Loss for each stock.

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 09: Capital Gain/Loss (LeetCode #1393) ===\n');

  db.execute('''
    CREATE TABLE Stocks (
      stock_name TEXT,
      operation TEXT,
      operation_day INTEGER,
      price INTEGER
    );
  ''');

  db.execute('''
    INSERT INTO Stocks VALUES
    ('Leetcode', 'Buy', 1, 1000),
    ('Corona Masks', 'Buy', 2, 10),
    ('Leetcode', 'Sell', 5, 9000),
    ('Hand Sanitizer', 'Buy', 1, 500),
    ('Corona Masks', 'Sell', 3, 1010),
    ('Corona Masks', 'Buy', 4, 1000),
    ('Corona Masks', 'Sell', 5, 500);
  ''');

  // TODO: Write SQL query using SUM + CASE WHEN to calculate capital gain/loss AS "capital_gain_loss"
  const sql = '''
    SELECT
      stock_name,
      SUM(CASE WHEN operation = 'Sell' THEN price ELSE -price END) AS capital_gain_loss
    FROM Stocks
    GROUP BY stock_name;
  ''';

  db.rawQueryAndPrint(sql, [], 'Capital Gain/Loss Per Stock');

  db.close();
}
