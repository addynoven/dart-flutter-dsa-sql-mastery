/// Topic: Aggregations - Window Functions (ROW_NUMBER, RANK, DENSE_RANK)
/// Concept: Ranking and partitioning rows relative to current row frames without collapsing result sets.

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 17: Window Functions (ROW_NUMBER & DENSE_RANK) ===\n');

  db.execute('''
    CREATE TABLE scores (
      id INTEGER PRIMARY KEY,
      player TEXT,
      score INTEGER
    );
  ''');

  db.execute("INSERT INTO scores VALUES (1, 'Alice', 100), (2, 'Bob', 90), (3, 'Charlie', 100), (4, 'David', 80);");

  // TODO: Select player, score, ROW_NUMBER() OVER(ORDER BY score DESC) AS row_num, and DENSE_RANK() OVER(ORDER BY score DESC) AS dense_rank
  const query = '''
    SELECT
      player,
      score,
      ROW_NUMBER() OVER(ORDER BY score DESC) AS row_num,
      DENSE_RANK() OVER(ORDER BY score DESC) AS rank
    FROM scores;
  ''';

  db.rawQueryAndPrint(query, [], 'Leaderboard Rankings');

  db.close();
}
