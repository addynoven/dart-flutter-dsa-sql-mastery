/// Topic: Filtering & Sorting - Pattern Matching with LIKE & GLOB
/// Concept: Using wildcards (% for multi-character, _ for single-character) for text searches.

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 06: Pattern Matching with LIKE ===\n');

  db.execute('''
    CREATE TABLE users (
      id INTEGER PRIMARY KEY,
      username TEXT,
      email TEXT
    );
  ''');

  db.execute('''
    INSERT INTO users (username, email) VALUES
    ('john_doe', 'john@gmail.com'),
    ('jane_smith', 'jane@yahoo.com'),
    ('alex_dev', 'alex@gmail.com'),
    ('dev_master', 'dev@company.org');
  ''');

  // TODO: Select all users whose email ends with '@gmail.com'
  const query = '''
    SELECT username, email
    FROM users
    WHERE email LIKE '%@gmail.com';
  ''';

  db.rawQueryAndPrint(query, [], 'Gmail Users');

  db.close();
}
