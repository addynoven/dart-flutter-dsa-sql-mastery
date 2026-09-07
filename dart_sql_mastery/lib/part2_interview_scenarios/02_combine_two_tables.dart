/// Problem: Combine Two Tables (LeetCode #175)
/// Scenario: Write a SQL query to report the first name, last name, city, and state of each person in the Person table.
/// If the address of a personId is not present in the Address table, report NULL instead.

import 'package:dart_sql_mastery/src/raw_sqlite_helper.dart';

void main() {
  final db = RawSqliteHelper.inMemory();

  print('=== Scenario 02: Combine Two Tables (LeetCode #175) ===\n');

  db.execute('''
    CREATE TABLE Person (
      personId INTEGER PRIMARY KEY,
      lastName TEXT,
      firstName TEXT
    );
  ''');

  db.execute('''
    CREATE TABLE Address (
      addressId INTEGER PRIMARY KEY,
      personId INTEGER,
      city TEXT,
      state TEXT
    );
  ''');

  db.execute("INSERT INTO Person VALUES (1, 'Wang', 'Allen'), (2, 'Alice', 'Bob');");
  db.execute("INSERT INTO Address VALUES (1, 2, 'New York City', 'New York');");

  // TODO: Write SQL query with LEFT JOIN to combine Person and Address tables
  const sql = '''
    SELECT p.firstName, p.lastName, a.city, a.state
    FROM Person p
    LEFT JOIN Address a ON p.personId = a.personId;
  ''';

  db.rawQueryAndPrint(sql, [], 'Combined Person & Address Result');

  db.close();
}
