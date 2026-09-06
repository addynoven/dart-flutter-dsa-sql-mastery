/// Problem: Word Break
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/word-break
/// LeetCode Link: https://leetcode.com/problems/word-break

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
  /// Solution method for Word Break
  dynamic wordBreak(dynamic s, dynamic wordDict) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Word Break ===\n');
  // --- Example 1 ---
  final s1 = "leetcode";
  final wordDict1 = ["leet","code"];
  final result1 = solution.wordBreak(s1, wordDict1);
  print('Example 1 Result: $result1');
  print('Expected Output:  true\n');
  // --- Example 2 ---
  final s2 = "applepenapple";
  final wordDict2 = ["apple","pen"];
  final result2 = solution.wordBreak(s2, wordDict2);
  print('Example 2 Result: $result2');
  print('Expected Output:  true\n');
  // --- Example 3 ---
  final s3 = "catsandog";
  final wordDict3 = ["cats","dog","sand","and","cat"];
  final result3 = solution.wordBreak(s3, wordDict3);
  print('Example 3 Result: $result3');
  print('Expected Output:  false\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given a string s and a dictionary of strings wordDict, return true if s can be segmented into a space-separated sequence of one or more dictionary words.

Note that the same word in the dictionary may be reused multiple times in the segmentation.

Example 1:

Input: s = "leetcode", wordDict = ["leet","code"]
Output: true
Explanation: Return true because "leetcode" can be segmented as "leet code".

Example 2:

Input: s = "applepenapple", wordDict = ["apple","pen"]
Output: true
Explanation: Return true because "applepenapple" can be segmented as "apple pen apple".
Note that you are allowed to reuse a dictionary word.

Example 3:

Input: s = "catsandog", wordDict = ["cats","dog","sand","and","cat"]
Output: false

Constraints:

	1 <= s.length <= 300
	1 <= wordDict.length <= 1000
	1 <= wordDict[i].length <= 20
	s and wordDict[i] consist of only lowercase English letters.
	All the strings of wordDict are unique.

===============================================================================
*/
