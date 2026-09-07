/// Problem: Sliding Window Maximum
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/sliding-window-maximum
/// LeetCode Link: https://leetcode.com/problems/sliding-window-maximum

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
  /// Solution method for Sliding Window Maximum
  dynamic slidingWindowMaximum(dynamic nums, dynamic k) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Sliding Window Maximum ===\n');
  // --- Example 1 ---
  final nums1 = [1,3,-1,-3,5,3,6,7];
  final k1 = 3;
  final result1 = solution.slidingWindowMaximum(nums1, k1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [3,3,5,5,6,7]\n');
  // --- Example 2 ---
  final nums2 = [1];
  final k2 = 1;
  final result2 = solution.slidingWindowMaximum(nums2, k2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [1]\n');
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
