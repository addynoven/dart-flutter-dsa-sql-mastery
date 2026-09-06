/// Problem: Same Tree
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/same-binary-tree
/// LeetCode Link: https://leetcode.com/problems/same-tree

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
  /// Solution method for Same Tree
  dynamic sameTree(dynamic p, dynamic q) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Same Tree ===\n');
  // --- Example 1 ---
  final p1 = [1,2,3];
  final q1 = [1,2,3];
  final result1 = solution.sameTree(p1, q1);
  print('Example 1 Result: $result1');
  print('Expected Output:  true\n');
  // --- Example 2 ---
  final p2 = [1,2];
  final q2 = [1,null,2];
  final result2 = solution.sameTree(p2, q2);
  print('Example 2 Result: $result2');
  print('Expected Output:  false\n');
  // --- Example 3 ---
  final p3 = [1,2,1];
  final q3 = [1,1,2];
  final result3 = solution.sameTree(p3, q3);
  print('Example 3 Result: $result3');
  print('Expected Output:  false\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given the roots of two binary trees p and q, write a function to check if they are the same or not.

Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.

Example 1:

Input: p = [1,2,3], q = [1,2,3]
Output: true

Example 2:

Input: p = [1,2], q = [1,null,2]
Output: false

Example 3:

Input: p = [1,2,1], q = [1,1,2]
Output: false

Constraints:

	The number of nodes in both trees is in the range [0, 100].
	-104 <= Node.val <= 104

===============================================================================
*/
