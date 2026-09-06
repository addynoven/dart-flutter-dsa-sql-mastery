/// Problem: Maximum Depth of Binary Tree
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/depth-of-binary-tree
/// LeetCode Link: https://leetcode.com/problems/maximum-depth-of-binary-tree

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
  // TODO: Implement solution for Maximum Depth of Binary Tree
  dynamic maximumDepthOfBinaryTree(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Maximum Depth of Binary Tree');

  // Example 1
  // final result1 = solution.maximumDepthOfBinaryTree(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given the root of a binary tree, return its maximum depth.

A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

Example 1:

Input: root = [3,9,20,null,null,15,7]
Output: 3

Example 2:

Input: root = [1,null,2]
Output: 2

Constraints:

	The number of nodes in the tree is in the range [0, 104].
	-100 <= Node.val <= 100

===============================================================================
*/
