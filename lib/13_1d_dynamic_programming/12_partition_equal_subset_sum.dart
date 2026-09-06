/// Problem: Partition Equal Subset Sum
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/partition-equal-subset-sum
/// LeetCode Link: https://leetcode.com/problems/partition-equal-subset-sum

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
  /// Solution method for Partition Equal Subset Sum
  dynamic partitionEqualSubsetSum(dynamic nums) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Partition Equal Subset Sum ===\n');
  // --- Example 1 ---
  final nums1 = [1,5,11,5];
  final result1 = solution.partitionEqualSubsetSum(nums1);
  print('Example 1 Result: $result1');
  print('Expected Output:  true\n');
  // --- Example 2 ---
  final nums2 = [1,2,3,5];
  final result2 = solution.partitionEqualSubsetSum(nums2);
  print('Example 2 Result: $result2');
  print('Expected Output:  false\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an integer array nums, return true if you can partition the array into two subsets such that the sum of the elements in both subsets is equal or false otherwise.

Example 1:

Input: nums = [1,5,11,5]
Output: true
Explanation: The array can be partitioned as [1, 5, 5] and [11].

Example 2:

Input: nums = [1,2,3,5]
Output: false
Explanation: The array cannot be partitioned into equal sum subsets.

Constraints:

	1 <= nums.length <= 200
	1 <= nums[i] <= 100

===============================================================================
*/
