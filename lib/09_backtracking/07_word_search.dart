/// Problem: Word Search
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/search-for-word
/// LeetCode Link: https://leetcode.com/problems/word-search

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
  /// Solution method for Word Search
  dynamic wordSearch(dynamic board, dynamic word) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Word Search ===\n');
  // --- Example 1 ---
  final board1 = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]];
  final word1 = "ABCCED";
  final result1 = solution.wordSearch(board1, word1);
  print('Example 1 Result: $result1');
  print('Expected Output:  true\n');
  // --- Example 2 ---
  final board2 = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]];
  final word2 = "SEE";
  final result2 = solution.wordSearch(board2, word2);
  print('Example 2 Result: $result2');
  print('Expected Output:  true\n');
  // --- Example 3 ---
  final board3 = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]];
  final word3 = "ABCB";
  final result3 = solution.wordSearch(board3, word3);
  print('Example 3 Result: $result3');
  print('Expected Output:  false\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an m x n grid of characters board and a string word, return true if word exists in the grid.

The word can be constructed from letters of sequentially adjacent cells, where adjacent cells are horizontally or vertically neighboring. The same letter cell may not be used more than once.

Example 1:

Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCCED"
Output: true

Example 2:

Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "SEE"
Output: true

Example 3:

Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCB"
Output: false

Constraints:

	m == board.length
	n = board[i].length
	1 <= m, n <= 6
	1 <= word.length <= 15
	board and word consists of only lowercase and uppercase English letters.

Follow up: Could you use search pruning to make your solution faster with a larger board?

===============================================================================
*/
