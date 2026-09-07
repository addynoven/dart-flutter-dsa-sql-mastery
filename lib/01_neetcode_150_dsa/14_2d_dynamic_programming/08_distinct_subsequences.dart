/// Problem: Distinct Subsequences
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/count-subsequences
/// LeetCode Link: https://leetcode.com/problems/distinct-subsequences

import 'dart:collection';
import 'package:collection/collection.dart';

// Node structure helpers for Trees / Linked Lists
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  /// Solution method for Distinct Subsequences
  dynamic distinctSubsequences(dynamic s, dynamic t) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Distinct Subsequences ===\n');
  // --- Example 1 ---
  final s1 = "rabbbit";
  final t1 = "rabbit";
  final result1 = solution.distinctSubsequences(s1, t1);
  print('Example 1 Result: $result1');
  print('Expected Output:  3\n');
  // --- Example 2 ---
  final s2 = "babgbag";
  final t2 = "bag";
  final result2 = solution.distinctSubsequences(s2, t2);
  print('Example 2 Result: $result2');
  print('Expected Output:  5\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given two strings s and t, return the number of distinct subsequences of s which equals t.

The test cases are generated so that the answer fits on a 32-bit signed integer.

Example 1:

Input: s = "rabbbit", t = "rabbit"
Output: 3
Explanation:
As shown below, there are 3 ways you can generate "rabbit" from s.
rabbbit
rabbbit
rabbbit

Example 2:

Input: s = "babgbag", t = "bag"
Output: 5
Explanation:
As shown below, there are 5 ways you can generate "bag" from s.
babgbag
babgbag
babgbag
babgbag
babgbag

Constraints:

	1 <= s.length, t.length <= 1000
	s and t consist of English letters.

===============================================================================
*/
