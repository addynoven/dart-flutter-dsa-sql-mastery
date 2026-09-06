/// Problem: Daily Temperatures
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/daily-temperatures
/// LeetCode Link: https://leetcode.com/problems/daily-temperatures

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
  /// Solution method for Daily Temperatures
  dynamic dailyTemperatures(dynamic temperatures) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Daily Temperatures ===\n');
  // --- Example 1 ---
  final temperatures1 = [73,74,75,71,69,72,76,73];
  final result1 = solution.dailyTemperatures(temperatures1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [1,1,4,2,1,1,0,0]\n');
  // --- Example 2 ---
  final temperatures2 = [30,40,50,60];
  final result2 = solution.dailyTemperatures(temperatures2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [1,1,1,0]\n');
  // --- Example 3 ---
  final temperatures3 = [30,60,90];
  final result3 = solution.dailyTemperatures(temperatures3);
  print('Example 3 Result: $result3');
  print('Expected Output:  [1,1,0]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an array of integers temperatures represents the daily temperatures, return an array answer such that answer[i] is the number of days you have to wait after the ith day to get a warmer temperature. If there is no future day for which this is possible, keep answer[i] == 0 instead.

Example 1:
Input: temperatures = [73,74,75,71,69,72,76,73]
Output: [1,1,4,2,1,1,0,0]
Example 2:
Input: temperatures = [30,40,50,60]
Output: [1,1,1,0]
Example 3:
Input: temperatures = [30,60,90]
Output: [1,1,0]

Constraints:

	1 <= temperatures.length <= 105
	30 <= temperatures[i] <= 100

===============================================================================
*/
