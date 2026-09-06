/// Problem: Non Overlapping Intervals
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/non-overlapping-intervals
/// LeetCode Link: https://leetcode.com/problems/non-overlapping-intervals

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
  /// Solution method for Non Overlapping Intervals
  dynamic nonOverlappingIntervals(dynamic intervals) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Non Overlapping Intervals ===\n');
  // --- Example 1 ---
  final intervals1 = [[1,2],[2,3],[3,4],[1,3]];
  final result1 = solution.nonOverlappingIntervals(intervals1);
  print('Example 1 Result: $result1');
  print('Expected Output:  1\n');
  // --- Example 2 ---
  final intervals2 = [[1,2],[1,2],[1,2]];
  final result2 = solution.nonOverlappingIntervals(intervals2);
  print('Example 2 Result: $result2');
  print('Expected Output:  2\n');
  // --- Example 3 ---
  final intervals3 = [[1,2],[2,3]];
  final result3 = solution.nonOverlappingIntervals(intervals3);
  print('Example 3 Result: $result3');
  print('Expected Output:  0\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an array of intervals intervals where intervals[i] = [starti, endi], return the minimum number of intervals you need to remove to make the rest of the intervals non-overlapping.

Note that intervals which only touch at a point are non-overlapping. For example, [1, 2] and [2, 3] are non-overlapping.

Example 1:

Input: intervals = [[1,2],[2,3],[3,4],[1,3]]
Output: 1
Explanation: [1,3] can be removed and the rest of the intervals are non-overlapping.

Example 2:

Input: intervals = [[1,2],[1,2],[1,2]]
Output: 2
Explanation: You need to remove two [1,2] to make the rest of the intervals non-overlapping.

Example 3:

Input: intervals = [[1,2],[2,3]]
Output: 0
Explanation: You don't need to remove any of the intervals since they're already non-overlapping.

Constraints:

	1 <= intervals.length <= 105
	intervals[i].length == 2
	-5 * 104 <= starti < endi <= 5 * 104

===============================================================================
*/
