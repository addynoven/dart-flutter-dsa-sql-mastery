/// Problem: Distinct Subsequences
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/count-subsequences
/// LeetCode Link: https://leetcode.com/problems/distinct-subsequences

import 'dart:collection';
import 'package:collection/collection.dart';

// Node structure helpers for Trees / Linked Lists if needed
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
  // TODO: Implement solution for Distinct Subsequences
  dynamic distinctSubsequences(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Distinct Subsequences');

  // Example 1
  // final result1 = solution.distinctSubsequences(/* test input */);
  // print('Result 1: $result1');
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
