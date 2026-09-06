/// Problem: Find The Duplicate Number
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/find-duplicate-integer
/// LeetCode Link: https://leetcode.com/problems/find-the-duplicate-number

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
  // TODO: Implement solution for Find The Duplicate Number
  dynamic findTheDuplicateNumber(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Find The Duplicate Number');

  // Example 1
  // final result1 = solution.findTheDuplicateNumber(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an array of integers nums containing n + 1 integers where each integer is in the range [1, n] inclusive.

There is only one repeated number in nums, return this repeated number.

You must solve the problem without modifying the array nums and using only constant extra space.

Example 1:

Input: nums = [1,3,4,2,2]
Output: 2

Example 2:

Input: nums = [3,1,3,4,2]
Output: 3

Example 3:

Input: nums = [3,3,3,3,3]
Output: 3

Constraints:

	1 <= n <= 105
	nums.length == n + 1
	1 <= nums[i] <= n
	All the integers in nums appear only once except for precisely one integer which appears two or more times.

Follow up:

	How can we prove that at least one duplicate number must exist in nums?
	Can you solve the problem in linear runtime complexity?

===============================================================================
*/
