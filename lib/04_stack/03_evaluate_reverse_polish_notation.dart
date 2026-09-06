/// Problem: Evaluate Reverse Polish Notation
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/evaluate-reverse-polish-notation
/// LeetCode Link: https://leetcode.com/problems/evaluate-reverse-polish-notation

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
  // TODO: Implement solution for Evaluate Reverse Polish Notation
  dynamic evaluateReversePolishNotation(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Evaluate Reverse Polish Notation');

  // Example 1
  // final result1 = solution.evaluateReversePolishNotation(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given an array of strings tokens that represents an arithmetic expression in a Reverse Polish Notation.

Evaluate the expression. Return an integer that represents the value of the expression.

Note that:

	The valid operators are '+', '-', '*', and '/'.
	Each operand may be an integer or another expression.
	The division between two integers always truncates toward zero.
	There will not be any division by zero.
	The input represents a valid arithmetic expression in a reverse polish notation.
	The answer and all the intermediate calculations can be represented in a 32-bit integer.

Example 1:

Input: tokens = ["2","1","+","3","*"]
Output: 9
Explanation: ((2 + 1) * 3) = 9

Example 2:

Input: tokens = ["4","13","5","/","+"]
Output: 6
Explanation: (4 + (13 / 5)) = 6

Example 3:

Input: tokens = ["10","6","9","3","+","-11","*","/","*","17","+","5","+"]
Output: 22
Explanation: ((10 * (6 / ((9 + 3) * -11))) + 17) + 5
= ((10 * (6 / (12 * -11))) + 17) + 5
= ((10 * (6 / -132)) + 17) + 5
= ((10 * 0) + 17) + 5
= (0 + 17) + 5
= 17 + 5
= 22

Constraints:

	1 <= tokens.length <= 104
	tokens[i] is either an operator: "+", "-", "*", or "/", or an integer in the range [-200, 200].

===============================================================================
*/
