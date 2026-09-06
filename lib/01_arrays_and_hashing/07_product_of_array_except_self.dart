/// Problem: Product of Array Except Self
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/products-of-array-discluding-self
/// LeetCode Link: https://leetcode.com/problems/product-of-array-except-self

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
  /// Solution method for Product of Array Except Self
  dynamic productOfArrayExceptSelf(dynamic nums) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Product of Array Except Self ===\n');
  // --- Example 1 ---
  final nums1 = [1,2,3,4];
  final result1 = solution.productOfArrayExceptSelf(nums1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [24,12,8,6]\n');
  // --- Example 2 ---
  final nums2 = [-1,1,0,-3,3];
  final result2 = solution.productOfArrayExceptSelf(nums2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [0,0,9,0,0]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

You must write an algorithm that runs in O(n) time and without using the division operation.

Example 1:
Input: nums = [1,2,3,4]
Output: [24,12,8,6]
Example 2:
Input: nums = [-1,1,0,-3,3]
Output: [0,0,9,0,0]

Constraints:

	2 <= nums.length <= 105
	-30 <= nums[i] <= 30
	The input is generated such that answer[i] is guaranteed to fit in a 32-bit integer.

Follow up: Can you solve the problem in O(1) extra space complexity? (The output array does not count as extra space for space complexity analysis.)

===============================================================================
*/
