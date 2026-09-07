import 'package:sqlite3/sqlite3.dart';

/// Formats and prints SQL query result rows as a visual Unicode table in the console terminal.
class TableFormatter {
  /// Print a SQLite ResultSet as a visual table
  static void printResultSet(ResultSet resultSet, {String title = ''}) {
    final rows = <Map<String, dynamic>>[];
    for (final row in resultSet) {
      final map = <String, dynamic>{};
      for (final colName in resultSet.columnNames) {
        map[colName] = row[colName];
      }
      rows.add(map);
    }
    printTable(rows, title: title);
  }

  /// Formats and prints a List of Map rows (mirroring sqflite rawQuery) into a visual table
  static void printTable(List<Map<String, dynamic>> rows, {String title = ''}) {
    if (title.isNotEmpty) {
      print('═══ $title ═══');
    }

    if (rows.isEmpty) {
      print('┌──────────────────────┐');
      print('│ (0 rows returned)    │');
      print('└──────────────────────┘\n');
      return;
    }

    // Extract headers
    final headers = rows.first.keys.toList();

    // Determine column widths
    final Map<String, int> colWidths = {};
    for (final h in headers) {
      colWidths[h] = h.length;
    }

    for (final row in rows) {
      for (final h in headers) {
        final valStr = '${row[h]}';
        if (valStr.length > (colWidths[h] ?? 0)) {
          colWidths[h] = valStr.length;
        }
      }
    }

    // Build borders
    final topBorder = '┌' + headers.map((h) => '─' * ((colWidths[h] ?? 0) + 2)).join('┬') + '┐';
    final headerRow = '│' + headers.map((h) => ' ${h.padRight(colWidths[h] ?? 0)} ').join('│') + '│';
    final midBorder = '├' + headers.map((h) => '─' * ((colWidths[h] ?? 0) + 2)).join('┼') + '┤';
    final bottomBorder = '└' + headers.map((h) => '─' * ((colWidths[h] ?? 0) + 2)).join('┴') + '┘';

    print(topBorder);
    print(headerRow);
    print(midBorder);

    for (final row in rows) {
      final rowStr = '│' + headers.map((h) {
        final valStr = '${row[h]}';
        return ' ${valStr.padRight(colWidths[h] ?? 0)} ';
      }).join('│') + '│';
      print(rowStr);
    }

    print(bottomBorder);
    print('(${rows.length} row${rows.length == 1 ? '' : 's'} in set)\n');
  }
}
