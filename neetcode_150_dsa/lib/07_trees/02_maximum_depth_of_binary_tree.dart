/// Problem: Maximum Depth of Binary Tree
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/depth-of-binary-tree
/// LeetCode Link: https://leetcode.com/problems/maximum-depth-of-binary-tree

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
  /// Solution method for Maximum Depth of Binary Tree
  dynamic maximumDepthOfBinaryTree(dynamic root) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Maximum Depth of Binary Tree ===\n');
  // --- Example 1 ---
  final root1 = [3,9,20,null,null,15,7];
  final result1 = solution.maximumDepthOfBinaryTree(root1);
  print('Example 1 Result: $result1');
  print('Expected Output:  3\n');
  // --- Example 2 ---
  final root2 = [1,null,2];
  final result2 = solution.maximumDepthOfBinaryTree(root2);
  print('Example 2 Result: $result2');
  print('Expected Output:  2\n');
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
