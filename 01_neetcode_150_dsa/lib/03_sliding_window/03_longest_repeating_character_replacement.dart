/// Problem: Longest Repeating Character Replacement
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/longest-repeating-substring-with-replacement
/// LeetCode Link: https://leetcode.com/problems/longest-repeating-character-replacement

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
  /// Solution method for Longest Repeating Character Replacement
  dynamic longestRepeatingCharacterReplacement(dynamic s, dynamic k) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Longest Repeating Character Replacement ===\n');
  // --- Example 1 ---
  final s1 = "ABAB";
  final k1 = 2;
  final result1 = solution.longestRepeatingCharacterReplacement(s1, k1);
  print('Example 1 Result: $result1');
  print('Expected Output:  4\n');
  // --- Example 2 ---
  final s2 = "AABABBA";
  final k2 = 1;
  final result2 = solution.longestRepeatingCharacterReplacement(s2, k2);
  print('Example 2 Result: $result2');
  print('Expected Output:  4\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given a string s and an integer k. You can choose any character of the string and change it to any other uppercase English character. You can perform this operation at most k times.

Return the length of the longest substring containing the same letter you can get after performing the above operations.

Example 1:

Input: s = "ABAB", k = 2
Output: 4
Explanation: Replace the two 'A's with two 'B's or vice versa.

Example 2:

Input: s = "AABABBA", k = 1
Output: 4
Explanation: Replace the one 'A' in the middle with 'B' and form "AABBBBA".
The substring "BBBB" has the longest repeating letters, which is 4.
There may exists other ways to achieve this answer too.

Constraints:

	1 <= s.length <= 105
	s consists of only uppercase English letters.
	0 <= k <= s.length

===============================================================================
*/
