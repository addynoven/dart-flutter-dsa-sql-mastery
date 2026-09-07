/// Topic: DDL & CRUD - Handling NULL Values
/// Concept: Filtering NULLs with IS NULL / IS NOT NULL and providing fallback defaults with COALESCE or IFNULL.

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 04: NULL Handling & COALESCE ===\n');

  db.execute('''
    CREATE TABLE contacts (
      id INTEGER PRIMARY KEY,
      name TEXT,
      phone TEXT,
      email TEXT
    );
  ''');

  db.execute('''
    INSERT INTO contacts (name, phone, email) VALUES
    ('Alice', '555-0192', 'alice@example.com'),
    ('Bob', NULL, 'bob@example.com'),
    ('Charlie', '555-0144', NULL),
    ('David', NULL, NULL);
  ''');

  // TODO: Select contact name, phone (use IFNULL / COALESCE to display 'N/A' if phone is NULL), and email (display 'No Email' if NULL)
  const query = '''
    SELECT
      name,
      COALESCE(phone, 'N/A') AS phone,
      COALESCE(email, 'No Email') AS email
    FROM contacts;
  ''';

  db.rawQueryAndPrint(query, [], 'Formatted Contacts List');

  db.close();
}
