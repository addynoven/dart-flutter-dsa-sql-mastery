/// Problem: Reverse Integer
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/reverse-integer
/// LeetCode Link: https://leetcode.com/problems/reverse-integer

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
  /// Solution method for Reverse Integer
  dynamic reverseInteger(dynamic x) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Reverse Integer ===\n');
  // --- Example 1 ---
  final x1 = 123;
  final result1 = solution.reverseInteger(x1);
  print('Example 1 Result: $result1');
  print('Expected Output:  321\n');
  // --- Example 2 ---
  final x2 = -123;
  final result2 = solution.reverseInteger(x2);
  print('Example 2 Result: $result2');
  print('Expected Output:  -321\n');
  // --- Example 3 ---
  final x3 = 120;
  final result3 = solution.reverseInteger(x3);
  print('Example 3 Result: $result3');
  print('Expected Output:  21\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

Example 1:

Input: x = 123
Output: 321

Example 2:

Input: x = -123
Output: -321

Example 3:

Input: x = 120
Output: 21

Constraints:

	-231 <= x <= 231 - 1

===============================================================================
*/
