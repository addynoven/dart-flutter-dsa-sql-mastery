/// Problem: Find Minimum In Rotated Sorted Array
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/find-minimum-in-rotated-sorted-array
/// LeetCode Link: https://leetcode.com/problems/find-minimum-in-rotated-sorted-array

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
  /// Solution method for Find Minimum In Rotated Sorted Array
  dynamic findMinimumInRotatedSortedArray(dynamic nums) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Find Minimum In Rotated Sorted Array ===\n');
  // --- Example 1 ---
  final nums1 = [3,4,5,1,2];
  final result1 = solution.findMinimumInRotatedSortedArray(nums1);
  print('Example 1 Result: $result1');
  print('Expected Output:  1\n');
  // --- Example 2 ---
  final nums2 = [4,5,6,7,0,1,2];
  final result2 = solution.findMinimumInRotatedSortedArray(nums2);
  print('Example 2 Result: $result2');
  print('Expected Output:  0\n');
  // --- Example 3 ---
  final nums3 = [11,13,15,17];
  final result3 = solution.findMinimumInRotatedSortedArray(nums3);
  print('Example 3 Result: $result3');
  print('Expected Output:  11\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Suppose an array of length n sorted in ascending order is rotated between 1 and n times. For example, the array nums = [0,1,2,4,5,6,7] might become:

	[4,5,6,7,0,1,2] if it was rotated 4 times.
	[0,1,2,4,5,6,7] if it was rotated 7 times.

Notice that rotating an array [a[0], a[1], a[2], ..., a[n-1]] 1 time results in the array [a[n-1], a[0], a[1], a[2], ..., a[n-2]].

Given the sorted rotated array nums of unique elements, return the minimum element of this array.

You must write an algorithm that runs in O(log n) time.

Example 1:

Input: nums = [3,4,5,1,2]
Output: 1
Explanation: The original array was [1,2,3,4,5] rotated 3 times.

Example 2:

Input: nums = [4,5,6,7,0,1,2]
Output: 0
Explanation: The original array was [0,1,2,4,5,6,7] and it was rotated 4 times.

Example 3:

Input: nums = [11,13,15,17]
Output: 11
Explanation: The original array was [11,13,15,17] and it was rotated 4 times. 

Constraints:

	n == nums.length
	1 <= n <= 5000
	-5000 <= nums[i] <= 5000
	All the integers of nums are unique.
	nums is sorted and rotated between 1 and n times.

===============================================================================
*/
