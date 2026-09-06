/// Problem: Longest Consecutive Sequence
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/longest-consecutive-sequence
/// LeetCode Link: https://leetcode.com/problems/longest-consecutive-sequence

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
  // TODO: Implement solution for Longest Consecutive Sequence
  dynamic longestConsecutiveSequence(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Longest Consecutive Sequence');

  // Example 1
  // final result1 = solution.longestConsecutiveSequence(/* test input */);
  // print('Result 1: $result1');
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
