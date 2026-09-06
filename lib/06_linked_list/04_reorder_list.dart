/// Problem: Reorder List
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/reorder-linked-list
/// LeetCode Link: https://leetcode.com/problems/reorder-list

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
  /// Solution method for Reorder List
  dynamic reorderList(dynamic head) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Reorder List ===\n');
  // --- Example 1 ---
  final head1 = [1,2,3,4];
  final result1 = solution.reorderList(head1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [1,4,2,3]\n');
  // --- Example 2 ---
  final head2 = [1,2,3,4,5];
  final result2 = solution.reorderList(head2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [1,5,2,4,3]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given the head of a singly linked-list. The list can be represented as:

L0 → L1 → … → Ln - 1 → Ln

Reorder the list to be on the following form:

L0 → Ln → L1 → Ln - 1 → L2 → Ln - 2 → …

You may not modify the values in the list's nodes. Only nodes themselves may be changed.

Example 1:

Input: head = [1,2,3,4]
Output: [1,4,2,3]

Example 2:

Input: head = [1,2,3,4,5]
Output: [1,5,2,4,3]

Constraints:

	The number of nodes in the list is in the range [1, 5 * 104].
	1 <= Node.val <= 1000

===============================================================================
*/
