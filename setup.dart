import 'dart:io';

void main() async {
  print('===================================================');
  print('🚀 Setting up Dart & Flutter DSA & SQL Mastery Workspace');
  print('===================================================\n');

  final packages = ['neetcode_150_dsa', 'dart_sql_mastery'];

  for (final pkg in packages) {
    print('📦 Fetching dependencies for $pkg...');
    final result = await Process.run(
      'dart',
      ['pub', 'get'],
      workingDirectory: pkg,
      runInShell: true,
    );

    if (result.exitCode == 0) {
      print('✅ Successfully configured $pkg\n');
    } else {
      print('❌ Failed to configure $pkg:');
      print(result.stderr);
    }
  }

  print('===================================================');
  print('🎉 Setup Complete! You are ready to start practicing.');
  print('===================================================');
  print('• Run DSA Exercise: cd neetcode_150_dsa && dart run lib/01_arrays_and_hashing/01_contains_duplicate.dart');
  print('• Run SQL Exercise: cd dart_sql_mastery && dart run lib/part2_interview_scenarios/01_combine_two_tables.dart\n');
}
