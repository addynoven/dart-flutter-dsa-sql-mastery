/// Problem: Balanced Binary Tree
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/balanced-binary-tree
/// LeetCode Link: https://leetcode.com/problems/balanced-binary-tree

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
  // TODO: Implement solution for Balanced Binary Tree
  dynamic balancedBinaryTree(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Balanced Binary Tree');

  // Example 1
  // final result1 = solution.balancedBinaryTree(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given a binary tree, determine if it is height-balanced.

Example 1:

Input: root = [3,9,20,null,null,15,7]
Output: true

Example 2:

Input: root = [1,2,2,3,3,null,null,4,4]
Output: false

Example 3:

Input: root = []
Output: true

Constraints:

	The number of nodes in the tree is in the range [0, 5000].
	-104 <= Node.val <= 104

===============================================================================
*/
