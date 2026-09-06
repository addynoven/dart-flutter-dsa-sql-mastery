/// Problem: Trapping Rain Water
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/trapping-rain-water
/// LeetCode Link: https://leetcode.com/problems/trapping-rain-water

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
  /// Solution method for Trapping Rain Water
  dynamic trappingRainWater(dynamic height) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Trapping Rain Water ===\n');
  // --- Example 1 ---
  final height1 = [0,1,0,2,1,0,1,3,2,1,2,1];
  final result1 = solution.trappingRainWater(height1);
  print('Example 1 Result: $result1');
  print('Expected Output:  6\n');
  // --- Example 2 ---
  final height2 = [4,2,0,3,2,5];
  final result2 = solution.trappingRainWater(height2);
  print('Example 2 Result: $result2');
  print('Expected Output:  9\n');
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
