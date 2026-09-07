/// Problem: Diameter of Binary Tree
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/binary-tree-diameter
/// LeetCode Link: https://leetcode.com/problems/diameter-of-binary-tree

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
  /// Solution method for Diameter of Binary Tree
  dynamic diameterOfBinaryTree(dynamic root) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Diameter of Binary Tree ===\n');
  // --- Example 1 ---
  final root1 = [1,2,3,4,5];
  final result1 = solution.diameterOfBinaryTree(root1);
  print('Example 1 Result: $result1');
  print('Expected Output:  3\n');
  // --- Example 2 ---
  final root2 = [1,2];
  final result2 = solution.diameterOfBinaryTree(root2);
  print('Example 2 Result: $result2');
  print('Expected Output:  1\n');
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
