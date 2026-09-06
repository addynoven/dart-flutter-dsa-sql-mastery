/// Problem: Subtree of Another Tree
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/subtree-of-a-binary-tree
/// LeetCode Link: https://leetcode.com/problems/subtree-of-another-tree

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
  // TODO: Implement solution for Subtree of Another Tree
  dynamic subtreeOfAnotherTree(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Subtree of Another Tree');

  // Example 1
  // final result1 = solution.subtreeOfAnotherTree(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given the roots of two binary trees root and subRoot, return true if there is a subtree of root with the same structure and node values of subRoot and false otherwise.

A subtree of a binary tree tree is a tree that consists of a node in tree and all of this node's descendants. The tree tree could also be considered as a subtree of itself.

Example 1:

Input: root = [3,4,5,1,2], subRoot = [4,1,2]
Output: true

Example 2:

Input: root = [3,4,5,1,2,null,null,null,null,0], subRoot = [4,1,2]
Output: false

Constraints:

	The number of nodes in the root tree is in the range [1, 2000].
	The number of nodes in the subRoot tree is in the range [1, 1000].
	-104 <= root.val <= 104
	-104 <= subRoot.val <= 104

===============================================================================
*/
