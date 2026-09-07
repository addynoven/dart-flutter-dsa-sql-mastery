/// Problem: Kth Largest Element In An Array
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/kth-largest-element-in-an-array
/// LeetCode Link: https://leetcode.com/problems/kth-largest-element-in-an-array

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
  /// Solution method for Kth Largest Element In An Array
  dynamic kthLargestElementInAnArray(dynamic nums, dynamic k) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Kth Largest Element In An Array ===\n');
  // --- Example 1 ---
  final nums1 = [3,2,1,5,6,4];
  final k1 = 2;
  final result1 = solution.kthLargestElementInAnArray(nums1, k1);
  print('Example 1 Result: $result1');
  print('Expected Output:  5\n');
  // --- Example 2 ---
  final nums2 = [3,2,3,1,2,4,5,5,6];
  final k2 = 4;
  final result2 = solution.kthLargestElementInAnArray(nums2, k2);
  print('Example 2 Result: $result2');
  print('Expected Output:  4\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an integer array nums and an integer k, return the kth largest element in the array.

Note that it is the kth largest element in the sorted order, not the kth distinct element.

Can you solve it without sorting?

Example 1:
Input: nums = [3,2,1,5,6,4], k = 2
Output: 5
Example 2:
Input: nums = [3,2,3,1,2,4,5,5,6], k = 4
Output: 4

Constraints:

	1 <= k <= nums.length <= 105
	-104 <= nums[i] <= 104

===============================================================================
*/
