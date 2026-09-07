/// Problem: Longest Consecutive Sequence
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/longest-consecutive-sequence
/// LeetCode Link: https://leetcode.com/problems/longest-consecutive-sequence

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
  /// Solution method for Longest Consecutive Sequence
  dynamic longestConsecutiveSequence(dynamic nums) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Longest Consecutive Sequence ===\n');
  // --- Example 1 ---
  final nums1 = [100,4,200,1,3,2];
  final result1 = solution.longestConsecutiveSequence(nums1);
  print('Example 1 Result: $result1');
  print('Expected Output:  4\n');
  // --- Example 2 ---
  final nums2 = [0,3,7,2,5,8,4,6,0,1];
  final result2 = solution.longestConsecutiveSequence(nums2);
  print('Example 2 Result: $result2');
  print('Expected Output:  9\n');
  // --- Example 3 ---
  final nums3 = [1,0,1,2];
  final result3 = solution.longestConsecutiveSequence(nums3);
  print('Example 3 Result: $result3');
  print('Expected Output:  3\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.

You must write an algorithm that runs in O(n) time.

Example 1:

Input: nums = [100,4,200,1,3,2]
Output: 4
Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.

Example 2:

Input: nums = [0,3,7,2,5,8,4,6,0,1]
Output: 9

Example 3:

Input: nums = [1,0,1,2]
Output: 3

Constraints:

	0 <= nums.length <= 105
	-109 <= nums[i] <= 109

===============================================================================
*/
