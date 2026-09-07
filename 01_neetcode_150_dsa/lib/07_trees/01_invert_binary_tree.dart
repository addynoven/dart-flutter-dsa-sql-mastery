/// Problem: Invert Binary Tree
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/invert-a-binary-tree
/// LeetCode Link: https://leetcode.com/problems/invert-binary-tree

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
  /// Solution method for Invert Binary Tree
  dynamic invertBinaryTree(dynamic root) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Invert Binary Tree ===\n');
  // --- Example 1 ---
  final root1 = [4,2,7,1,3,6,9];
  final result1 = solution.invertBinaryTree(root1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [4,7,2,9,6,3,1]\n');
  // --- Example 2 ---
  final root2 = [2,1,3];
  final result2 = solution.invertBinaryTree(root2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [2,3,1]\n');
  // --- Example 3 ---
  final root3 = [];
  final result3 = solution.invertBinaryTree(root3);
  print('Example 3 Result: $result3');
  print('Expected Output:  []\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given the root of a binary tree, invert the tree, and return its root.

Example 1:

Input: root = [4,2,7,1,3,6,9]
Output: [4,7,2,9,6,3,1]

Example 2:

Input: root = [2,1,3]
Output: [2,3,1]

Example 3:

Input: root = []
Output: []

Constraints:

	The number of nodes in the tree is in the range [0, 100].
	-100 <= Node.val <= 100

===============================================================================
*/
