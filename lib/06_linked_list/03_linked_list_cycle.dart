/// Problem: Linked List Cycle
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/linked-list-cycle-detection
/// LeetCode Link: https://leetcode.com/problems/linked-list-cycle

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
  /// Solution method for Linked List Cycle
  dynamic linkedListCycle(dynamic head, dynamic pos) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Linked List Cycle ===\n');
  // --- Example 1 ---
  final head1 = [3,2,0,-4];
  final pos1 = 1;
  final result1 = solution.linkedListCycle(head1, pos1);
  print('Example 1 Result: $result1');
  print('Expected Output:  true\n');
  // --- Example 2 ---
  final head2 = [1,2];
  final pos2 = 0;
  final result2 = solution.linkedListCycle(head2, pos2);
  print('Example 2 Result: $result2');
  print('Expected Output:  true\n');
  // --- Example 3 ---
  final head3 = [1];
  final pos3 = -1;
  final result3 = solution.linkedListCycle(head3, pos3);
  print('Example 3 Result: $result3');
  print('Expected Output:  false\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given head, the head of a linked list, determine if the linked list has a cycle in it.

There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the next pointer. Internally, pos is used to denote the index of the node that tail's next pointer is connected to. Note that pos is not passed as a parameter.

Return true if there is a cycle in the linked list. Otherwise, return false.

Example 1:

Input: head = [3,2,0,-4], pos = 1
Output: true
Explanation: There is a cycle in the linked list, where the tail connects to the 1st node (0-indexed).

Example 2:

Input: head = [1,2], pos = 0
Output: true
Explanation: There is a cycle in the linked list, where the tail connects to the 0th node.

Example 3:

Input: head = [1], pos = -1
Output: false
Explanation: There is no cycle in the linked list.

Constraints:

	The number of the nodes in the list is in the range [0, 104].
	-105 <= Node.val <= 105
	pos is -1 or a valid index in the linked-list.

Follow up: Can you solve it using O(1) (i.e. constant) memory?

===============================================================================
*/
