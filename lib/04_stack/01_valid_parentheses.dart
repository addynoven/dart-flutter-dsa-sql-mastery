/// Problem: Valid Parentheses
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/validate-parentheses
/// LeetCode Link: https://leetcode.com/problems/valid-parentheses

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
  // TODO: Implement solution for Valid Parentheses
  dynamic validParentheses(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Valid Parentheses');

  // Example 1
  // final result1 = solution.validParentheses(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

	Open brackets must be closed by the same type of brackets.
	Open brackets must be closed in the correct order.
	Every close bracket has a corresponding open bracket of the same type.

Example 1:

Input: s = "()"

Output: true

Example 2:

Input: s = "()[]{}"

Output: true

Example 3:

Input: s = "(]"

Output: false

Example 4:

Input: s = "([])"

Output: true

Example 5:

Input: s = "([)]"

Output: false

Constraints:

	1 <= s.length <= 104
	s consists of parentheses only '()[]{}'.

===============================================================================
*/
