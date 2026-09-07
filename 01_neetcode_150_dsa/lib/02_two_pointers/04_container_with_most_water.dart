/// Problem: Container With Most Water
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/max-water-container
/// LeetCode Link: https://leetcode.com/problems/container-with-most-water

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
  /// Solution method for Container With Most Water
  dynamic containerWithMostWater(dynamic height) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Container With Most Water ===\n');
  // --- Example 1 ---
  final height1 = [1,8,6,2,5,4,8,3,7];
  final result1 = solution.containerWithMostWater(height1);
  print('Example 1 Result: $result1');
  print('Expected Output:  49\n');
  // --- Example 2 ---
  final height2 = [1,1];
  final result2 = solution.containerWithMostWater(height2);
  print('Example 2 Result: $result2');
  print('Expected Output:  1\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

Find two lines that together with the x-axis form a container, such that the container contains the most water.

Return the maximum amount of water a container can store.

Notice that you may not slant the container.

Example 1:

Input: height = [1,8,6,2,5,4,8,3,7]
Output: 49
Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.

Example 2:

Input: height = [1,1]
Output: 1

Constraints:

	n == height.length
	2 <= n <= 105
	0 <= height[i] <= 104

===============================================================================
*/
