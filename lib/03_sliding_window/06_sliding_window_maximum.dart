/// Problem: Sliding Window Maximum
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/sliding-window-maximum
/// LeetCode Link: https://leetcode.com/problems/sliding-window-maximum

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
  // TODO: Implement solution for Sliding Window Maximum
  dynamic slidingWindowMaximum(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Sliding Window Maximum');

  // Example 1
  // final result1 = solution.slidingWindowMaximum(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given an array of integers nums, there is a sliding window of size k which is moving from the very left of the array to the very right. You can only see the k numbers in the window. Each time the sliding window moves right by one position.

Return the max sliding window.

Example 1:

Input: nums = [1,3,-1,-3,5,3,6,7], k = 3
Output: [3,3,5,5,6,7]
Explanation: 
Window position                Max
---------------               -----
[1  3  -1] -3  5  3  6  7       3
 1 [3  -1  -3] 5  3  6  7       3
 1  3 [-1  -3  5] 3  6  7       5
 1  3  -1 [-3  5  3] 6  7       5
 1  3  -1  -3 [5  3  6] 7       6
 1  3  -1  -3  5 [3  6  7]      7

Example 2:

Input: nums = [1], k = 1
Output: [1]

Constraints:

	1 <= nums.length <= 105
	-104 <= nums[i] <= 104
	1 <= k <= nums.length

===============================================================================
*/
