/// Problem: Subsets
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/subsets
/// LeetCode Link: https://leetcode.com/problems/subsets

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
  /// Solution method for Subsets
  dynamic subsets(dynamic nums) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Subsets ===\n');
  // --- Example 1 ---
  final nums1 = [1,2,3];
  final result1 = solution.subsets(nums1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]\n');
  // --- Example 2 ---
  final nums2 = [0];
  final result2 = solution.subsets(nums2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [[],[0]]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an integer array nums of unique elements, return all possible subsets (the power set).

The solution set must not contain duplicate subsets. Return the solution in any order.

Example 1:

Input: nums = [1,2,3]
Output: [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]

Example 2:

Input: nums = [0]
Output: [[],[0]]

Constraints:

	1 <= nums.length <= 10
	-10 <= nums[i] <= 10
	All the numbers of nums are unique.

===============================================================================
*/
