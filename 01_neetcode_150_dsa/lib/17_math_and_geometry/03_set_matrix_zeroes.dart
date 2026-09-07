/// Problem: Set Matrix Zeroes
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/set-zeroes-in-matrix
/// LeetCode Link: https://leetcode.com/problems/set-matrix-zeroes

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
  /// Solution method for Set Matrix Zeroes
  dynamic setMatrixZeroes(dynamic matrix) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Set Matrix Zeroes ===\n');
  // --- Example 1 ---
  final matrix1 = [[1,1,1],[1,0,1],[1,1,1]];
  final result1 = solution.setMatrixZeroes(matrix1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [[1,0,1],[0,0,0],[1,0,1]]\n');
  // --- Example 2 ---
  final matrix2 = [[0,1,2,0],[3,4,5,2],[1,3,1,5]];
  final result2 = solution.setMatrixZeroes(matrix2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [[0,0,0,0],[0,4,5,0],[0,3,1,0]]\n');
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
