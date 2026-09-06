/// Problem: Longest Palindromic Substring
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/longest-palindromic-substring
/// LeetCode Link: https://leetcode.com/problems/longest-palindromic-substring

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
  // TODO: Implement solution for Longest Palindromic Substring
  dynamic longestPalindromicSubstring(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Longest Palindromic Substring');

  // Example 1
  // final result1 = solution.longestPalindromicSubstring(/* test input */);
  // print('Result 1: $result1');
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
