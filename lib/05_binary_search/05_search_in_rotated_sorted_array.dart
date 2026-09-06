/// Problem: Search In Rotated Sorted Array
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/find-target-in-rotated-sorted-array
/// LeetCode Link: https://leetcode.com/problems/search-in-rotated-sorted-array

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
  /// Solution method for Search In Rotated Sorted Array
  dynamic searchInRotatedSortedArray(dynamic nums, dynamic target) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Search In Rotated Sorted Array ===\n');
  // --- Example 1 ---
  final nums1 = [4,5,6,7,0,1,2];
  final target1 = 0;
  final result1 = solution.searchInRotatedSortedArray(nums1, target1);
  print('Example 1 Result: $result1');
  print('Expected Output:  4\n');
  // --- Example 2 ---
  final nums2 = [4,5,6,7,0,1,2];
  final target2 = 3;
  final result2 = solution.searchInRotatedSortedArray(nums2, target2);
  print('Example 2 Result: $result2');
  print('Expected Output:  -1\n');
  // --- Example 3 ---
  final nums3 = [1];
  final target3 = 0;
  final result3 = solution.searchInRotatedSortedArray(nums3, target3);
  print('Example 3 Result: $result3');
  print('Expected Output:  -1\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

There is an integer array nums sorted in ascending order (with distinct values).

Prior to being passed to your function, nums is possibly left rotated at an unknown index k (1 <= k < nums.length) such that the resulting array is [nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]] (0-indexed). For example, [0,1,2,4,5,6,7] might be left rotated by 3 indices and become [4,5,6,7,0,1,2].

Given the array nums after the possible rotation and an integer target, return the index of target if it is in nums, or -1 if it is not in nums.

You must write an algorithm with O(log n) runtime complexity.

Example 1:
Input: nums = [4,5,6,7,0,1,2], target = 0
Output: 4
Example 2:
Input: nums = [4,5,6,7,0,1,2], target = 3
Output: -1
Example 3:
Input: nums = [1], target = 0
Output: -1

Constraints:

	1 <= nums.length <= 5000
	-104 <= nums[i] <= 104
	All values of nums are unique.
	nums is an ascending array that is possibly rotated.
	-104 <= target <= 104

===============================================================================
*/
