/// Problem: Permutations
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/permutations
/// LeetCode Link: https://leetcode.com/problems/permutations

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
  /// Solution method for Permutations
  dynamic permutations(dynamic nums) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Permutations ===\n');
  // --- Example 1 ---
  final nums1 = [1,2,3];
  final result1 = solution.permutations(nums1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]\n');
  // --- Example 2 ---
  final nums2 = [0,1];
  final result2 = solution.permutations(nums2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [[0,1],[1,0]]\n');
  // --- Example 3 ---
  final nums3 = [1];
  final result3 = solution.permutations(nums3);
  print('Example 3 Result: $result3');
  print('Expected Output:  [[1]]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an array nums of distinct integers, return all the possible permutations. You can return the answer in any order.

Example 1:
Input: nums = [1,2,3]
Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
Example 2:
Input: nums = [0,1]
Output: [[0,1],[1,0]]
Example 3:
Input: nums = [1]
Output: [[1]]

Constraints:

	1 <= nums.length <= 6
	-10 <= nums[i] <= 10
	All the integers of nums are unique.

===============================================================================
*/
