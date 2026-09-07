/// Topic: Filtering & Sorting - IN & BETWEEN Clauses
/// Concept: Checking membership against lists with IN and range matching with BETWEEN.

import '../../src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Topic 07: IN & BETWEEN Clauses ===\n');

  db.execute('''
    CREATE TABLE books (
      id INTEGER PRIMARY KEY,
      title TEXT,
      author TEXT,
      year INTEGER,
      rating REAL
    );
  ''');

  db.execute('''
    INSERT INTO books (title, author, year, rating) VALUES
    ('Book A', 'Author 1', 2018, 4.5),
    ('Book B', 'Author 2', 2021, 3.8),
    ('Book C', 'Author 1', 2020, 4.8),
    ('Book D', 'Author 3', 2015, 4.2);
  ''');

  // TODO: Select books published BETWEEN 2018 AND 2021 AND rating IN (4.5, 4.8)
  const query = '''
    SELECT title, author, year, rating
    FROM books
    WHERE year BETWEEN 2018 AND 2021 AND rating IN (4.5, 4.8);
  ''';

  db.rawQueryAndPrint(query, [], 'Filtered Books');

  db.close();
}
