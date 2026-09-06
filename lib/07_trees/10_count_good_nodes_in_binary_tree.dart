/// Problem: Count Good Nodes In Binary Tree
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/count-good-nodes-in-binary-tree
/// LeetCode Link: https://leetcode.com/problems/count-good-nodes-in-binary-tree

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
  // TODO: Implement solution for Count Good Nodes In Binary Tree
  dynamic countGoodNodesInBinaryTree(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Count Good Nodes In Binary Tree');

  // Example 1
  // final result1 = solution.countGoodNodesInBinaryTree(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given a binary tree root, a node X in the tree is named good if in the path from root to X there are no nodes with a value greater than X.

Return the number of good nodes in the binary tree.

Example 1:

Input: root = [3,1,4,3,null,1,5]
Output: 4
Explanation: Nodes in blue are good.
Root Node (3) is always a good node.
Node 4 -> (3,4) is the maximum value in the path starting from the root.
Node 5 -> (3,4,5) is the maximum value in the path
Node 3 -> (3,1,3) is the maximum value in the path.

Example 2:

Input: root = [3,3,null,4,2]
Output: 3
Explanation: Node 2 -> (3, 3, 2) is not good, because "3" is higher than it.

Example 3:

Input: root = [1]
Output: 1
Explanation: Root is considered as good.

Constraints:

	The number of nodes in the binary tree is in the range [1, 10^5].
	Each node's value is between [-10^4, 10^4].

===============================================================================
*/
