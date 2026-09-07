/// Problem: Top K Frequent Elements
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/top-k-elements-in-list
/// LeetCode Link: https://leetcode.com/problems/top-k-frequent-elements

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
  /// Solution method for Top K Frequent Elements
  dynamic topKFrequentElements(dynamic nums, dynamic k) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Top K Frequent Elements ===\n');
  // --- Example 1 ---
  final nums1 = [1,1,1,2,2,3];
  final k1 = 2;
  final result1 = solution.topKFrequentElements(nums1, k1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [1,2]\n');
  // --- Example 2 ---
  final nums2 = [1];
  final k2 = 1;
  final result2 = solution.topKFrequentElements(nums2, k2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [1]\n');
  // --- Example 3 ---
  final nums3 = [1,2,1,2,1,2,3,1,3,2];
  final k3 = 2;
  final result3 = solution.topKFrequentElements(nums3, k3);
  print('Example 3 Result: $result3');
  print('Expected Output:  [1,2]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.

Example 1:

Input: nums = [1,1,1,2,2,3], k = 2

Output: [1,2]

Example 2:

Input: nums = [1], k = 1

Output: [1]

Example 3:

Input: nums = [1,2,1,2,1,2,3,1,3,2], k = 2

Output: [1,2]

Constraints:

	1 <= nums.length <= 105
	-104 <= nums[i] <= 104
	k is in the range [1, the number of unique elements in the array].
	It is guaranteed that the answer is unique.

Follow up: Your algorithm's time complexity must be better than O(n log n), where n is the array's size.

===============================================================================
*/
