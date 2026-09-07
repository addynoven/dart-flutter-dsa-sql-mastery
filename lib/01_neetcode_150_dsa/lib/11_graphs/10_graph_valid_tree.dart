/// Problem: Graph Valid Tree
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/valid-tree
/// LeetCode Link: https://leetcode.com/problems/graph-valid-tree

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
  /// Solution method for Graph Valid Tree
  dynamic graphValidTree(dynamic n, dynamic edges) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Graph Valid Tree ===\n');
  // --- Example 1 ---
  final n1 = 5;
  final edges1 = [[0,1],[0,2],[0,3],[1,4]];
  final result1 = solution.graphValidTree(n1, edges1);
  print('Example 1 Result: $result1');
  print('Expected Output:  true\n');
  // --- Example 2 ---
  final n2 = 5;
  final edges2 = [[0,1],[1,2],[2,3],[1,3],[1,4]];
  final result2 = solution.graphValidTree(n2, edges2);
  print('Example 2 Result: $result2');
  print('Expected Output:  false\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given n nodes labeled from 0 to n - 1 and a list of undirected edges, write a function to check whether these edges make up a valid tree.

Example 1:
Input: n = 5, edges = [[0,1],[0,2],[0,3],[1,4]]
Output: true

Example 2:
Input: n = 5, edges = [[0,1],[1,2],[2,3],[1,3],[1,4]]
Output: false

===============================================================================
*/
