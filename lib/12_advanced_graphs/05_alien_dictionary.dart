/// Problem: Alien Dictionary
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/foreign-dictionary
/// LeetCode Link: https://leetcode.com/problems/alien-dictionary

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
  // TODO: Implement solution for Alien Dictionary
  dynamic alienDictionary(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Alien Dictionary');

  // Example 1
  // final result1 = solution.alienDictionary(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

There is a new alien language that uses the Latin alphabet. However, the order among the letters is unknown to you. You are given a list of strings words from the alien language's dictionary, where the strings in words are sorted lexicographically according to the rules of this new language.

Return a string of the unique letters in the new alien language sorted in lexicographically increasing order by the new language's rules. If there is no possible order, return "".

Example 1:
Input: words = ["wrt","wrf","er","ett","rftt"]
Output: "wertf"

Example 2:
Input: words = ["z","x"]
Output: "zx"

Example 3:
Input: words = ["z","x","z"]
Output: "" 

===============================================================================
*/
