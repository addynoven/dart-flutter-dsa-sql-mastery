/// Problem: Rotting Oranges
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/rotting-fruit
/// LeetCode Link: https://leetcode.com/problems/rotting-oranges

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
  /// Solution method for Rotting Oranges
  dynamic rottingOranges(dynamic grid) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Rotting Oranges ===\n');
  // --- Example 1 ---
  final grid1 = [[2,1,1],[1,1,0],[0,1,1]];
  final result1 = solution.rottingOranges(grid1);
  print('Example 1 Result: $result1');
  print('Expected Output:  4\n');
  // --- Example 2 ---
  final grid2 = [[2,1,1],[0,1,1],[1,0,1]];
  final result2 = solution.rottingOranges(grid2);
  print('Example 2 Result: $result2');
  print('Expected Output:  -1\n');
  // --- Example 3 ---
  final grid3 = [[0,2]];
  final result3 = solution.rottingOranges(grid3);
  print('Example 3 Result: $result3');
  print('Expected Output:  0\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given an m x n grid where each cell can have one of three values:

	0 representing an empty cell,
	1 representing a fresh orange, or
	2 representing a rotten orange.

Every minute, any fresh orange that is 4-directionally adjacent to a rotten orange becomes rotten.

Return the minimum number of minutes that must elapse until no cell has a fresh orange. If this is impossible, return -1.

Example 1:

Input: grid = [[2,1,1],[1,1,0],[0,1,1]]
Output: 4

Example 2:

Input: grid = [[2,1,1],[0,1,1],[1,0,1]]
Output: -1
Explanation: The orange in the bottom left corner (row 2, column 0) is never rotten, because rotting only happens 4-directionally.

Example 3:

Input: grid = [[0,2]]
Output: 0
Explanation: Since there are already no fresh oranges at minute 0, the answer is just 0.

Constraints:

	m == grid.length
	n == grid[i].length
	1 <= m, n <= 10
	grid[i][j] is 0, 1, or 2.

===============================================================================
*/
