/// Problem: Meeting Rooms II
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/meeting-schedule-ii
/// LeetCode Link: https://leetcode.com/problems/meeting-rooms-ii

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
  /// Solution method for Meeting Rooms II
  dynamic meetingRoomsIi(dynamic intervals) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Meeting Rooms II ===\n');
  // --- Example 1 ---
  final intervals1 = [[0,30],[5,10],[15,20]];
  final result1 = solution.meetingRoomsIi(intervals1);
  print('Example 1 Result: $result1');
  print('Expected Output:  2\n');
  // --- Example 2 ---
  final intervals2 = [[2,7]];
  final result2 = solution.meetingRoomsIi(intervals2);
  print('Example 2 Result: $result2');
  print('Expected Output:  1\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an array of meeting time intervals intervals where intervals[i] = [start_i, end_i], return the minimum number of conference rooms required.

Example 1:
Input: intervals = [[0,30],[5,10],[15,20]]
Output: 2

Example 2:
Input: intervals = [[2,7]]
Output: 1

===============================================================================
*/
