/// Problem: Palindromic Substrings
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/palindromic-substrings
/// LeetCode Link: https://leetcode.com/problems/palindromic-substrings

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
  /// Solution method for Palindromic Substrings
  dynamic palindromicSubstrings(dynamic s) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Palindromic Substrings ===\n');
  // --- Example 1 ---
  final s1 = "abc";
  final result1 = solution.palindromicSubstrings(s1);
  print('Example 1 Result: $result1');
  print('Expected Output:  3\n');
  // --- Example 2 ---
  final s2 = "aaa";
  final result2 = solution.palindromicSubstrings(s2);
  print('Example 2 Result: $result2');
  print('Expected Output:  6\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given a string s, return the number of palindromic substrings in it.

A string is a palindrome when it reads the same backward as forward.

A substring is a contiguous sequence of characters within the string.

Example 1:

Input: s = "abc"
Output: 3
Explanation: Three palindromic strings: "a", "b", "c".

Example 2:

Input: s = "aaa"
Output: 6
Explanation: Six palindromic strings: "a", "a", "a", "aa", "aa", "aaa".

Constraints:

	1 <= s.length <= 1000
	s consists of lowercase English letters.

===============================================================================
*/
