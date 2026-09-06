/// Problem: Car Fleet
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/car-fleet
/// LeetCode Link: https://leetcode.com/problems/car-fleet

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
  /// Solution method for Car Fleet
  dynamic carFleet(dynamic target, dynamic position, dynamic speed) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Car Fleet ===\n');
  // --- Example 1 ---
  final target1 = 12;
  final position1 = [10,8,0,5,3];
  final speed1 = [2,4,1,1,3];
  final result1 = solution.carFleet(target1, position1, speed1);
  print('Example 1 Result: $result1');
  print('Expected Output:  3\n');
  // --- Example 2 ---
  final target2 = 10;
  final position2 = [3];
  final speed2 = [3];
  final result2 = solution.carFleet(target2, position2, speed2);
  print('Example 2 Result: $result2');
  print('Expected Output:  1\n');
  // --- Example 3 ---
  final target3 = 100;
  final position3 = [0,2,4];
  final speed3 = [4,2,1];
  final result3 = solution.carFleet(target3, position3, speed3);
  print('Example 3 Result: $result3');
  print('Expected Output:  1\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

There are n cars at given miles away from the starting mile 0, traveling to reach the mile target.

You are given two integer arrays position and speed, both of length n, where position[i] is the starting mile of the ith car and speed[i] is the speed of the ith car in miles per hour.

A car cannot pass another car, but it can catch up and then travel next to it at the speed of the slower car.

A car fleet is a single car or a group of cars driving next to each other. The speed of the car fleet is the minimum speed of any car in the fleet.

If a car catches up to a car fleet at the mile target, it will still be considered as part of the car fleet.

Return the number of car fleets that will arrive at the destination.

Example 1:

Input: target = 12, position = [10,8,0,5,3], speed = [2,4,1,1,3]

Output: 3

Explanation:

	The cars starting at 10 (speed 2) and 8 (speed 4) become a fleet, meeting each other at 12. The fleet forms at target.
	The car starting at 0 (speed 1) does not catch up to any other car, so it is a fleet by itself.
	The cars starting at 5 (speed 1) and 3 (speed 3) become a fleet, meeting each other at 6. The fleet moves at speed 1 until it reaches target.

Example 2:

Input: target = 10, position = [3], speed = [3]

Output: 1

Explanation:
There is only one car, hence there is only one fleet.

Example 3:

Input: target = 100, position = [0,2,4], speed = [4,2,1]

Output: 1

Explanation:

	The cars starting at 0 (speed 4) and 2 (speed 2) become a fleet, meeting each other at 4. The car starting at 4 (speed 1) travels to 5.
	Then, the fleet at 4 (speed 2) and the car at position 5 (speed 1) become one fleet, meeting each other at 6. The fleet moves at speed 1 until it reaches target.

Constraints:

	n == position.length == speed.length
	1 <= n <= 105
	0 < target <= 106
	0 <= position[i] < target
	All the values of position are unique.
	0 < speed[i] <= 106

===============================================================================
*/
