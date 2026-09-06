/// Problem: Permutation In String
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/permutation-string
/// LeetCode Link: https://leetcode.com/problems/permutation-in-string

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
  // TODO: Implement solution for Permutation In String
  dynamic permutationInString(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Permutation In String');

  // Example 1
  // final result1 = solution.permutationInString(/* test input */);
  // print('Result 1: $result1');
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
