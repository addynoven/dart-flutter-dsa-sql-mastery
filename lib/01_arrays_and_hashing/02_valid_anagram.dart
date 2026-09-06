/// Problem: Valid Anagram
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/is-anagram
/// LeetCode Link: https://leetcode.com/problems/valid-anagram

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
  /// Solution method for Valid Anagram
  dynamic validAnagram(dynamic s, dynamic t) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Valid Anagram ===\n');
  // --- Example 1 ---
  final s1 = "anagram";
  final t1 = "nagaram";
  final result1 = solution.validAnagram(s1, t1);
  print('Example 1 Result: $result1');
  print('Expected Output:  true\n');
  // --- Example 2 ---
  final s2 = "rat";
  final t2 = "car";
  final result2 = solution.validAnagram(s2, t2);
  print('Example 2 Result: $result2');
  print('Expected Output:  false\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given two strings s and t, return true if t is an anagram of s, and false otherwise.

Example 1:

Input: s = "anagram", t = "nagaram"

Output: true

Example 2:

Input: s = "rat", t = "car"

Output: false

Constraints:

	1 <= s.length, t.length <= 5 * 104
	s and t consist of lowercase English letters.

Follow up: What if the inputs contain Unicode characters? How would you adapt your solution to such a case?

===============================================================================
*/
