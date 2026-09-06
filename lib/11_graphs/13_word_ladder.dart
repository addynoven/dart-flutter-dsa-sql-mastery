/// Problem: Word Ladder
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/word-ladder
/// LeetCode Link: https://leetcode.com/problems/word-ladder

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
  // TODO: Implement solution for Word Ladder
  dynamic wordLadder(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Word Ladder');

  // Example 1
  // final result1 = solution.wordLadder(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

A transformation sequence from word beginWord to word endWord using a dictionary wordList is a sequence of words beginWord -> s1 -> s2 -> ... -> sk such that:

	Every adjacent pair of words differs by a single letter.
	Every si for 1 <= i <= k is in wordList. Note that beginWord does not need to be in wordList.
	sk == endWord

Given two words, beginWord and endWord, and a dictionary wordList, return the number of words in the shortest transformation sequence from beginWord to endWord, or 0 if no such sequence exists.

Example 1:

Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log","cog"]
Output: 5
Explanation: One shortest transformation sequence is "hit" -> "hot" -> "dot" -> "dog" -> cog", which is 5 words long.

Example 2:

Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log"]
Output: 0
Explanation: The endWord "cog" is not in wordList, therefore there is no valid transformation sequence.

Constraints:

	1 <= beginWord.length <= 10
	endWord.length == beginWord.length
	1 <= wordList.length <= 5000
	wordList[i].length == beginWord.length
	beginWord, endWord, and wordList[i] consist of lowercase English letters.
	beginWord != endWord
	All the words in wordList are unique.

===============================================================================
*/
