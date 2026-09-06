/// Problem: Reverse Linked List
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/reverse-a-linked-list
/// LeetCode Link: https://leetcode.com/problems/reverse-linked-list

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
  // TODO: Implement solution for Reverse Linked List
  dynamic reverseLinkedList(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Reverse Linked List');

  // Example 1
  // final result1 = solution.reverseLinkedList(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given the head of a singly linked list, reverse the list, and return the reversed list.

Example 1:

Input: head = [1,2,3,4,5]
Output: [5,4,3,2,1]

Example 2:

Input: head = [1,2]
Output: [2,1]

Example 3:

Input: head = []
Output: []

Constraints:

	The number of nodes in the list is the range [0, 5000].
	-5000 <= Node.val <= 5000

Follow up: A linked list can be reversed either iteratively or recursively. Could you implement both?

===============================================================================
*/
