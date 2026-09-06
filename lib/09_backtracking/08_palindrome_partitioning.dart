/// Problem: Palindrome Partitioning
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/palindrome-partitioning
/// LeetCode Link: https://leetcode.com/problems/palindrome-partitioning

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
  /// Solution method for Palindrome Partitioning
  dynamic palindromePartitioning(dynamic s) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Palindrome Partitioning ===\n');
  // --- Example 1 ---
  final s1 = "aab";
  final result1 = solution.palindromePartitioning(s1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [["a","a","b"],["aa","b"]]\n');
  // --- Example 2 ---
  final s2 = "a";
  final result2 = solution.palindromePartitioning(s2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [["a"]]\n');
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
