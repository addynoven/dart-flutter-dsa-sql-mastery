/// Problem: Unique Paths
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/count-paths
/// LeetCode Link: https://leetcode.com/problems/unique-paths

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
  /// Solution method for Unique Paths
  dynamic uniquePaths(dynamic m, dynamic n) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Unique Paths ===\n');
  // --- Example 1 ---
  final m1 = 3;
  final n1 = 7;
  final result1 = solution.uniquePaths(m1, n1);
  print('Example 1 Result: $result1');
  print('Expected Output:  28\n');
  // --- Example 2 ---
  final m2 = 3;
  final n2 = 2;
  final result2 = solution.uniquePaths(m2, n2);
  print('Example 2 Result: $result2');
  print('Expected Output:  3\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

There is a robot on an m x n grid. The robot is initially located at the top-left corner (i.e., grid[0][0]). The robot tries to move to the bottom-right corner (i.e., grid[m - 1][n - 1]). The robot can only move either down or right at any point in time.

Given the two integers m and n, return the number of possible unique paths that the robot can take to reach the bottom-right corner.

The test cases are generated so that the answer will be less than or equal to 2 * 109.

Example 1:

Input: m = 3, n = 7
Output: 28

Example 2:

Input: m = 3, n = 2
Output: 3
Explanation: From the top-left corner, there are a total of 3 ways to reach the bottom-right corner:
1. Right -> Down -> Down
2. Down -> Down -> Right
3. Down -> Right -> Down

Constraints:

	1 <= m, n <= 100

===============================================================================
*/
