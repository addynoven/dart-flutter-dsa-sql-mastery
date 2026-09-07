/// Topic: Relational Schema - FOREIGN KEY Constraints & ON DELETE CASCADE
/// Concept: Enforcing relational integrity between tables and handling cascading deletions.

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 09: Foreign Keys & CASCADE Deletion ===\n');

  // Enable foreign key support in SQLite
  db.execute('PRAGMA foreign_keys = ON;');

  db.execute('''
    CREATE TABLE users (
      id INTEGER PRIMARY KEY,
      name TEXT
    );
  ''');

  db.execute('''
    CREATE TABLE orders (
      id INTEGER PRIMARY KEY,
      user_id INTEGER,
      amount REAL,
      FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
    );
  ''');

  db.execute("INSERT INTO users (id, name) VALUES (1, 'Alice'), (2, 'Bob');");
  db.execute("INSERT INTO orders (user_id, amount) VALUES (1, 100.0), (1, 250.0), (2, 50.0);");

  print('--- Initial Orders ---');
  db.rawQueryAndPrint('SELECT * FROM orders;');

  // Delete user 1 (Alice) -> Cascade should automatically delete Alice's orders!
  db.execute('DELETE FROM users WHERE id = 1;');

  db.rawQueryAndPrint('SELECT * FROM orders;', [], 'Orders After Deleting User #1');

  db.close();
}
