/// Problem: Redundant Connection
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/redundant-connection
/// LeetCode Link: https://leetcode.com/problems/redundant-connection

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
  /// Solution method for Redundant Connection
  dynamic redundantConnection(dynamic edges) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Redundant Connection ===\n');
  // --- Example 1 ---
  final edges1 = [[1,2],[1,3],[2,3]];
  final result1 = solution.redundantConnection(edges1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [2,3]\n');
  // --- Example 2 ---
  final edges2 = [[1,2],[2,3],[3,4],[1,4],[1,5]];
  final result2 = solution.redundantConnection(edges2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [1,4]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

In this problem, a tree is an undirected graph that is connected and has no cycles.

You are given a graph that started as a tree with n nodes labeled from 1 to n, with one additional edge added. The added edge has two different vertices chosen from 1 to n, and was not an edge that already existed. The graph is represented as an array edges of length n where edges[i] = [ai, bi] indicates that there is an edge between nodes ai and bi in the graph.

Return an edge that can be removed so that the resulting graph is a tree of n nodes. If there are multiple answers, return the answer that occurs last in the input.

Example 1:

Input: edges = [[1,2],[1,3],[2,3]]
Output: [2,3]

Example 2:

Input: edges = [[1,2],[2,3],[3,4],[1,4],[1,5]]
Output: [1,4]

Constraints:

	n == edges.length
	3 <= n <= 1000
	edges[i].length == 2
	1 <= ai < bi <= edges.length
	ai != bi
	There are no repeated edges.
	The given graph is connected.

===============================================================================
*/
