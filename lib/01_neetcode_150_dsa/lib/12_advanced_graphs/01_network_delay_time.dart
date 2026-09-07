/// Problem: Network Delay Time
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/network-delay-time
/// LeetCode Link: https://leetcode.com/problems/network-delay-time

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
  /// Solution method for Network Delay Time
  dynamic networkDelayTime(dynamic times, dynamic n, dynamic k) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Network Delay Time ===\n');
  // --- Example 1 ---
  final times1 = [[2,1,1],[2,3,1],[3,4,1]];
  final n1 = 4;
  final k1 = 2;
  final result1 = solution.networkDelayTime(times1, n1, k1);
  print('Example 1 Result: $result1');
  print('Expected Output:  2\n');
  // --- Example 2 ---
  final times2 = [[1,2,1]];
  final n2 = 2;
  final k2 = 1;
  final result2 = solution.networkDelayTime(times2, n2, k2);
  print('Example 2 Result: $result2');
  print('Expected Output:  1\n');
  // --- Example 3 ---
  final times3 = [[1,2,1]];
  final n3 = 2;
  final k3 = 2;
  final result3 = solution.networkDelayTime(times3, n3, k3);
  print('Example 3 Result: $result3');
  print('Expected Output:  -1\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given a network of n nodes, labeled from 1 to n. You are also given times, a list of travel times as directed edges times[i] = (ui, vi, wi), where ui is the source node, vi is the target node, and wi is the time it takes for a signal to travel from source to target.

We will send a signal from a given node k. Return the minimum time it takes for all the n nodes to receive the signal. If it is impossible for all the n nodes to receive the signal, return -1.

Example 1:

Input: times = [[2,1,1],[2,3,1],[3,4,1]], n = 4, k = 2
Output: 2

Example 2:

Input: times = [[1,2,1]], n = 2, k = 1
Output: 1

Example 3:

Input: times = [[1,2,1]], n = 2, k = 2
Output: -1

Constraints:

	1 <= k <= n <= 100
	1 <= times.length <= 6000
	times[i].length == 3
	1 <= ui, vi <= n
	ui != vi
	0 <= wi <= 100
	All the pairs (ui, vi) are unique. (i.e., no multiple edges.)

===============================================================================
*/
