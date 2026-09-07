import 'dart:io';

void main() async {
  print('===================================================');
  print('🚀 Setting up Mobile Developer Interview Mastery Workspace');
  print('===================================================\n');

  // 1. Single Unified Dependency Fetch
  print('📦 Fetching workspace dependencies (Single Root Pubspec)...');
  final result = await Process.run(
    'flutter',
    ['pub', 'get'],
    runInShell: true,
  );

  if (result.exitCode == 0) {
    print('✅ Successfully configured workspace dependencies!\n');
  } else {
    print('❌ Failed to configure workspace dependencies:');
    print(result.stderr);
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
  print('• Run Master UI App:        flutter run -d linux lib/main.dart');
  print('• Run All Test Suites:     flutter test');
  print('• Run DSA Exercise:        dart run lib/01_neetcode_150_dsa/lib/01_arrays_and_hashing/01_contains_duplicate.dart');
  print('• Run SQL Exercise:        dart run lib/02_dart_sql_mastery/lib/part2_interview_scenarios/01_combine_two_tables.dart\n');
}
