/// Problem: Binary Search
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/binary-search
/// LeetCode Link: https://leetcode.com/problems/binary-search

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
  /// Solution method for Binary Search
  dynamic binarySearch(dynamic nums, dynamic target) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Binary Search ===\n');
  // --- Example 1 ---
  final nums1 = [-1,0,3,5,9,12];
  final target1 = 9;
  final result1 = solution.binarySearch(nums1, target1);
  print('Example 1 Result: $result1');
  print('Expected Output:  4\n');
  // --- Example 2 ---
  final nums2 = [-1,0,3,5,9,12];
  final target2 = 2;
  final result2 = solution.binarySearch(nums2, target2);
  print('Example 2 Result: $result2');
  print('Expected Output:  -1\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.

You must write an algorithm with O(log n) runtime complexity.

Example 1:

Input: nums = [-1,0,3,5,9,12], target = 9
Output: 4
Explanation: 9 exists in nums and its index is 4

Example 2:

Input: nums = [-1,0,3,5,9,12], target = 2
Output: -1
Explanation: 2 does not exist in nums so return -1

Constraints:

	1 <= nums.length <= 104
	-104 < nums[i], target < 104
	All the integers in nums are unique.
	nums is sorted in ascending order.

===============================================================================
*/
