/// Problem: Reverse Integer
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/reverse-integer
/// LeetCode Link: https://leetcode.com/problems/reverse-integer

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
  // TODO: Implement solution for Reverse Integer
  dynamic reverseInteger(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Reverse Integer');

  // Example 1
  // final result1 = solution.reverseInteger(/* test input */);
  // print('Result 1: $result1');
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
