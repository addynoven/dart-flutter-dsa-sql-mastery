/// Problem: Pow(x, n)
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/pow-x-n
/// LeetCode Link: https://leetcode.com/problems/powx-n

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
  /// Solution method for Pow(x, n)
  dynamic powxN(dynamic x, dynamic n) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Pow(x, n) ===\n');
  // --- Example 1 ---
  final x1 = 2.00000;
  final n1 = 10;
  final result1 = solution.powxN(x1, n1);
  print('Example 1 Result: $result1');
  print('Expected Output:  1024.00000\n');
  // --- Example 2 ---
  final x2 = 2.10000;
  final n2 = 3;
  final result2 = solution.powxN(x2, n2);
  print('Example 2 Result: $result2');
  print('Expected Output:  9.26100\n');
  // --- Example 3 ---
  final x3 = 2.00000;
  final n3 = -2;
  final result3 = solution.powxN(x3, n3);
  print('Example 3 Result: $result3');
  print('Expected Output:  0.25000\n');
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
