/// Problem: Edit Distance
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/edit-distance
/// LeetCode Link: https://leetcode.com/problems/edit-distance

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
  // TODO: Implement solution for Edit Distance
  dynamic editDistance(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Edit Distance');

  // Example 1
  // final result1 = solution.editDistance(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given two strings word1 and word2, return the minimum number of operations required to convert word1 to word2.

You have the following three operations permitted on a word:

	Insert a character
	Delete a character
	Replace a character

Example 1:

Input: word1 = "horse", word2 = "ros"
Output: 3
Explanation: 
horse -> rorse (replace 'h' with 'r')
rorse -> rose (remove 'r')
rose -> ros (remove 'e')

Example 2:

Input: word1 = "intention", word2 = "execution"
Output: 5
Explanation: 
intention -> inention (remove 't')
inention -> enention (replace 'i' with 'e')
enention -> exention (replace 'n' with 'x')
exention -> exection (replace 'n' with 'c')
exection -> execution (insert 'u')

Constraints:

	0 <= word1.length, word2.length <= 500
	word1 and word2 consist of lowercase English letters.

===============================================================================
*/
