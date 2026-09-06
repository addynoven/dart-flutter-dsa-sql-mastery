/// Problem: Spiral Matrix
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/spiral-matrix
/// LeetCode Link: https://leetcode.com/problems/spiral-matrix

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
  // TODO: Implement solution for Spiral Matrix
  dynamic spiralMatrix(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Spiral Matrix');

  // Example 1
  // final result1 = solution.spiralMatrix(/* test input */);
  // print('Result 1: $result1');
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
