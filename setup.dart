import 'dart:io';

void main() async {
  print('===================================================');
  print('🚀 Setting up Flutter & Dart Interview Mastery Workspace');
  print('===================================================\n');

  // 1. Configure Sub-Packages
  final packages = [
    'neetcode_150_dsa',
    'dart_sql_mastery',
    'flutter_architecture_mastery',
    'dart_concurrency_isolates',
  ];

  for (final pkg in packages) {
    print('📦 Fetching dependencies for $pkg...');
    final isFlutterPkg = pkg.startsWith('flutter');
    final cmd = isFlutterPkg ? 'flutter' : 'dart';

    final result = await Process.run(
      cmd,
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

  // 2. Git Branch Protection & Practice Branch Creation
  try {
    // Activate Git pre-push Watchdog hook locally
    await Process.run(
      'git',
      ['config', 'core.hooksPath', '.githooks'],
      runInShell: true,
    );
    print('🛡️ Git Watchdog Hook activated (.githooks/pre-push).\n');

    final branchResult = await Process.run(
      'git',
      ['branch', '--show-current'],
      runInShell: true,
    );

    final currentBranch = branchResult.stdout.toString().trim();

    if (currentBranch == 'template' || currentBranch == 'main') {
      final timestamp = DateTime.now().millisecondsSinceEpoch.toString().substring(7);
      final newBranch = 'practice/workspace-$timestamp';
      print('📌 You are currently on protected branch "$currentBranch".');
      print('🌿 Automatically creating practice branch "$newBranch"...');

      final checkoutResult = await Process.run(
        'git',
        ['checkout', '-b', newBranch],
        runInShell: true,
      );

      if (checkoutResult.exitCode == 0) {
        print('✅ Switched to new practice branch: $newBranch');
        print('🔒 Branch "$currentBranch" is protected from accidental commits!\n');
      }
    } else if (currentBranch.isNotEmpty) {
      print('🌿 Active Practice Branch: "$currentBranch"\n');
    }
  } catch (e) {
    // Git CLI not available or non-git environment
  }

  print('===================================================');
  print('🎉 Setup Complete! You are ready to start practicing.');
  print('===================================================');
  print('• Run DSA Exercise:         cd neetcode_150_dsa && dart run lib/01_arrays_and_hashing/01_contains_duplicate.dart');
  print('• Run SQL Exercise:         cd dart_sql_mastery && dart run lib/part2_interview_scenarios/01_combine_two_tables.dart');
  print('• Run Arch Exercise:        cd flutter_architecture_mastery && flutter run lib/part2_interview_scenarios/01_shopping_cart_bloc.dart');
  print('• Run Concurrency Exercise: cd dart_concurrency_isolates && dart run lib/part2_interview_scenarios/01_heavy_json_parsing_isolate.dart\n');
}
