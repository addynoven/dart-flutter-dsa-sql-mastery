/// Problem: Longest Substring Without Repeating Characters
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/longest-substring-without-duplicates
/// LeetCode Link: https://leetcode.com/problems/longest-substring-without-repeating-characters

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
  /// Solution method for Longest Substring Without Repeating Characters
  dynamic longestSubstringWithoutRepeatingCharacters(dynamic s) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Longest Substring Without Repeating Characters ===\n');
  // --- Example 1 ---
  final s1 = "abcabcbb";
  final result1 = solution.longestSubstringWithoutRepeatingCharacters(s1);
  print('Example 1 Result: $result1');
  print('Expected Output:  3\n');
  // --- Example 2 ---
  final s2 = "bbbbb";
  final result2 = solution.longestSubstringWithoutRepeatingCharacters(s2);
  print('Example 2 Result: $result2');
  print('Expected Output:  1\n');
  // --- Example 3 ---
  final s3 = "pwwkew";
  final result3 = solution.longestSubstringWithoutRepeatingCharacters(s3);
  print('Example 3 Result: $result3');
  print('Expected Output:  3\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given a string s, find the length of the longest substring without duplicate characters.

Example 1:

Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3. Note that "bca" and "cab" are also correct answers.

Example 2:

Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.

Example 3:

Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

Constraints:

	0 <= s.length <= 105
	s consists of English letters, digits, symbols and spaces.

===============================================================================
*/
