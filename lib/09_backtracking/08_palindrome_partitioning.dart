/// Problem: Palindrome Partitioning
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/palindrome-partitioning
/// LeetCode Link: https://leetcode.com/problems/palindrome-partitioning

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
  // TODO: Implement solution for Palindrome Partitioning
  dynamic palindromePartitioning(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Palindrome Partitioning');

  // Example 1
  // final result1 = solution.palindromePartitioning(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given a string s, partition s such that every substring of the partition is a palindrome. Return all possible palindrome partitioning of s.

Example 1:
Input: s = "aab"
Output: [["a","a","b"],["aa","b"]]
Example 2:
Input: s = "a"
Output: [["a"]]

Constraints:

	1 <= s.length <= 16
	s contains only lowercase English letters.

===============================================================================
*/
