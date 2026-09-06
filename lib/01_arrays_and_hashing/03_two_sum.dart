/// Problem: Two Sum
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/two-integer-sum
/// LeetCode Link: https://leetcode.com/problems/two-sum

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
  // TODO: Implement solution for Two Sum
  dynamic twoSum(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Two Sum');

  // Example 1
  // final result1 = solution.twoSum(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

Example 2:

Input: nums = [3,2,4], target = 6
Output: [1,2]

Example 3:

Input: nums = [3,3], target = 6
Output: [0,1]

Constraints:

	2 <= nums.length <= 104
	-109 <= nums[i] <= 109
	-109 <= target <= 109
	Only one valid answer exists.

Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?

===============================================================================
*/
