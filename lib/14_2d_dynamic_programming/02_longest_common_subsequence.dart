/// Problem: Longest Common Subsequence
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/longest-common-subsequence
/// LeetCode Link: https://leetcode.com/problems/longest-common-subsequence

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
  /// Solution method for Longest Common Subsequence
  dynamic longestCommonSubsequence(dynamic text1, dynamic text2) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Longest Common Subsequence ===\n');
  // --- Example 1 ---
  final text11 = "abcde";
  final text21 = "ace";
  final result1 = solution.longestCommonSubsequence(text11, text21);
  print('Example 1 Result: $result1');
  print('Expected Output:  3\n');
  // --- Example 2 ---
  final text12 = "abc";
  final text22 = "abc";
  final result2 = solution.longestCommonSubsequence(text12, text22);
  print('Example 2 Result: $result2');
  print('Expected Output:  3\n');
  // --- Example 3 ---
  final text13 = "abc";
  final text23 = "def";
  final result3 = solution.longestCommonSubsequence(text13, text23);
  print('Example 3 Result: $result3');
  print('Expected Output:  0\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given two strings text1 and text2, return the length of their longest common subsequence. If there is no common subsequence, return 0.

A subsequence of a string is a new string generated from the original string with some characters (can be none) deleted without changing the relative order of the remaining characters.

	For example, "ace" is a subsequence of "abcde".

A common subsequence of two strings is a subsequence that is common to both strings.

Example 1:

Input: text1 = "abcde", text2 = "ace" 
Output: 3  
Explanation: The longest common subsequence is "ace" and its length is 3.

Example 2:

Input: text1 = "abc", text2 = "abc"
Output: 3
Explanation: The longest common subsequence is "abc" and its length is 3.

Example 3:

Input: text1 = "abc", text2 = "def"
Output: 0
Explanation: There is no such common subsequence, so the result is 0.

Constraints:

	1 <= text1.length, text2.length <= 1000
	text1 and text2 consist of only lowercase English characters.

===============================================================================
*/
