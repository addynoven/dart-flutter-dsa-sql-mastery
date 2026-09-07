/// Problem: Tree Node (LeetCode #608)
/// Scenario: Each node in the tree can be one of three types: "Root", "Inner", or "Leaf". Write a query to report the type of each node.

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 08: Tree Node (LeetCode #608) ===\n');

  db.execute('''
    CREATE TABLE Tree (
      id INTEGER PRIMARY KEY,
      p_id INTEGER
    );
  ''');

  db.execute("INSERT INTO Tree VALUES (1, NULL), (2, 1), (3, 1), (4, 2), (5, 2);");

  // TODO: Write SQL query with CASE WHEN to classify nodes as Root, Inner, or Leaf
  const sql = '''
    SELECT
      id,
      CASE
        WHEN p_id IS NULL THEN 'Root'
        WHEN id IN (SELECT DISTINCT p_id FROM Tree WHERE p_id IS NOT NULL) THEN 'Inner'
        ELSE 'Leaf'
      END AS type
    FROM Tree;
  ''';

  db.rawQueryAndPrint(sql, [], 'Tree Node Classification');

  db.close();
}
