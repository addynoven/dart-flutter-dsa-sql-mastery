/// Problem: Longest Increasing Path In a Matrix
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/longest-increasing-path-in-matrix
/// LeetCode Link: https://leetcode.com/problems/longest-increasing-path-in-a-matrix

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
  /// Solution method for Longest Increasing Path In a Matrix
  dynamic longestIncreasingPathInAMatrix(dynamic matrix) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Longest Increasing Path In a Matrix ===\n');
  // --- Example 1 ---
  final matrix1 = [[9,9,4],[6,6,8],[2,1,1]];
  final result1 = solution.longestIncreasingPathInAMatrix(matrix1);
  print('Example 1 Result: $result1');
  print('Expected Output:  4\n');
  // --- Example 2 ---
  final matrix2 = [[3,4,5],[3,2,6],[2,2,1]];
  final result2 = solution.longestIncreasingPathInAMatrix(matrix2);
  print('Example 2 Result: $result2');
  print('Expected Output:  4\n');
  // --- Example 3 ---
  final matrix3 = [[1]];
  final result3 = solution.longestIncreasingPathInAMatrix(matrix3);
  print('Example 3 Result: $result3');
  print('Expected Output:  1\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an m x n integers matrix, return the length of the longest increasing path in matrix.

From each cell, you can either move in four directions: left, right, up, or down. You may not move diagonally or move outside the boundary (i.e., wrap-around is not allowed).

Example 1:

Input: matrix = [[9,9,4],[6,6,8],[2,1,1]]
Output: 4
Explanation: The longest increasing path is [1, 2, 6, 9].

Example 2:

Input: matrix = [[3,4,5],[3,2,6],[2,2,1]]
Output: 4
Explanation: The longest increasing path is [3, 4, 5, 6]. Moving diagonally is not allowed.

Example 3:

Input: matrix = [[1]]
Output: 1

Constraints:

	m == matrix.length
	n == matrix[i].length
	1 <= m, n <= 200
	0 <= matrix[i][j] <= 231 - 1

===============================================================================
*/
