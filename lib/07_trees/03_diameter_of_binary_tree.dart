/// Problem: Diameter of Binary Tree
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/binary-tree-diameter
/// LeetCode Link: https://leetcode.com/problems/diameter-of-binary-tree

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
  // TODO: Implement solution for Diameter of Binary Tree
  dynamic diameterOfBinaryTree(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Diameter of Binary Tree');

  // Example 1
  // final result1 = solution.diameterOfBinaryTree(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given the root of a binary tree, return the length of the diameter of the tree.

The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.

The length of a path between two nodes is represented by the number of edges between them.

Example 1:

Input: root = [1,2,3,4,5]
Output: 3
Explanation: 3 is the length of the path [4,2,1,3] or [5,2,1,3].

Example 2:

Input: root = [1,2]
Output: 1

Constraints:

	The number of nodes in the tree is in the range [1, 104].
	-100 <= Node.val <= 100

===============================================================================
*/
