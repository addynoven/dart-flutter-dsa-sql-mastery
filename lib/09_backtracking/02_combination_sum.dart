/// Problem: Combination Sum
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/combination-target-sum
/// LeetCode Link: https://leetcode.com/problems/combination-sum

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
  /// Solution method for Combination Sum
  dynamic combinationSum(dynamic candidates, dynamic target) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Combination Sum ===\n');
  // --- Example 1 ---
  final candidates1 = [2,3,6,7];
  final target1 = 7;
  final result1 = solution.combinationSum(candidates1, target1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [[2,2,3],[7]]\n');
  // --- Example 2 ---
  final candidates2 = [2,3,5];
  final target2 = 8;
  final result2 = solution.combinationSum(candidates2, target2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [[2,2,2,2],[2,3,3],[3,5]]\n');
  // --- Example 3 ---
  final candidates3 = [2];
  final target3 = 1;
  final result3 = solution.combinationSum(candidates3, target3);
  print('Example 3 Result: $result3');
  print('Expected Output:  []\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an array of distinct integers candidates and a target integer target, return a list of all unique combinations of candidates where the chosen numbers sum to target. You may return the combinations in any order.

The same number may be chosen from candidates an unlimited number of times. Two combinations are unique if the frequency of at least one of the chosen numbers is different.

The test cases are generated such that the number of unique combinations that sum up to target is less than 150 combinations for the given input.

Example 1:

Input: candidates = [2,3,6,7], target = 7
Output: [[2,2,3],[7]]
Explanation:
2 and 3 are candidates, and 2 + 2 + 3 = 7. Note that 2 can be used multiple times.
7 is a candidate, and 7 = 7.
These are the only two combinations.

Example 2:

Input: candidates = [2,3,5], target = 8
Output: [[2,2,2,2],[2,3,3],[3,5]]

Example 3:

Input: candidates = [2], target = 1
Output: []

Constraints:

	1 <= candidates.length <= 30
	2 <= candidates[i] <= 40
	All elements of candidates are distinct.
	1 <= target <= 40

===============================================================================
*/
