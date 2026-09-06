/// Problem: Longest Increasing Subsequence
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/longest-increasing-subsequence
/// LeetCode Link: https://leetcode.com/problems/longest-increasing-subsequence

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
  // TODO: Implement solution for Longest Increasing Subsequence
  dynamic longestIncreasingSubsequence(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Longest Increasing Subsequence');

  // Example 1
  // final result1 = solution.longestIncreasingSubsequence(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an integer array nums, return the length of the longest strictly increasing subsequence.

Example 1:

Input: nums = [10,9,2,5,3,7,101,18]
Output: 4
Explanation: The longest increasing subsequence is [2,3,7,101], therefore the length is 4.

Example 2:

Input: nums = [0,1,0,3,2,3]
Output: 4

Example 3:

Input: nums = [7,7,7,7,7,7,7]
Output: 1

Constraints:

	1 <= nums.length <= 2500
	-104 <= nums[i] <= 104

Follow up: Can you come up with an algorithm that runs in O(n log(n)) time complexity?

===============================================================================
*/
