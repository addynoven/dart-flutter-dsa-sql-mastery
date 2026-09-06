/// Problem: Permutations
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/permutations
/// LeetCode Link: https://leetcode.com/problems/permutations

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
  // TODO: Implement solution for Permutations
  dynamic permutations(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Permutations');

  // Example 1
  // final result1 = solution.permutations(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an array nums of distinct integers, return all the possible permutations. You can return the answer in any order.

Example 1:
Input: nums = [1,2,3]
Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
Example 2:
Input: nums = [0,1]
Output: [[0,1],[1,0]]
Example 3:
Input: nums = [1]
Output: [[1]]

Constraints:

	1 <= nums.length <= 6
	-10 <= nums[i] <= 10
	All the integers of nums are unique.

===============================================================================
*/
