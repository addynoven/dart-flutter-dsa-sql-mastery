/// Problem: Valid Parenthesis String
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/valid-parenthesis-string
/// LeetCode Link: https://leetcode.com/problems/valid-parenthesis-string

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
  // TODO: Implement solution for Valid Parenthesis String
  dynamic validParenthesisString(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Valid Parenthesis String');

  // Example 1
  // final result1 = solution.validParenthesisString(/* test input */);
  // print('Result 1: $result1');
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
