/// Problem: Merge Intervals
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/merge-intervals
/// LeetCode Link: https://leetcode.com/problems/merge-intervals

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
  /// Solution method for Merge Intervals
  dynamic mergeIntervals(dynamic intervals) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Merge Intervals ===\n');
  // --- Example 1 ---
  final intervals1 = [[1,3],[2,6],[8,10],[15,18]];
  final result1 = solution.mergeIntervals(intervals1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [[1,6],[8,10],[15,18]]\n');
  // --- Example 2 ---
  final intervals2 = [[1,4],[4,5]];
  final result2 = solution.mergeIntervals(intervals2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [[1,5]]\n');
  // --- Example 3 ---
  final intervals3 = [[4,7],[1,4]];
  final result3 = solution.mergeIntervals(intervals3);
  print('Example 3 Result: $result3');
  print('Expected Output:  [[1,7]]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals, and return an array of the non-overlapping intervals that cover all the intervals in the input.

Example 1:

Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
Output: [[1,6],[8,10],[15,18]]
Explanation: Since intervals [1,3] and [2,6] overlap, merge them into [1,6].

Example 2:

Input: intervals = [[1,4],[4,5]]
Output: [[1,5]]
Explanation: Intervals [1,4] and [4,5] are considered overlapping.

Example 3:

Input: intervals = [[4,7],[1,4]]
Output: [[1,7]]
Explanation: Intervals [1,4] and [4,7] are considered overlapping.

Constraints:

	1 <= intervals.length <= 104
	intervals[i].length == 2
	0 <= starti <= endi <= 104

===============================================================================
*/
