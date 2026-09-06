/// Problem: Maximum Product Subarray
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/maximum-product-subarray
/// LeetCode Link: https://leetcode.com/problems/maximum-product-subarray

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
  /// Solution method for Maximum Product Subarray
  dynamic maximumProductSubarray(dynamic nums) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Maximum Product Subarray ===\n');
  // --- Example 1 ---
  final nums1 = [2,3,-2,4];
  final result1 = solution.maximumProductSubarray(nums1);
  print('Example 1 Result: $result1');
  print('Expected Output:  6\n');
  // --- Example 2 ---
  final nums2 = [-2,0,-1];
  final result2 = solution.maximumProductSubarray(nums2);
  print('Example 2 Result: $result2');
  print('Expected Output:  0\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an integer array nums, find a subarray that has the largest product, and return the product.

The test cases are generated so that the answer will fit in a 32-bit integer.

Note that the product of an array with a single element is the value of that element.

Example 1:

Input: nums = [2,3,-2,4]
Output: 6
Explanation: [2,3] has the largest product 6.

Example 2:

Input: nums = [-2,0,-1]
Output: 0
Explanation: The result cannot be 2, because [-2,-1] is not a subarray.

Constraints:

	1 <= nums.length <= 2 * 104
	-10 <= nums[i] <= 10
	The product of any subarray of nums is guaranteed to fit in a 32-bit integer.

===============================================================================
*/
