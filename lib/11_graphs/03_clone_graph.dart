/// Problem: Clone Graph
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/clone-graph
/// LeetCode Link: https://leetcode.com/problems/clone-graph

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
  /// Solution method for Clone Graph
  dynamic cloneGraph(dynamic adjList) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Clone Graph ===\n');
  // --- Example 1 ---
  final adjList1 = [[2,4],[1,3],[2,4],[1,3]];
  final result1 = solution.cloneGraph(adjList1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [[2,4],[1,3],[2,4],[1,3]]\n');
  // --- Example 2 ---
  final adjList2 = [[]];
  final result2 = solution.cloneGraph(adjList2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [[]]\n');
  // --- Example 3 ---
  final adjList3 = [];
  final result3 = solution.cloneGraph(adjList3);
  print('Example 3 Result: $result3');
  print('Expected Output:  []\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given a reference of a node in a connected undirected graph.

Return a deep copy (clone) of the graph.

Each node in the graph contains a value (int) and a list (List[Node]) of its neighbors.

class Node {
    public int val;
    public List<Node> neighbors;
}

Test case format:

For simplicity, each node's value is the same as the node's index (1-indexed). For example, the first node with val == 1, the second node with val == 2, and so on. The graph is represented in the test case using an adjacency list.

An adjacency list is a collection of unordered lists used to represent a finite graph. Each list describes the set of neighbors of a node in the graph.

The given node will always be the first node with val = 1. You must return the copy of the given node as a reference to the cloned graph.

Example 1:

Input: adjList = [[2,4],[1,3],[2,4],[1,3]]
Output: [[2,4],[1,3],[2,4],[1,3]]
Explanation: There are 4 nodes in the graph.
1st node (val = 1)'s neighbors are 2nd node (val = 2) and 4th node (val = 4).
2nd node (val = 2)'s neighbors are 1st node (val = 1) and 3rd node (val = 3).
3rd node (val = 3)'s neighbors are 2nd node (val = 2) and 4th node (val = 4).
4th node (val = 4)'s neighbors are 1st node (val = 1) and 3rd node (val = 3).

Example 2:

Input: adjList = [[]]
Output: [[]]
Explanation: Note that the input contains one empty list. The graph consists of only one node with val = 1 and it does not have any neighbors.

Example 3:

Input: adjList = []
Output: []
Explanation: This an empty graph, it does not have any nodes.

Constraints:

	The number of nodes in the graph is in the range [0, 100].
	1 <= Node.val <= 100
	Node.val is unique for each node.
	There are no repeated edges and no self-loops in the graph.
	The Graph is connected and all nodes can be visited starting from the given node.

===============================================================================
*/
