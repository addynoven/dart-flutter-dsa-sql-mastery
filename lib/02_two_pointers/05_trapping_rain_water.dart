/// Problem: Trapping Rain Water
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/trapping-rain-water
/// LeetCode Link: https://leetcode.com/problems/trapping-rain-water

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
  // TODO: Implement solution for Trapping Rain Water
  dynamic trappingRainWater(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Trapping Rain Water');

  // Example 1
  // final result1 = solution.trappingRainWater(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.

Example 1:

Input: height = [0,1,0,2,1,0,1,3,2,1,2,1]
Output: 6
Explanation: The above elevation map (black section) is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped.

Example 2:

Input: height = [4,2,0,3,2,5]
Output: 9

Constraints:

	n == height.length
	1 <= n <= 2 * 104
	0 <= height[i] <= 105

===============================================================================
*/
