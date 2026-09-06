/// Problem: Burst Balloons
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/burst-balloons
/// LeetCode Link: https://leetcode.com/problems/burst-balloons

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
  /// Solution method for Burst Balloons
  dynamic burstBalloons(dynamic nums) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Burst Balloons ===\n');
  // --- Example 1 ---
  final nums1 = [3,1,5,8];
  final result1 = solution.burstBalloons(nums1);
  print('Example 1 Result: $result1');
  print('Expected Output:  167\n');
  // --- Example 2 ---
  final nums2 = [1,5];
  final result2 = solution.burstBalloons(nums2);
  print('Example 2 Result: $result2');
  print('Expected Output:  10\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given n balloons, indexed from 0 to n - 1. Each balloon is painted with a number on it represented by an array nums. You are asked to burst all the balloons.

If you burst the ith balloon, you will get nums[i - 1] * nums[i] * nums[i + 1] coins. If i - 1 or i + 1 goes out of bounds of the array, then treat it as if there is a balloon with a 1 painted on it.

Return the maximum coins you can collect by bursting the balloons wisely.

Example 1:

Input: nums = [3,1,5,8]
Output: 167
Explanation:
nums = [3,1,5,8] --> [3,5,8] --> [3,8] --> [8] --> []
coins =  3*1*5    +   3*5*8   +  1*3*8  + 1*8*1 = 167

Example 2:

Input: nums = [1,5]
Output: 10

Constraints:

	n == nums.length
	1 <= n <= 300
	0 <= nums[i] <= 100

===============================================================================
*/
