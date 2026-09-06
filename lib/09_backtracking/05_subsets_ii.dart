/// Problem: Subsets II
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/subsets-ii
/// LeetCode Link: https://leetcode.com/problems/subsets-ii

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
  // TODO: Implement solution for Subsets II
  dynamic subsetsIi(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Subsets II');

  // Example 1
  // final result1 = solution.subsetsIi(/* test input */);
  // print('Result 1: $result1');
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
