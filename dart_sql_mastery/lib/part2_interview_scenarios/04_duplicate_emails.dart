/// Problem: Duplicate Emails (LeetCode #182)
/// Scenario: Write a SQL query to report all the duplicate emails.

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 04: Duplicate Emails (LeetCode #182) ===\n');

  db.execute('''
    CREATE TABLE Person (
      id INTEGER PRIMARY KEY,
      email TEXT
    );
  ''');

  db.execute("INSERT INTO Person VALUES (1, 'a@b.com'), (2, 'c@d.com'), (3, 'a@b.com');");

  // TODO: Write SQL query with GROUP BY and HAVING to find duplicate emails AS "Email"
  const sql = '''
    SELECT email AS Email
    FROM Person
    GROUP BY email
    HAVING COUNT(email) > 1;
  ''';

  db.rawQueryAndPrint(sql, [], 'Duplicate Emails Result');

  db.close();
}
