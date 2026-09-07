import 'package:sqlite3/sqlite3.dart';
import 'utils/table_formatter.dart';

/// Helper class wrapping SQLite in Dart to mirror sqflite's raw query paradigms in Flutter.
class RawSqliteHelper {
  final Database db;

  RawSqliteHelper._(this.db);

  /// Open an in-memory SQLite database
  factory RawSqliteHelper.inMemory() {
    final db = sqlite3.openInMemory();
    return RawSqliteHelper._(db);
  }

  /// Execute DDL statements (e.g. CREATE TABLE, ALTER TABLE)
  void execute(String sql) {
    db.execute(sql);
  }

  /// Run raw SELECT query and return List<Map<String, dynamic>> (matching Flutter's sqflite rawQuery)
  List<Map<String, dynamic>> rawQuery(String sql, [List<Object?> params = const []]) {
    final resultSet = db.select(sql, params);
    final results = <Map<String, dynamic>>[];
    for (final row in resultSet) {
      final map = <String, dynamic>{};
      for (final colName in resultSet.columnNames) {
        map[colName] = row[colName];
      }
      results.add(map);
    }
    return results;
  }

  /// Run raw SELECT query and print visual ASCII table directly to console
  List<Map<String, dynamic>> rawQueryAndPrint(String sql, [List<Object?> params = const [], String title = '']) {
    final results = rawQuery(sql, params);
    TableFormatter.printTable(results, title: title);
    return results;
  }

  /// Run raw INSERT and return inserted row ID (matching sqflite rawInsert)
  int rawInsert(String sql, [List<Object?> params = const []]) {
    final stmt = db.prepare(sql);
    stmt.execute(params);
    stmt.dispose();
    return db.lastInsertRowId;
  }

  /// Run raw UPDATE and return count of affected rows (matching sqflite rawUpdate)
  int rawUpdate(String sql, [List<Object?> params = const []]) {
    final stmt = db.prepare(sql);
    stmt.execute(params);
    stmt.dispose();
    return db.updatedRows;
  }

  /// Run raw DELETE and return count of deleted rows (matching sqflite rawDelete)
  int rawDelete(String sql, [List<Object?> params = const []]) {
    return rawUpdate(sql, params);
  }

  /// Close database
  void close() {
    db.dispose();
  }
}
