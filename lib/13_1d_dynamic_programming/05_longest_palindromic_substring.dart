/// Problem: Longest Palindromic Substring
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/longest-palindromic-substring
/// LeetCode Link: https://leetcode.com/problems/longest-palindromic-substring

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
  /// Solution method for Longest Palindromic Substring
  dynamic longestPalindromicSubstring(dynamic s) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Longest Palindromic Substring ===\n');
  // --- Example 1 ---
  final s1 = "babad";
  final result1 = solution.longestPalindromicSubstring(s1);
  print('Example 1 Result: $result1');
  print('Expected Output:  "bab"\n');
  // --- Example 2 ---
  final s2 = "cbbd";
  final result2 = solution.longestPalindromicSubstring(s2);
  print('Example 2 Result: $result2');
  print('Expected Output:  "bb"\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given a string s, return the longest palindromic substring in s.

Example 1:

Input: s = "babad"
Output: "bab"
Explanation: "aba" is also a valid answer.

Example 2:

Input: s = "cbbd"
Output: "bb"

Constraints:

	1 <= s.length <= 1000
	s consist of only digits and English letters.

===============================================================================
*/
