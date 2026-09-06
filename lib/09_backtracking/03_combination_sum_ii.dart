/// Problem: Combination Sum II
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/combination-target-sum-ii
/// LeetCode Link: https://leetcode.com/problems/combination-sum-ii

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
  // TODO: Implement solution for Combination Sum II
  dynamic combinationSumIi(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Combination Sum II');

  // Example 1
  // final result1 = solution.combinationSumIi(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given a collection of candidate numbers (candidates) and a target number (target), find all unique combinations in candidates where the candidate numbers sum to target.

Each number in candidates may only be used once in the combination.

Note: The solution set must not contain duplicate combinations.

Example 1:

Input: candidates = [10,1,2,7,6,1,5], target = 8
Output: 
[
[1,1,6],
[1,2,5],
[1,7],
[2,6]
]

Example 2:

Input: candidates = [2,5,2,1,2], target = 5
Output: 
[
[1,2,2],
[5]
]

Constraints:

	1 <= candidates.length <= 100
	1 <= candidates[i] <= 50
	1 <= target <= 30

===============================================================================
*/
