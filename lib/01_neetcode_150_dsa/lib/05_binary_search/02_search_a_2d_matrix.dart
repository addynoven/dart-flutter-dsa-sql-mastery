/// Problem: Search a 2D Matrix
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/search-2d-matrix
/// LeetCode Link: https://leetcode.com/problems/search-a-2d-matrix

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
  /// Solution method for Search a 2D Matrix
  dynamic searchA2dMatrix(dynamic matrix, dynamic target) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Search a 2D Matrix ===\n');
  // --- Example 1 ---
  final matrix1 = [[1,3,5,7],[10,11,16,20],[23,30,34,60]];
  final target1 = 3;
  final result1 = solution.searchA2dMatrix(matrix1, target1);
  print('Example 1 Result: $result1');
  print('Expected Output:  true\n');
  // --- Example 2 ---
  final matrix2 = [[1,3,5,7],[10,11,16,20],[23,30,34,60]];
  final target2 = 13;
  final result2 = solution.searchA2dMatrix(matrix2, target2);
  print('Example 2 Result: $result2');
  print('Expected Output:  false\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given an m x n integer matrix matrix with the following two properties:

	Each row is sorted in non-decreasing order.
	The first integer of each row is greater than the last integer of the previous row.

Given an integer target, return true if target is in matrix or false otherwise.

You must write a solution in O(log(m * n)) time complexity.

Example 1:

Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
Output: true

Example 2:

Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 13
Output: false

Constraints:

	m == matrix.length
	n == matrix[i].length
	1 <= m, n <= 100
	-104 <= matrix[i][j], target <= 104

===============================================================================
*/
