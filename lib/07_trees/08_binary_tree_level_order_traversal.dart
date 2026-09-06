/// Problem: Binary Tree Level Order Traversal
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/level-order-traversal-of-binary-tree
/// LeetCode Link: https://leetcode.com/problems/binary-tree-level-order-traversal

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
  // TODO: Implement solution for Binary Tree Level Order Traversal
  dynamic binaryTreeLevelOrderTraversal(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Binary Tree Level Order Traversal');

  // Example 1
  // final result1 = solution.binaryTreeLevelOrderTraversal(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given the root of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).

Example 1:

Input: root = [3,9,20,null,null,15,7]
Output: [[3],[9,20],[15,7]]

Example 2:

Input: root = [1]
Output: [[1]]

Example 3:

Input: root = []
Output: []

Constraints:

	The number of nodes in the tree is in the range [0, 2000].
	-1000 <= Node.val <= 1000

===============================================================================
*/
