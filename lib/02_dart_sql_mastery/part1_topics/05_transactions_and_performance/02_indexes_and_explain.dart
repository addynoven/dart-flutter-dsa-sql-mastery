/// Topic: Transactions & Performance - B-Tree Indexes & EXPLAIN QUERY PLAN
/// Concept: Speeding up query performance using CREATE INDEX and analyzing query plans.

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 19: Indexes & EXPLAIN QUERY PLAN ===\n');

  db.execute('''
    CREATE TABLE users (
      id INTEGER PRIMARY KEY,
      email TEXT,
      age INTEGER
    );
  ''');

  // Create B-Tree index on email column
  db.execute('CREATE INDEX idx_users_email ON users(email);');

  // TODO: Run EXPLAIN QUERY PLAN for a query filtering by email
  const explainSql = 'EXPLAIN QUERY PLAN SELECT * FROM users WHERE email = "alice@example.com";';

  db.rawQueryAndPrint(explainSql, [], 'Query Plan Optimization');

  db.close();
}
