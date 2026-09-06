/// Problem: Valid Palindrome
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/is-palindrome
/// LeetCode Link: https://leetcode.com/problems/valid-palindrome

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
  // TODO: Implement solution for Valid Palindrome
  dynamic validPalindrome(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Valid Palindrome');

  // Example 1
  // final result1 = solution.validPalindrome(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise.

Example 1:

Input: s = "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama" is a palindrome.

Example 2:

Input: s = "race a car"
Output: false
Explanation: "raceacar" is not a palindrome.

Example 3:

Input: s = " "
Output: true
Explanation: s is an empty string "" after removing non-alphanumeric characters.
Since an empty string reads the same forward and backward, it is a palindrome.

Constraints:

	1 <= s.length <= 2 * 105
	s consists only of printable ASCII characters.

===============================================================================
*/
