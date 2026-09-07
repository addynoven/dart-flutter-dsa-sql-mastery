/// Problem: House Robber II
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/house-robber-ii
/// LeetCode Link: https://leetcode.com/problems/house-robber-ii

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
  /// Solution method for House Robber II
  dynamic houseRobberIi(dynamic nums) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: House Robber II ===\n');
  // --- Example 1 ---
  final nums1 = [2,3,2];
  final result1 = solution.houseRobberIi(nums1);
  print('Example 1 Result: $result1');
  print('Expected Output:  3\n');
  // --- Example 2 ---
  final nums2 = [1,2,3,1];
  final result2 = solution.houseRobberIi(nums2);
  print('Example 2 Result: $result2');
  print('Expected Output:  4\n');
  // --- Example 3 ---
  final nums3 = [1,2,3];
  final result3 = solution.houseRobberIi(nums3);
  print('Example 3 Result: $result3');
  print('Expected Output:  3\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed. All houses at this place are arranged in a circle. That means the first house is the neighbor of the last one. Meanwhile, adjacent houses have a security system connected, and it will automatically contact the police if two adjacent houses were broken into on the same night.

Given an integer array nums representing the amount of money of each house, return the maximum amount of money you can rob tonight without alerting the police.

Example 1:

Input: nums = [2,3,2]
Output: 3
Explanation: You cannot rob house 1 (money = 2) and then rob house 3 (money = 2), because they are adjacent houses.

Example 2:

Input: nums = [1,2,3,1]
Output: 4
Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
Total amount you can rob = 1 + 3 = 4.

Example 3:

Input: nums = [1,2,3]
Output: 3

Constraints:

	1 <= nums.length <= 100
	0 <= nums[i] <= 1000

===============================================================================
*/
