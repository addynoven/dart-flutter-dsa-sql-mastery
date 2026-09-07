/// Problem: Rank Scores (LeetCode #178)
/// Scenario: Write a SQL query to rank the scores. The ranking should be calculated using DENSE_RANK().

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 10: Rank Scores (LeetCode #178) ===\n');

  db.execute('''
    CREATE TABLE Scores (
      id INTEGER PRIMARY KEY,
      score REAL
    );
  ''');

  db.execute("INSERT INTO Scores VALUES (1, 3.50), (2, 3.65), (3, 4.00), (4, 3.85), (5, 4.00), (6, 3.65);");

  // TODO: Write SQL query using DENSE_RANK() OVER(ORDER BY score DESC) AS "rank"
  const sql = '''
    SELECT
      score,
      DENSE_RANK() OVER(ORDER BY score DESC) AS rank
    FROM Scores;
  ''';

  db.rawQueryAndPrint(sql, [], 'Rank Scores Result');

  db.close();
}
