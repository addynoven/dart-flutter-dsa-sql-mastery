/// Problem: Merge K Sorted Lists
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/merge-k-sorted-linked-lists
/// LeetCode Link: https://leetcode.com/problems/merge-k-sorted-lists

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
  // TODO: Implement solution for Merge K Sorted Lists
  dynamic mergeKSortedLists(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Merge K Sorted Lists');

  // Example 1
  // final result1 = solution.mergeKSortedLists(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given an array of k linked-lists lists, each linked-list is sorted in ascending order.

Merge all the linked-lists into one sorted linked-list and return it.

Example 1:

Input: lists = [[1,4,5],[1,3,4],[2,6]]
Output: [1,1,2,3,4,4,5,6]
Explanation: The linked-lists are:
[
  1->4->5,
  1->3->4,
  2->6
]
merging them into one sorted linked list:
1->1->2->3->4->4->5->6

Example 2:

Input: lists = []
Output: []

Example 3:

Input: lists = [[]]
Output: []

Constraints:

	k == lists.length
	0 <= k <= 104
	0 <= lists[i].length <= 500
	-104 <= lists[i][j] <= 104
	lists[i] is sorted in ascending order.
	The sum of lists[i].length will not exceed 104.

===============================================================================
*/
