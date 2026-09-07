/// Problem: Min Cost Climbing Stairs
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/min-cost-climbing-stairs
/// LeetCode Link: https://leetcode.com/problems/min-cost-climbing-stairs

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
  /// Solution method for Min Cost Climbing Stairs
  dynamic minCostClimbingStairs(dynamic cost) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Min Cost Climbing Stairs ===\n');
  // --- Example 1 ---
  final cost1 = [10,15,20];
  final result1 = solution.minCostClimbingStairs(cost1);
  print('Example 1 Result: $result1');
  print('Expected Output:  15\n');
  // --- Example 2 ---
  final cost2 = [1,100,1,1,1,100,1,1,100,1];
  final result2 = solution.minCostClimbingStairs(cost2);
  print('Example 2 Result: $result2');
  print('Expected Output:  6\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given an integer array cost where cost[i] is the cost of ith step on a staircase.

Once you pay the cost, you can either climb one or two steps.

You can either start from the step with index 0, or the step with index 1.

Return the minimum cost to reach the top of the staircase, which is the position just past the last step (index cost.length).

Example 1:

Input: cost = [10,15,20]
Output: 15
Explanation: You will start at index 1.
- Pay 15 and climb two steps to reach the top.
The total cost is 15.

Example 2:

Input: cost = [1,100,1,1,1,100,1,1,100,1]
Output: 6
Explanation: You will start at index 0.
- Pay 1 and climb two steps to reach index 2.
- Pay 1 and climb two steps to reach index 4.
- Pay 1 and climb two steps to reach index 6.
- Pay 1 and climb one step to reach index 7.
- Pay 1 and climb two steps to reach index 9.
- Pay 1 and climb one step to reach the top.
The total cost is 6.

Constraints:

	2 <= cost.length <= 1000
	0 <= cost[i] <= 999

===============================================================================
*/
