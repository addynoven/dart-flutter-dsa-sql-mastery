/// Problem: Consecutive Numbers (LeetCode #180)
/// Scenario: Find all numbers that appear at least three times consecutively.

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 07: Consecutive Numbers (LeetCode #180) ===\n');

  db.execute('''
    CREATE TABLE Logs (
      id INTEGER PRIMARY KEY,
      num INTEGER
    );
  ''');

  db.execute("INSERT INTO Logs VALUES (1, 1), (2, 1), (3, 1), (4, 2), (5, 1), (6, 2), (7, 2);");

  // TODO: Write SQL query to find numbers appearing at least 3 times consecutively AS "ConsecutiveNums"
  const sql = '''
    SELECT DISTINCT l1.num AS ConsecutiveNums
    FROM Logs l1
    JOIN Logs l2 ON l1.id = l2.id - 1
    JOIN Logs l3 ON l1.id = l3.id - 2
    WHERE l1.num = l2.num AND l2.num = l3.num;
  ''';

  db.rawQueryAndPrint(sql, [], 'Consecutive Numbers');

  db.close();
}
