/// Problem: Multiply Strings
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/multiply-strings
/// LeetCode Link: https://leetcode.com/problems/multiply-strings

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
  /// Solution method for Multiply Strings
  dynamic multiplyStrings(dynamic num1, dynamic num2) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Multiply Strings ===\n');
  // --- Example 1 ---
  final num11 = "2";
  final num21 = "3";
  final result1 = solution.multiplyStrings(num11, num21);
  print('Example 1 Result: $result1');
  print('Expected Output:  "6"\n');
  // --- Example 2 ---
  final num12 = "123";
  final num22 = "456";
  final result2 = solution.multiplyStrings(num12, num22);
  print('Example 2 Result: $result2');
  print('Expected Output:  "56088"\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given two non-negative integers num1 and num2 represented as strings, return the product of num1 and num2, also represented as a string.

Note: You must not use any built-in BigInteger library or convert the inputs to integer directly.

Example 1:
Input: num1 = "2", num2 = "3"
Output: "6"
Example 2:
Input: num1 = "123", num2 = "456"
Output: "56088"

Constraints:

	1 <= num1.length, num2.length <= 200
	num1 and num2 consist of digits only.
	Both num1 and num2 do not contain any leading zero, except the number 0 itself.

===============================================================================
*/
