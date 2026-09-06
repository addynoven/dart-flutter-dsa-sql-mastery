/// Problem: Number of Islands
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/count-number-of-islands
/// LeetCode Link: https://leetcode.com/problems/number-of-islands

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
  // TODO: Implement solution for Number of Islands
  dynamic numberOfIslands(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Number of Islands');

  // Example 1
  // final result1 = solution.numberOfIslands(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an m x n 2D binary grid grid which represents a map of '1's (land) and '0's (water), return the number of islands.

An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.

Example 1:

Input: grid = [
  ["1","1","1","1","0"],
  ["1","1","0","1","0"],
  ["1","1","0","0","0"],
  ["0","0","0","0","0"]
]
Output: 1

Example 2:

Input: grid = [
  ["1","1","0","0","0"],
  ["1","1","0","0","0"],
  ["0","0","1","0","0"],
  ["0","0","0","1","1"]
]
Output: 3

Constraints:

	m == grid.length
	n == grid[i].length
	1 <= m, n <= 300
	grid[i][j] is '0' or '1'.

===============================================================================
*/
