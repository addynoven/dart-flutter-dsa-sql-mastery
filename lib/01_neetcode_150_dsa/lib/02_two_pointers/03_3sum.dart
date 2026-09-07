/// Problem: 3Sum
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/three-integer-sum
/// LeetCode Link: https://leetcode.com/problems/3sum

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
  /// Solution method for 3Sum
  dynamic threesum(dynamic nums) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: 3Sum ===\n');
  // --- Example 1 ---
  final nums1 = [-1,0,1,2,-1,-4];
  final result1 = solution.threesum(nums1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [[-1,-1,2],[-1,0,1]]\n');
  // --- Example 2 ---
  final nums2 = [0,1,1];
  final result2 = solution.threesum(nums2);
  print('Example 2 Result: $result2');
  print('Expected Output:  []\n');
  // --- Example 3 ---
  final nums3 = [0,0,0];
  final result3 = solution.threesum(nums3);
  print('Example 3 Result: $result3');
  print('Expected Output:  [[0,0,0]]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

Notice that the solution set must not contain duplicate triplets.

Example 1:

Input: nums = [-1,0,1,2,-1,-4]
Output: [[-1,-1,2],[-1,0,1]]
Explanation: 
nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
The distinct triplets are [-1,0,1] and [-1,-1,2].
Notice that the order of the output and the order of the triplets does not matter.

Example 2:

Input: nums = [0,1,1]
Output: []
Explanation: The only possible triplet does not sum up to 0.

Example 3:

Input: nums = [0,0,0]
Output: [[0,0,0]]
Explanation: The only possible triplet sums up to 0.

Constraints:

	3 <= nums.length <= 3000
	-105 <= nums[i] <= 105

===============================================================================
*/
