/// Problem: Pow(x, n)
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/pow-x-n
/// LeetCode Link: https://leetcode.com/problems/powx-n

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
  // TODO: Implement solution for Pow(x, n)
  dynamic powxN(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Pow(x, n)');

  // Example 1
  // final result1 = solution.powxN(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Implement pow(x, n), which calculates x raised to the power n (i.e., xn).

Example 1:

Input: x = 2.00000, n = 10
Output: 1024.00000

Example 2:

Input: x = 2.10000, n = 3
Output: 9.26100

Example 3:

Input: x = 2.00000, n = -2
Output: 0.25000
Explanation: 2-2 = 1/22 = 1/4 = 0.25

Constraints:

	-100.0 < x < 100.0
	-231 <= n <= 231-1
	n is an integer.
	Either x is not zero or n > 0.
	-104 <= xn <= 104

===============================================================================
*/
