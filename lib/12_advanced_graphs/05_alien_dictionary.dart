/// Problem: Alien Dictionary
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/foreign-dictionary
/// LeetCode Link: https://leetcode.com/problems/alien-dictionary

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
  /// Solution method for Alien Dictionary
  dynamic alienDictionary(dynamic words) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Alien Dictionary ===\n');
  // --- Example 1 ---
  final words1 = ["wrt","wrf","er","ett","rftt"];
  final result1 = solution.alienDictionary(words1);
  print('Example 1 Result: $result1');
  print('Expected Output:  "wertf"\n');
  // --- Example 2 ---
  final words2 = ["z","x"];
  final result2 = solution.alienDictionary(words2);
  print('Example 2 Result: $result2');
  print('Expected Output:  "zx"\n');
  // --- Example 3 ---
  final words3 = ["z","x","z"];
  final result3 = solution.alienDictionary(words3);
  print('Example 3 Result: $result3');
  print('Expected Output:  ""\n');
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
