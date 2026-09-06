/// Problem: Number of Connected Components In An Undirected Graph
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/count-connected-components
/// LeetCode Link: https://leetcode.com/problems/number-of-connected-components-in-an-undirected-graph

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
  // TODO: Implement solution for Number of Connected Components In An Undirected Graph
  dynamic numberOfConnectedComponentsInAnUndirectedGraph(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Number of Connected Components In An Undirected Graph');

  // Example 1
  // final result1 = solution.numberOfConnectedComponentsInAnUndirectedGraph(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You have a graph of n nodes. You are given an integer n and an array edges where edges[i] = [a_i, b_i] indicates an edge between node a_i and b_i.

Return the number of connected components in the graph.

Example 1:
Input: n = 5, edges = [[0,1],[1,2],[3,4]]
Output: 2

Example 2:
Input: n = 5, edges = [[0,1],[1,2],[2,3],[3,4]]
Output: 1

===============================================================================
*/
