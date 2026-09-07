/// Topic: Transactions & Performance - Schema Migrations in Flutter/SQLite
/// Concept: Managing version-based database migrations (e.g., adding columns without losing existing user data).

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 20: Database Schema Migrations ===\n');

  // Version 1 Schema
  db.execute('''
    CREATE TABLE app_settings (
      key TEXT PRIMARY KEY,
      value TEXT
    );
  ''');

  db.execute("INSERT INTO app_settings VALUES ('dark_mode', 'true');");

  print('--- Version 1 Schema Data ---');
  db.rawQueryAndPrint('SELECT * FROM app_settings;');

  // Migration to Version 2: ALTER TABLE to add 'updated_at' column
  db.execute('ALTER TABLE app_settings ADD COLUMN updated_at INTEGER DEFAULT 0;');

  db.rawQueryAndPrint('SELECT * FROM app_settings;', [], 'Version 2 Migrated Table');

  db.close();
}
