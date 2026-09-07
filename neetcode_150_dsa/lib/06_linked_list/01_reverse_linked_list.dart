/// Problem: Reverse Linked List
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/reverse-a-linked-list
/// LeetCode Link: https://leetcode.com/problems/reverse-linked-list

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
  /// Solution method for Reverse Linked List
  dynamic reverseLinkedList(dynamic head) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Reverse Linked List ===\n');
  // --- Example 1 ---
  final head1 = [1,2,3,4,5];
  final result1 = solution.reverseLinkedList(head1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [5,4,3,2,1]\n');
  // --- Example 2 ---
  final head2 = [1,2];
  final result2 = solution.reverseLinkedList(head2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [2,1]\n');
  // --- Example 3 ---
  final head3 = [];
  final result3 = solution.reverseLinkedList(head3);
  print('Example 3 Result: $result3');
  print('Expected Output:  []\n');
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
