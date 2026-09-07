/// Topic: Relational Schema - Upsert (INSERT ON CONFLICT DO UPDATE)
/// Concept: Inserting or updating records atomically when a unique constraint collision occurs.

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 13: Upsert (ON CONFLICT DO UPDATE) ===\n');

  db.execute('''
    CREATE TABLE user_scores (
      user_id INTEGER PRIMARY KEY,
      username TEXT,
      high_score INTEGER
    );
  ''');

  db.execute("INSERT INTO user_scores VALUES (1, 'Alice', 100);");

  print('--- Initial Score ---');
  db.rawQueryAndPrint('SELECT * FROM user_scores;');

  // TODO: Perform Upsert for user_id = 1. If user_id exists, update high_score ONLY IF new score is higher!
  const upsertSql = '''
    INSERT INTO user_scores (user_id, username, high_score) VALUES (1, 'Alice', 150)
    ON CONFLICT(user_id) DO UPDATE SET
      high_score = MAX(user_scores.high_score, excluded.high_score);
  ''';
  db.execute(upsertSql);

  db.rawQueryAndPrint('SELECT * FROM user_scores;', [], 'User Score After Upsert (150)');

  db.close();
}
