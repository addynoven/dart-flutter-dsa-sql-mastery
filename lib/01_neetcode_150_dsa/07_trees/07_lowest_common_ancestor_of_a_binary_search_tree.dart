/// Problem: Lowest Common Ancestor of a Binary Search Tree
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/lowest-common-ancestor-in-binary-search-tree
/// LeetCode Link: https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree

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
  /// Solution method for Lowest Common Ancestor of a Binary Search Tree
  dynamic lowestCommonAncestorOfABinarySearchTree(dynamic root, dynamic p, dynamic q) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Lowest Common Ancestor of a Binary Search Tree ===\n');
  // --- Example 1 ---
  final root1 = [6,2,8,0,4,7,9,null,null,3,5];
  final p1 = 2;
  final q1 = 8;
  final result1 = solution.lowestCommonAncestorOfABinarySearchTree(root1, p1, q1);
  print('Example 1 Result: $result1');
  print('Expected Output:  6\n');
  // --- Example 2 ---
  final root2 = [6,2,8,0,4,7,9,null,null,3,5];
  final p2 = 2;
  final q2 = 4;
  final result2 = solution.lowestCommonAncestorOfABinarySearchTree(root2, p2, q2);
  print('Example 2 Result: $result2');
  print('Expected Output:  2\n');
  // --- Example 3 ---
  final root3 = [2,1];
  final p3 = 2;
  final q3 = 1;
  final result3 = solution.lowestCommonAncestorOfABinarySearchTree(root3, p3, q3);
  print('Example 3 Result: $result3');
  print('Expected Output:  2\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given a binary search tree (BST), find the lowest common ancestor (LCA) node of two given nodes in the BST.

According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes p and q as the lowest node in T that has both p and q as descendants (where we allow a node to be a descendant of itself).”

Example 1:

Input: root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 8
Output: 6
Explanation: The LCA of nodes 2 and 8 is 6.

Example 2:

Input: root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 4
Output: 2
Explanation: The LCA of nodes 2 and 4 is 2, since a node can be a descendant of itself according to the LCA definition.

Example 3:

Input: root = [2,1], p = 2, q = 1
Output: 2

Constraints:

	The number of nodes in the tree is in the range [2, 105].
	-109 <= Node.val <= 109
	All Node.val are unique.
	p != q
	p and q will exist in the BST.

===============================================================================
*/
