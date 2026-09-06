/// Problem: Surrounded Regions
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/surrounded-regions
/// LeetCode Link: https://leetcode.com/problems/surrounded-regions

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
  // TODO: Implement solution for Surrounded Regions
  dynamic surroundedRegions(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Surrounded Regions');

  // Example 1
  // final result1 = solution.surroundedRegions(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given an m x n matrix board containing letters 'X' and 'O', capture regions that are surrounded:

	Connect: A cell is connected to adjacent cells horizontally or vertically.
	Region: To form a region connect every 'O' cell.
	Surround: A region is surrounded if none of the 'O' cells in that region are on the edge of the board. Such regions are completely enclosed by 'X' cells.

To capture a surrounded region, replace all 'O's with 'X's in-place within the original board. You do not need to return anything.

Example 1:

Input: board = [["X","X","X","X"],["X","O","O","X"],["X","X","O","X"],["X","O","X","X"]]

Output: [["X","X","X","X"],["X","X","X","X"],["X","X","X","X"],["X","O","X","X"]]

Explanation:

In the above diagram, the bottom region is not captured because it is on the edge of the board and cannot be surrounded.

Example 2:

Input: board = [["X"]]

Output: [["X"]]

Constraints:

	m == board.length
	n == board[i].length
	1 <= m, n <= 200
	board[i][j] is 'X' or 'O'.

===============================================================================
*/
