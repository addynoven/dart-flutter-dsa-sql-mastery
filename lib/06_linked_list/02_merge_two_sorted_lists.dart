/// Problem: Merge Two Sorted Lists
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/merge-two-sorted-linked-lists
/// LeetCode Link: https://leetcode.com/problems/merge-two-sorted-lists

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
  // TODO: Implement solution for Merge Two Sorted Lists
  dynamic mergeTwoSortedLists(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Merge Two Sorted Lists');

  // Example 1
  // final result1 = solution.mergeTwoSortedLists(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given the heads of two sorted linked lists list1 and list2.

Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.

Return the head of the merged linked list.

Example 1:

Input: list1 = [1,2,4], list2 = [1,3,4]
Output: [1,1,2,3,4,4]

Example 2:

Input: list1 = [], list2 = []
Output: []

Example 3:

Input: list1 = [], list2 = [0]
Output: [0]

Constraints:

	The number of nodes in both lists is in the range [0, 50].
	-100 <= Node.val <= 100
	Both list1 and list2 are sorted in non-decreasing order.

===============================================================================
*/
