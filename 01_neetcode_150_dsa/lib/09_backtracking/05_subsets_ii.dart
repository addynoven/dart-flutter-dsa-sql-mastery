/// Problem: Subsets II
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/subsets-ii
/// LeetCode Link: https://leetcode.com/problems/subsets-ii

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
  /// Solution method for Subsets II
  dynamic subsetsIi(dynamic nums) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Subsets II ===\n');
  // --- Example 1 ---
  final nums1 = [1,2,2];
  final result1 = solution.subsetsIi(nums1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [[],[1],[1,2],[1,2,2],[2],[2,2]]\n');
  // --- Example 2 ---
  final nums2 = [0];
  final result2 = solution.subsetsIi(nums2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [[],[0]]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an integer array nums that may contain duplicates, return all possible subsets (the power set).

The solution set must not contain duplicate subsets. Return the solution in any order.

Example 1:
Input: nums = [1,2,2]
Output: [[],[1],[1,2],[1,2,2],[2],[2,2]]
Example 2:
Input: nums = [0]
Output: [[],[0]]

Constraints:

	1 <= nums.length <= 10
	-10 <= nums[i] <= 10

===============================================================================
*/
