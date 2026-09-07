/// Topic: Transactions & Performance - Database Transactions (BEGIN, COMMIT, ROLLBACK)
/// Concept: Ensuring ACID atomicity for multi-step operations (e.g. bank account transfers).

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 18: Transactions & Rollbacks ===\n');

  db.execute('''
    CREATE TABLE accounts (
      id INTEGER PRIMARY KEY,
      owner TEXT,
      balance REAL
    );
  ''');

  db.execute("INSERT INTO accounts VALUES (1, 'Alice', 500.0), (2, 'Bob', 200.0);");

  print('--- Initial Balances ---');
  db.rawQueryAndPrint('SELECT * FROM accounts;');

  // Transfer $100 from Alice to Bob inside a transaction
  try {
    db.execute('BEGIN TRANSACTION;');
    db.execute('UPDATE accounts SET balance = balance - 100 WHERE id = 1;');
    db.execute('UPDATE accounts SET balance = balance + 100 WHERE id = 2;');
    db.execute('COMMIT;');
  } catch (e) {
    db.execute('ROLLBACK;');
    print('Transaction failed, rolled back!');
  }

  db.rawQueryAndPrint('SELECT * FROM accounts;', [], 'Balances After Transfer (\$100 Alice -> Bob)');

  db.close();
}
