/// Problem: Construct Binary Tree From Preorder And Inorder Traversal
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/binary-tree-from-preorder-and-inorder-traversal
/// LeetCode Link: https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal

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
  // TODO: Implement solution for Construct Binary Tree From Preorder And Inorder Traversal
  dynamic constructBinaryTreeFromPreorderAndInorderTraversal(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Construct Binary Tree From Preorder And Inorder Traversal');

  // Example 1
  // final result1 = solution.constructBinaryTreeFromPreorderAndInorderTraversal(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given two integer arrays preorder and inorder where preorder is the preorder traversal of a binary tree and inorder is the inorder traversal of the same tree, construct and return the binary tree.

Example 1:

Input: preorder = [3,9,20,15,7], inorder = [9,3,15,20,7]
Output: [3,9,20,null,null,15,7]

Example 2:

Input: preorder = [-1], inorder = [-1]
Output: [-1]

Constraints:

	1 <= preorder.length <= 3000
	inorder.length == preorder.length
	-3000 <= preorder[i], inorder[i] <= 3000
	preorder and inorder consist of unique values.
	Each value of inorder also appears in preorder.
	preorder is guaranteed to be the preorder traversal of the tree.
	inorder is guaranteed to be the inorder traversal of the tree.

===============================================================================
*/
