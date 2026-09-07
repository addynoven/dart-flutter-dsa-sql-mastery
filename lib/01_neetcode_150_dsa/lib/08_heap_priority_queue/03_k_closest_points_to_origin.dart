/// Problem: K Closest Points to Origin
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/k-closest-points-to-origin
/// LeetCode Link: https://leetcode.com/problems/k-closest-points-to-origin

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
  /// Solution method for K Closest Points to Origin
  dynamic kClosestPointsToOrigin(dynamic points, dynamic k) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: K Closest Points to Origin ===\n');
  // --- Example 1 ---
  final points1 = [[1,3],[-2,2]];
  final k1 = 1;
  final result1 = solution.kClosestPointsToOrigin(points1, k1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [[-2,2]]\n');
  // --- Example 2 ---
  final points2 = [[3,3],[5,-1],[-2,4]];
  final k2 = 2;
  final result2 = solution.kClosestPointsToOrigin(points2, k2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [[3,3],[-2,4]]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an array of points where points[i] = [xi, yi] represents a point on the X-Y plane and an integer k, return the k closest points to the origin (0, 0).

The distance between two points on the X-Y plane is the Euclidean distance (i.e., √(x1 - x2)2 + (y1 - y2)2).

You may return the answer in any order. The answer is guaranteed to be unique (except for the order that it is in).

Example 1:

Input: points = [[1,3],[-2,2]], k = 1
Output: [[-2,2]]
Explanation:
The distance between (1, 3) and the origin is sqrt(10).
The distance between (-2, 2) and the origin is sqrt(8).
Since sqrt(8) < sqrt(10), (-2, 2) is closer to the origin.
We only want the closest k = 1 points from the origin, so the answer is just [[-2,2]].

Example 2:

Input: points = [[3,3],[5,-1],[-2,4]], k = 2
Output: [[3,3],[-2,4]]
Explanation: The answer [[-2,4],[3,3]] would also be accepted.

Constraints:

	1 <= k <= points.length <= 104
	-104 <= xi, yi <= 104

===============================================================================
*/
