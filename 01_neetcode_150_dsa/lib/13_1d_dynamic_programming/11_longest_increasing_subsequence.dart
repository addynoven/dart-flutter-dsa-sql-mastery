/// Problem: Longest Increasing Subsequence
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/longest-increasing-subsequence
/// LeetCode Link: https://leetcode.com/problems/longest-increasing-subsequence

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
  /// Solution method for Longest Increasing Subsequence
  dynamic longestIncreasingSubsequence(dynamic nums) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Longest Increasing Subsequence ===\n');
  // --- Example 1 ---
  final nums1 = [10,9,2,5,3,7,101,18];
  final result1 = solution.longestIncreasingSubsequence(nums1);
  print('Example 1 Result: $result1');
  print('Expected Output:  4\n');
  // --- Example 2 ---
  final nums2 = [0,1,0,3,2,3];
  final result2 = solution.longestIncreasingSubsequence(nums2);
  print('Example 2 Result: $result2');
  print('Expected Output:  4\n');
  // --- Example 3 ---
  final nums3 = [7,7,7,7,7,7,7];
  final result3 = solution.longestIncreasingSubsequence(nums3);
  print('Example 3 Result: $result3');
  print('Expected Output:  1\n');
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
