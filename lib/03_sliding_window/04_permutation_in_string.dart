/// Problem: Permutation In String
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/permutation-string
/// LeetCode Link: https://leetcode.com/problems/permutation-in-string

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
  /// Solution method for Permutation In String
  dynamic permutationInString(dynamic s1, dynamic s2) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Permutation In String ===\n');
  // --- Example 1 ---
  final s11 = "ab";
  final s21 = "eidbaooo";
  final result1 = solution.permutationInString(s11, s21);
  print('Example 1 Result: $result1');
  print('Expected Output:  true\n');
  // --- Example 2 ---
  final s12 = "ab";
  final s22 = "eidboaoo";
  final result2 = solution.permutationInString(s12, s22);
  print('Example 2 Result: $result2');
  print('Expected Output:  false\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given two strings s1 and s2, return true if s2 contains a permutation of s1, or false otherwise.

In other words, return true if one of s1's permutations is the substring of s2.

Example 1:

Input: s1 = "ab", s2 = "eidbaooo"
Output: true
Explanation: s2 contains one permutation of s1 ("ba").

Example 2:

Input: s1 = "ab", s2 = "eidboaoo"
Output: false

Constraints:

	1 <= s1.length, s2.length <= 104
	s1 and s2 consist of lowercase English letters.

===============================================================================
*/
