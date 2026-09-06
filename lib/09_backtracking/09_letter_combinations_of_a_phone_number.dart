/// Problem: Letter Combinations of a Phone Number
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/combinations-of-a-phone-number
/// LeetCode Link: https://leetcode.com/problems/letter-combinations-of-a-phone-number

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
  /// Solution method for Letter Combinations of a Phone Number
  dynamic letterCombinationsOfAPhoneNumber(dynamic digits) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Letter Combinations of a Phone Number ===\n');
  // --- Example 1 ---
  final digits1 = "23";
  final result1 = solution.letterCombinationsOfAPhoneNumber(digits1);
  print('Example 1 Result: $result1');
  print('Expected Output:  ["ad","ae","af","bd","be","bf","cd","ce","cf"]\n');
  // --- Example 2 ---
  final digits2 = "2";
  final result2 = solution.letterCombinationsOfAPhoneNumber(digits2);
  print('Example 2 Result: $result2');
  print('Expected Output:  ["a","b","c"]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.

A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.

Example 1:

Input: digits = "23"
Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]

Example 2:

Input: digits = "2"
Output: ["a","b","c"]

Constraints:

	1 <= digits.length <= 4
	digits[i] is a digit in the range ['2', '9'].

===============================================================================
*/
