/// Problem: Non Overlapping Intervals
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/non-overlapping-intervals
/// LeetCode Link: https://leetcode.com/problems/non-overlapping-intervals

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
  // TODO: Implement solution for Non Overlapping Intervals
  dynamic nonOverlappingIntervals(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Non Overlapping Intervals');

  // Example 1
  // final result1 = solution.nonOverlappingIntervals(/* test input */);
  // print('Result 1: $result1');
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
