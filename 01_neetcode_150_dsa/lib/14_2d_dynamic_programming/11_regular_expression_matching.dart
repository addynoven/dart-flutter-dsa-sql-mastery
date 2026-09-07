/// Problem: Regular Expression Matching
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/regular-expression-matching
/// LeetCode Link: https://leetcode.com/problems/regular-expression-matching

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
  /// Solution method for Regular Expression Matching
  dynamic regularExpressionMatching(dynamic s, dynamic p) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Regular Expression Matching ===\n');
  // --- Example 1 ---
  final s1 = "aa";
  final p1 = "a";
  final result1 = solution.regularExpressionMatching(s1, p1);
  print('Example 1 Result: $result1');
  print('Expected Output:  false\n');
  // --- Example 2 ---
  final s2 = "aa";
  final p2 = "a*";
  final result2 = solution.regularExpressionMatching(s2, p2);
  print('Example 2 Result: $result2');
  print('Expected Output:  true\n');
  // --- Example 3 ---
  final s3 = "ab";
  final p3 = ".*";
  final result3 = solution.regularExpressionMatching(s3, p3);
  print('Example 3 Result: $result3');
  print('Expected Output:  true\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an input string s and a pattern p, implement regular expression matching with support for '.' and '*' where:

	'.' Matches any single character.​​​​
	'*' Matches zero or more of the preceding element.

Return a boolean indicating whether the matching covers the entire input string (not partial).

Example 1:

Input: s = "aa", p = "a"
Output: false
Explanation: "a" does not match the entire string "aa".

Example 2:

Input: s = "aa", p = "a*"
Output: true
Explanation: '*' means zero or more of the preceding element, 'a'. Therefore, by repeating 'a' once, it becomes "aa".

Example 3:

Input: s = "ab", p = ".*"
Output: true
Explanation: ".*" means "zero or more (*) of any character (.)".

Constraints:

	1 <= s.length <= 20
	1 <= p.length <= 20
	s contains only lowercase English letters.
	p contains only lowercase English letters, '.', and '*'.
	It is guaranteed for each appearance of the character '*', there will be a previous valid character to match.

===============================================================================
*/
