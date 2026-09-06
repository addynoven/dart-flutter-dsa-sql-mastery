/// Problem: Single Number
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/single-number
/// LeetCode Link: https://leetcode.com/problems/single-number

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
  // TODO: Implement solution for Single Number
  dynamic singleNumber(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Single Number');

  // Example 1
  // final result1 = solution.singleNumber(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

You must implement a solution with a linear runtime complexity and use only constant extra space.

Example 1:

Input: nums = [2,2,1]

Output: 1

Example 2:

Input: nums = [4,1,2,1,2]

Output: 4

Example 3:

Input: nums = [1]

Output: 1

Constraints:

	1 <= nums.length <= 3 * 104
	-3 * 104 <= nums[i] <= 3 * 104
	Each element in the array appears twice except for one element which appears only once.

===============================================================================
*/
