/// Problem: Largest Rectangle In Histogram
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/largest-rectangle-in-histogram
/// LeetCode Link: https://leetcode.com/problems/largest-rectangle-in-histogram

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
  // TODO: Implement solution for Largest Rectangle In Histogram
  dynamic largestRectangleInHistogram(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Largest Rectangle In Histogram');

  // Example 1
  // final result1 = solution.largestRectangleInHistogram(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an array of integers heights representing the histogram's bar height where the width of each bar is 1, return the area of the largest rectangle in the histogram.

Example 1:

Input: heights = [2,1,5,6,2,3]
Output: 10
Explanation: The above is a histogram where width of each bar is 1.
The largest rectangle is shown in the red area, which has an area = 10 units.

Example 2:

Input: heights = [2,4]
Output: 4

Constraints:

	1 <= heights.length <= 105
	0 <= heights[i] <= 104

===============================================================================
*/
