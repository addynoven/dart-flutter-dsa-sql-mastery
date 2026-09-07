/// Problem: Reverse Nodes In K Group
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/reverse-nodes-in-k-group
/// LeetCode Link: https://leetcode.com/problems/reverse-nodes-in-k-group

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
  /// Solution method for Reverse Nodes In K Group
  dynamic reverseNodesInKGroup(dynamic head, dynamic k) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Reverse Nodes In K Group ===\n');
  // --- Example 1 ---
  final head1 = [1,2,3,4,5];
  final k1 = 2;
  final result1 = solution.reverseNodesInKGroup(head1, k1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [2,1,4,3,5]\n');
  // --- Example 2 ---
  final head2 = [1,2,3,4,5];
  final k2 = 3;
  final result2 = solution.reverseNodesInKGroup(head2, k2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [3,2,1,4,5]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given the head of a linked list, reverse the nodes of the list k at a time, and return the modified list.

k is a positive integer and is less than or equal to the length of the linked list. If the number of nodes is not a multiple of k then left-out nodes, in the end, should remain as it is.

You may not alter the values in the list's nodes, only nodes themselves may be changed.

Example 1:

Input: head = [1,2,3,4,5], k = 2
Output: [2,1,4,3,5]

Example 2:

Input: head = [1,2,3,4,5], k = 3
Output: [3,2,1,4,5]

Constraints:

	The number of nodes in the list is n.
	1 <= k <= n <= 5000
	0 <= Node.val <= 1000

Follow-up: Can you solve the problem in O(1) extra memory space?

===============================================================================
*/
