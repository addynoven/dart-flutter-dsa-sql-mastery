/// Problem: Kth Smallest Element In a Bst
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/kth-smallest-integer-in-bst
/// LeetCode Link: https://leetcode.com/problems/kth-smallest-element-in-a-bst

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
  /// Solution method for Kth Smallest Element In a Bst
  dynamic kthSmallestElementInABst(dynamic root, dynamic k) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Kth Smallest Element In a Bst ===\n');
  // --- Example 1 ---
  final root1 = [3,1,4,null,2];
  final k1 = 1;
  final result1 = solution.kthSmallestElementInABst(root1, k1);
  print('Example 1 Result: $result1');
  print('Expected Output:  1\n');
  // --- Example 2 ---
  final root2 = [5,3,6,2,4,null,null,1];
  final k2 = 3;
  final result2 = solution.kthSmallestElementInABst(root2, k2);
  print('Example 2 Result: $result2');
  print('Expected Output:  3\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given the root of a binary search tree, and an integer k, return the kth smallest value (1-indexed) of all the values of the nodes in the tree.

Example 1:

Input: root = [3,1,4,null,2], k = 1
Output: 1

Example 2:

Input: root = [5,3,6,2,4,null,null,1], k = 3
Output: 3

Constraints:

	The number of nodes in the tree is n.
	1 <= k <= n <= 104
	0 <= Node.val <= 104

Follow up: If the BST is modified often (i.e., we can do insert and delete operations) and you need to find the kth smallest frequently, how would you optimize?

===============================================================================
*/
