/// Problem: Valid Parenthesis String
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/valid-parenthesis-string
/// LeetCode Link: https://leetcode.com/problems/valid-parenthesis-string

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
  /// Solution method for Valid Parenthesis String
  dynamic validParenthesisString(dynamic s) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Valid Parenthesis String ===\n');
  // --- Example 1 ---
  final s1 = "()";
  final result1 = solution.validParenthesisString(s1);
  print('Example 1 Result: $result1');
  print('Expected Output:  true\n');
  // --- Example 2 ---
  final s2 = "(*)";
  final result2 = solution.validParenthesisString(s2);
  print('Example 2 Result: $result2');
  print('Expected Output:  true\n');
  // --- Example 3 ---
  final s3 = "(*))";
  final result3 = solution.validParenthesisString(s3);
  print('Example 3 Result: $result3');
  print('Expected Output:  true\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given a string s containing only three types of characters: '(', ')' and '*', return true if s is valid.

The following rules define a valid string:

	Any left parenthesis '(' must have a corresponding right parenthesis ')'.
	Any right parenthesis ')' must have a corresponding left parenthesis '('.
	Left parenthesis '(' must go before the corresponding right parenthesis ')'.
	'*' could be treated as a single right parenthesis ')' or a single left parenthesis '(' or an empty string "".

Example 1:
Input: s = "()"
Output: true
Example 2:
Input: s = "(*)"
Output: true
Example 3:
Input: s = "(*))"
Output: true

Constraints:

	1 <= s.length <= 100
	s[i] is '(', ')' or '*'.

===============================================================================
*/
