/// Problem: Climbing Stairs
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/climbing-stairs
/// LeetCode Link: https://leetcode.com/problems/climbing-stairs

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
  /// Solution method for Climbing Stairs
  dynamic climbingStairs(dynamic n) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Climbing Stairs ===\n');
  // --- Example 1 ---
  final n1 = 2;
  final result1 = solution.climbingStairs(n1);
  print('Example 1 Result: $result1');
  print('Expected Output:  2\n');
  // --- Example 2 ---
  final n2 = 3;
  final result2 = solution.climbingStairs(n2);
  print('Example 2 Result: $result2');
  print('Expected Output:  3\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are climbing a staircase. It takes n steps to reach the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

Example 1:

Input: n = 2
Output: 2
Explanation: There are two ways to climb to the top.
1. 1 step + 1 step
2. 2 steps

Example 2:

Input: n = 3
Output: 3
Explanation: There are three ways to climb to the top.
1. 1 step + 1 step + 1 step
2. 1 step + 2 steps
3. 2 steps + 1 step

Constraints:

	1 <= n <= 45

===============================================================================
*/
