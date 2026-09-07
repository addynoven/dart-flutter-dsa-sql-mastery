/// Problem: Largest Rectangle In Histogram
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/largest-rectangle-in-histogram
/// LeetCode Link: https://leetcode.com/problems/largest-rectangle-in-histogram

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
  /// Solution method for Largest Rectangle In Histogram
  dynamic largestRectangleInHistogram(dynamic heights) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Largest Rectangle In Histogram ===\n');
  // --- Example 1 ---
  final heights1 = [2,1,5,6,2,3];
  final result1 = solution.largestRectangleInHistogram(heights1);
  print('Example 1 Result: $result1');
  print('Expected Output:  10\n');
  // --- Example 2 ---
  final heights2 = [2,4];
  final result2 = solution.largestRectangleInHistogram(heights2);
  print('Example 2 Result: $result2');
  print('Expected Output:  4\n');
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
