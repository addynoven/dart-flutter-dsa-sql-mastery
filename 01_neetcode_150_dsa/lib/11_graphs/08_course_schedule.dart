/// Problem: Course Schedule
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/course-schedule
/// LeetCode Link: https://leetcode.com/problems/course-schedule

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
  /// Solution method for Course Schedule
  dynamic courseSchedule(dynamic numCourses, dynamic prerequisites) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Course Schedule ===\n');
  // --- Example 1 ---
  final numCourses1 = 2;
  final prerequisites1 = [[1,0]];
  final result1 = solution.courseSchedule(numCourses1, prerequisites1);
  print('Example 1 Result: $result1');
  print('Expected Output:  true\n');
  // --- Example 2 ---
  final numCourses2 = 2;
  final prerequisites2 = [[1,0],[0,1]];
  final result2 = solution.courseSchedule(numCourses2, prerequisites2);
  print('Example 2 Result: $result2');
  print('Expected Output:  false\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

There are a total of numCourses courses you have to take, labeled from 0 to numCourses - 1. You are given an array prerequisites where prerequisites[i] = [ai, bi] indicates that you must take course bi first if you want to take course ai.

	For example, the pair [0, 1], indicates that to take course 0 you have to first take course 1.

Return true if you can finish all courses. Otherwise, return false.

Example 1:

Input: numCourses = 2, prerequisites = [[1,0]]
Output: true
Explanation: There are a total of 2 courses to take. 
To take course 1 you should have finished course 0. So it is possible.

Example 2:

Input: numCourses = 2, prerequisites = [[1,0],[0,1]]
Output: false
Explanation: There are a total of 2 courses to take. 
To take course 1 you should have finished course 0, and to take course 0 you should also have finished course 1. So it is impossible.

Constraints:

	1 <= numCourses <= 2000
	0 <= prerequisites.length <= 5000
	prerequisites[i].length == 2
	0 <= ai, bi < numCourses
	All the pairs prerequisites[i] are unique.

===============================================================================
*/
