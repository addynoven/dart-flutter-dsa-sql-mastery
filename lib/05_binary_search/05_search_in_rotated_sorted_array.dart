/// Problem: Search In Rotated Sorted Array
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/find-target-in-rotated-sorted-array
/// LeetCode Link: https://leetcode.com/problems/search-in-rotated-sorted-array

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
  // TODO: Implement solution for Search In Rotated Sorted Array
  dynamic searchInRotatedSortedArray(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Search In Rotated Sorted Array');

  // Example 1
  // final result1 = solution.searchInRotatedSortedArray(/* test input */);
  // print('Result 1: $result1');
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
