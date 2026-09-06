/// Problem: Letter Combinations of a Phone Number
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/combinations-of-a-phone-number
/// LeetCode Link: https://leetcode.com/problems/letter-combinations-of-a-phone-number

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
  // TODO: Implement solution for Letter Combinations of a Phone Number
  dynamic letterCombinationsOfAPhoneNumber(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Letter Combinations of a Phone Number');

  // Example 1
  // final result1 = solution.letterCombinationsOfAPhoneNumber(/* test input */);
  // print('Result 1: $result1');
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
