/// Problem: N Queens
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/n-queens
/// LeetCode Link: https://leetcode.com/problems/n-queens

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
  /// Solution method for N Queens
  dynamic nQueens(dynamic n) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: N Queens ===\n');
  // --- Example 1 ---
  final n1 = 4;
  final result1 = solution.nQueens(n1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [[".Q..","...Q","Q...","..Q."],["..Q.","Q...","...Q",".Q.."]]\n');
  // --- Example 2 ---
  final n2 = 1;
  final result2 = solution.nQueens(n2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [["Q"]]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

The n-queens puzzle is the problem of placing n queens on an n x n chessboard such that no two queens attack each other.

Given an integer n, return all distinct solutions to the n-queens puzzle. You may return the answer in any order.

Each solution contains a distinct board configuration of the n-queens' placement, where 'Q' and '.' both indicate a queen and an empty space, respectively.

Example 1:

Input: n = 4
Output: [[".Q..","...Q","Q...","..Q."],["..Q.","Q...","...Q",".Q.."]]
Explanation: There exist two distinct solutions to the 4-queens puzzle as shown above

Example 2:

Input: n = 1
Output: [["Q"]]

Constraints:

	1 <= n <= 9

===============================================================================
*/
