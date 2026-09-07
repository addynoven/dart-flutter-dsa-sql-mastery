/// Problem: Add Two Numbers
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/add-two-numbers
/// LeetCode Link: https://leetcode.com/problems/add-two-numbers

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
  /// Solution method for Add Two Numbers
  dynamic addTwoNumbers(dynamic l1, dynamic l2) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Add Two Numbers ===\n');
  // --- Example 1 ---
  final l11 = [2,4,3];
  final l21 = [5,6,4];
  final result1 = solution.addTwoNumbers(l11, l21);
  print('Example 1 Result: $result1');
  print('Expected Output:  [7,0,8]\n');
  // --- Example 2 ---
  final l12 = [0];
  final l22 = [0];
  final result2 = solution.addTwoNumbers(l12, l22);
  print('Example 2 Result: $result2');
  print('Expected Output:  [0]\n');
  // --- Example 3 ---
  final l13 = [9,9,9,9,9,9,9];
  final l23 = [9,9,9,9];
  final result3 = solution.addTwoNumbers(l13, l23);
  print('Example 3 Result: $result3');
  print('Expected Output:  [8,9,9,9,0,0,0,1]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Example 1:

Input: l1 = [2,4,3], l2 = [5,6,4]
Output: [7,0,8]
Explanation: 342 + 465 = 807.

Example 2:

Input: l1 = [0], l2 = [0]
Output: [0]

Example 3:

Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
Output: [8,9,9,9,0,0,0,1]

Constraints:

	The number of nodes in each linked list is in the range [1, 100].
	0 <= Node.val <= 9
	It is guaranteed that the list represents a number that does not have leading zeros.

===============================================================================
*/
