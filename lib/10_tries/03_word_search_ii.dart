/// Problem: Word Search II
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/search-for-word-ii
/// LeetCode Link: https://leetcode.com/problems/word-search-ii

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
  /// Solution method for Word Search II
  dynamic wordSearchIi(dynamic board, dynamic words) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Word Search II ===\n');
  // --- Example 1 ---
  final board1 = [["o","a","a","n"],["e","t","a","e"],["i","h","k","r"],["i","f","l","v"]];
  final words1 = ["oath","pea","eat","rain"];
  final result1 = solution.wordSearchIi(board1, words1);
  print('Example 1 Result: $result1');
  print('Expected Output:  ["eat","oath"]\n');
  // --- Example 2 ---
  final board2 = [["a","b"],["c","d"]];
  final words2 = ["abcb"];
  final result2 = solution.wordSearchIi(board2, words2);
  print('Example 2 Result: $result2');
  print('Expected Output:  []\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an m x n board of characters and a list of strings words, return all words on the board.

Each word must be constructed from letters of sequentially adjacent cells, where adjacent cells are horizontally or vertically neighboring. The same letter cell may not be used more than once in a word.

Example 1:

Input: board = [["o","a","a","n"],["e","t","a","e"],["i","h","k","r"],["i","f","l","v"]], words = ["oath","pea","eat","rain"]
Output: ["eat","oath"]

Example 2:

Input: board = [["a","b"],["c","d"]], words = ["abcb"]
Output: []

Constraints:

	m == board.length
	n == board[i].length
	1 <= m, n <= 12
	board[i][j] is a lowercase English letter.
	1 <= words.length <= 3 * 104
	1 <= words[i].length <= 10
	words[i] consists of lowercase English letters.
	All the strings of words are unique.

===============================================================================
*/
