/// Problem: Set Matrix Zeroes
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/set-zeroes-in-matrix
/// LeetCode Link: https://leetcode.com/problems/set-matrix-zeroes

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
  // TODO: Implement solution for Set Matrix Zeroes
  dynamic setMatrixZeroes(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Set Matrix Zeroes');

  // Example 1
  // final result1 = solution.setMatrixZeroes(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an m x n integer matrix matrix, if an element is 0, set its entire row and column to 0's.

You must do it in place.

Example 1:

Input: matrix = [[1,1,1],[1,0,1],[1,1,1]]
Output: [[1,0,1],[0,0,0],[1,0,1]]

Example 2:

Input: matrix = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
Output: [[0,0,0,0],[0,4,5,0],[0,3,1,0]]

Constraints:

	m == matrix.length
	n == matrix[0].length
	1 <= m, n <= 200
	-231 <= matrix[i][j] <= 231 - 1

Follow up:

	A straightforward solution using O(mn) space is probably a bad idea.
	A simple improvement uses O(m + n) space, but still not the best solution.
	Could you devise a constant space solution?

===============================================================================
*/
