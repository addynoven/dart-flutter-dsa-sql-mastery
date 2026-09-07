/// Problem: Spiral Matrix
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/spiral-matrix
/// LeetCode Link: https://leetcode.com/problems/spiral-matrix

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
  /// Solution method for Spiral Matrix
  dynamic spiralMatrix(dynamic matrix) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Spiral Matrix ===\n');
  // --- Example 1 ---
  final matrix1 = [[1,2,3],[4,5,6],[7,8,9]];
  final result1 = solution.spiralMatrix(matrix1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [1,2,3,6,9,8,7,4,5]\n');
  // --- Example 2 ---
  final matrix2 = [[1,2,3,4],[5,6,7,8],[9,10,11,12]];
  final result2 = solution.spiralMatrix(matrix2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [1,2,3,4,8,12,11,10,9,5,6,7]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an m x n matrix, return all elements of the matrix in spiral order.

Example 1:

Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
Output: [1,2,3,6,9,8,7,4,5]

Example 2:

Input: matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
Output: [1,2,3,4,8,12,11,10,9,5,6,7]

Constraints:

	m == matrix.length
	n == matrix[i].length
	1 <= m, n <= 10
	-100 <= matrix[i][j] <= 100

===============================================================================
*/
