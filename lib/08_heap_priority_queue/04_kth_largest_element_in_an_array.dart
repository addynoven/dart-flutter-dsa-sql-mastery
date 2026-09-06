/// Problem: Kth Largest Element In An Array
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/kth-largest-element-in-an-array
/// LeetCode Link: https://leetcode.com/problems/kth-largest-element-in-an-array

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
  // TODO: Implement solution for Kth Largest Element In An Array
  dynamic kthLargestElementInAnArray(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Kth Largest Element In An Array');

  // Example 1
  // final result1 = solution.kthLargestElementInAnArray(/* test input */);
  // print('Result 1: $result1');
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
