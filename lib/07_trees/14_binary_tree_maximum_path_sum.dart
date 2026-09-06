/// Problem: Binary Tree Maximum Path Sum
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/binary-tree-maximum-path-sum
/// LeetCode Link: https://leetcode.com/problems/binary-tree-maximum-path-sum

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
  // TODO: Implement solution for Binary Tree Maximum Path Sum
  dynamic binaryTreeMaximumPathSum(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Binary Tree Maximum Path Sum');

  // Example 1
  // final result1 = solution.binaryTreeMaximumPathSum(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

A path in a binary tree is a sequence of nodes where each pair of adjacent nodes in the sequence has an edge connecting them. A node can only appear in the sequence at most once. Note that the path does not need to pass through the root.

The path sum of a path is the sum of the node's values in the path.

Given the root of a binary tree, return the maximum path sum of any non-empty path.

Example 1:

Input: root = [1,2,3]
Output: 6
Explanation: The optimal path is 2 -> 1 -> 3 with a path sum of 2 + 1 + 3 = 6.

Example 2:

Input: root = [-10,9,20,null,null,15,7]
Output: 42
Explanation: The optimal path is 15 -> 20 -> 7 with a path sum of 15 + 20 + 7 = 42.

Constraints:

	The number of nodes in the tree is in the range [1, 3 * 104].
	-1000 <= Node.val <= 1000

===============================================================================
*/
