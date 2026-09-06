/// Problem: Same Tree
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/same-binary-tree
/// LeetCode Link: https://leetcode.com/problems/same-tree

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
  // TODO: Implement solution for Same Tree
  dynamic sameTree(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Same Tree');

  // Example 1
  // final result1 = solution.sameTree(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given the roots of two binary trees p and q, write a function to check if they are the same or not.

Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.

Example 1:

Input: p = [1,2,3], q = [1,2,3]
Output: true

Example 2:

Input: p = [1,2], q = [1,null,2]
Output: false

Example 3:

Input: p = [1,2,1], q = [1,1,2]
Output: false

Constraints:

	The number of nodes in both trees is in the range [0, 100].
	-104 <= Node.val <= 104

===============================================================================
*/
