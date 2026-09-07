/// Topic: DDL & CRUD - CREATE TABLE and INSERT INTO
/// Concept: Defining table schema, primary keys, and inserting rows safely with parameter bindings.

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 01: CREATE TABLE & INSERT INTO ===\n');

  // 1. Create Table
  db.execute('''
    CREATE TABLE users (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      email TEXT UNIQUE NOT NULL,
      age INTEGER
    );
  ''');

  // 2. TODO: Write SQL INSERT statement to insert 3 users: Alice (25), Bob (30), Charlie (22)
  const insertSql = '''
    INSERT INTO users (name, email, age) VALUES
    ('Alice', 'alice@example.com', 25),
    ('Bob', 'bob@example.com', 30),
    ('Charlie', 'charlie@example.com', 22);
  ''';
  db.execute(insertSql);

  // 3. TODO: Write SELECT query to fetch all users
  const selectSql = '''
    SELECT * FROM users;
  ''';

  db.rawQueryAndPrint(selectSql, [], 'All Inserted Users');

  db.close();
}
