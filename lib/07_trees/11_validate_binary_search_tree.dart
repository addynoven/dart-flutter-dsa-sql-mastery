/// Problem: Validate Binary Search Tree
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/valid-binary-search-tree
/// LeetCode Link: https://leetcode.com/problems/validate-binary-search-tree

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
  // TODO: Implement solution for Validate Binary Search Tree
  dynamic validateBinarySearchTree(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Validate Binary Search Tree');

  // Example 1
  // final result1 = solution.validateBinarySearchTree(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given the root of a binary tree, determine if it is a valid binary search tree (BST).

A valid BST is defined as follows:

	The left subtree of a node contains only nodes with keys strictly less than the node's key.
	The right subtree of a node contains only nodes with keys strictly greater than the node's key.
	Both the left and right subtrees must also be binary search trees.

Example 1:

Input: root = [2,1,3]
Output: true

Example 2:

Input: root = [5,1,4,null,null,3,6]
Output: false
Explanation: The root node's value is 5 but its right child's value is 4.

Constraints:

	The number of nodes in the tree is in the range [1, 104].
	-231 <= Node.val <= 231 - 1

===============================================================================
*/
