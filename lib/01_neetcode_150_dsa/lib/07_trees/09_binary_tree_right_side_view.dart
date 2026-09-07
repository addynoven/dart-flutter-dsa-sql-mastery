/// Problem: Binary Tree Right Side View
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/binary-tree-right-side-view
/// LeetCode Link: https://leetcode.com/problems/binary-tree-right-side-view

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
  /// Solution method for Binary Tree Right Side View
  dynamic binaryTreeRightSideView(dynamic root) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Binary Tree Right Side View ===\n');
  // --- Example 1 ---
  final root1 = [1,2,3,null,5,null,4];
  final result1 = solution.binaryTreeRightSideView(root1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [1,3,4]\n');
  // --- Example 2 ---
  final root2 = [1,2,3,4,null,null,null,5];
  final result2 = solution.binaryTreeRightSideView(root2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [1,3,4,5]\n');
  // --- Example 3 ---
  final root3 = [1,null,3];
  final result3 = solution.binaryTreeRightSideView(root3);
  print('Example 3 Result: $result3');
  print('Expected Output:  [1,3]\n');
  // --- Example 4 ---
  final root4 = [];
  final result4 = solution.binaryTreeRightSideView(root4);
  print('Example 4 Result: $result4');
  print('Expected Output:  []\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given the root of a binary tree, imagine yourself standing on the right side of it, return the values of the nodes you can see ordered from top to bottom.

Example 1:

Input: root = [1,2,3,null,5,null,4]

Output: [1,3,4]

Explanation:

Example 2:

Input: root = [1,2,3,4,null,null,null,5]

Output: [1,3,4,5]

Explanation:

Example 3:

Input: root = [1,null,3]

Output: [1,3]

Example 4:

Input: root = []

Output: []

Constraints:

	The number of nodes in the tree is in the range [0, 100].
	-100 <= Node.val <= 100

===============================================================================
*/
