/// Problem: Plus One
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/plus-one
/// LeetCode Link: https://leetcode.com/problems/plus-one

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
  /// Solution method for Plus One
  dynamic plusOne(dynamic digits) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Plus One ===\n');
  // --- Example 1 ---
  final digits1 = [1,2,3];
  final result1 = solution.plusOne(digits1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [1,2,4]\n');
  // --- Example 2 ---
  final digits2 = [4,3,2,1];
  final result2 = solution.plusOne(digits2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [4,3,2,2]\n');
  // --- Example 3 ---
  final digits3 = [9];
  final result3 = solution.plusOne(digits3);
  print('Example 3 Result: $result3');
  print('Expected Output:  [1,0]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.

Increment the large integer by one and return the resulting array of digits.

Example 1:

Input: digits = [1,2,3]
Output: [1,2,4]
Explanation: The array represents the integer 123.
Incrementing by one gives 123 + 1 = 124.
Thus, the result should be [1,2,4].

Example 2:

Input: digits = [4,3,2,1]
Output: [4,3,2,2]
Explanation: The array represents the integer 4321.
Incrementing by one gives 4321 + 1 = 4322.
Thus, the result should be [4,3,2,2].

Example 3:

Input: digits = [9]
Output: [1,0]
Explanation: The array represents the integer 9.
Incrementing by one gives 9 + 1 = 10.
Thus, the result should be [1,0].

Constraints:

	1 <= digits.length <= 100
	0 <= digits[i] <= 9
	digits does not contain any leading 0's.

===============================================================================
*/
