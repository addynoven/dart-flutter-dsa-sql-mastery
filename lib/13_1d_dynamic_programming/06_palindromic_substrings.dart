/// Problem: Palindromic Substrings
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/palindromic-substrings
/// LeetCode Link: https://leetcode.com/problems/palindromic-substrings

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
  // TODO: Implement solution for Palindromic Substrings
  dynamic palindromicSubstrings(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Palindromic Substrings');

  // Example 1
  // final result1 = solution.palindromicSubstrings(/* test input */);
  // print('Result 1: $result1');
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
