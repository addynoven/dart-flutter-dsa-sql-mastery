/// Problem: Maximum Subarray
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/maximum-subarray
/// LeetCode Link: https://leetcode.com/problems/maximum-subarray

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
  /// Solution method for Maximum Subarray
  dynamic maximumSubarray(dynamic nums) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Maximum Subarray ===\n');
  // --- Example 1 ---
  final nums1 = [-2,1,-3,4,-1,2,1,-5,4];
  final result1 = solution.maximumSubarray(nums1);
  print('Example 1 Result: $result1');
  print('Expected Output:  6\n');
  // --- Example 2 ---
  final nums2 = [1];
  final result2 = solution.maximumSubarray(nums2);
  print('Example 2 Result: $result2');
  print('Expected Output:  1\n');
  // --- Example 3 ---
  final nums3 = [5,4,-1,7,8];
  final result3 = solution.maximumSubarray(nums3);
  print('Example 3 Result: $result3');
  print('Expected Output:  23\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an integer array nums, find the subarray with the largest sum, and return its sum.

Example 1:

Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
Output: 6
Explanation: The subarray [4,-1,2,1] has the largest sum 6.

Example 2:

Input: nums = [1]
Output: 1
Explanation: The subarray [1] has the largest sum 1.

Example 3:

Input: nums = [5,4,-1,7,8]
Output: 23
Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.

Constraints:

	1 <= nums.length <= 105
	-104 <= nums[i] <= 104

Follow up: If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.

===============================================================================
*/
