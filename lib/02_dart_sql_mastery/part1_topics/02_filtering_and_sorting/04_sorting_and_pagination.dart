/// Topic: Filtering & Sorting - ORDER BY, LIMIT, & OFFSET (Flutter Pagination)
/// Concept: Sorting rows and paginating query results for mobile infinite scrolling lists.

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 08: ORDER BY, LIMIT, & OFFSET (Pagination) ===\n');

  db.execute('''
    CREATE TABLE posts (
      id INTEGER PRIMARY KEY,
      title TEXT,
      created_at INTEGER
    );
  ''');

  for (int i = 1; i <= 10; i++) {
    db.execute("INSERT INTO posts (title, created_at) VALUES ('Post #$i', ${1000 + i});");
  }

  // TODO: Page 2 of posts list (Fetch 3 posts sorted by created_at DESC, skipping the first 3 posts)
  const page2Query = '''
    SELECT id, title, created_at
    FROM posts
    ORDER BY created_at DESC
    LIMIT 3 OFFSET 3;
  ''';

  db.rawQueryAndPrint(page2Query, [], 'Page 2 (Limit 3, Offset 3)');

  db.close();
}
