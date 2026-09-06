/// Problem: Remove Nth Node From End of List
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/remove-node-from-end-of-linked-list
/// LeetCode Link: https://leetcode.com/problems/remove-nth-node-from-end-of-list

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
  // TODO: Implement solution for Remove Nth Node From End of List
  dynamic removeNthNodeFromEndOfList(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Remove Nth Node From End of List');

  // Example 1
  // final result1 = solution.removeNthNodeFromEndOfList(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given the head of a linked list, remove the nth node from the end of the list and return its head.

Example 1:

Input: head = [1,2,3,4,5], n = 2
Output: [1,2,3,5]

Example 2:

Input: head = [1], n = 1
Output: []

Example 3:

Input: head = [1,2], n = 1
Output: [1]

Constraints:

	The number of nodes in the list is sz.
	1 <= sz <= 30
	0 <= Node.val <= 100
	1 <= n <= sz

Follow up: Could you do this in one pass?

===============================================================================
*/
