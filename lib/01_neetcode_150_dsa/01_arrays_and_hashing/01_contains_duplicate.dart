/// Problem: Contains Duplicate
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/duplicate-integer
/// LeetCode Link: https://leetcode.com/problems/contains-duplicate

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
  /// Solution method for Contains Duplicate
  dynamic containsDuplicate(dynamic nums) {
    final bool ans = Set<dynamic>.from(nums).length != nums.length;
    return ans;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Contains Duplicate ===\n');
  // --- Example 1 ---
  final nums1 = [1, 2, 3, 1];
  final result1 = solution.containsDuplicate(nums1);
  print('Example 1 Result: $result1');
  print('Expected Output:  true\n');
  // --- Example 2 ---
  final nums2 = [1, 2, 3, 4];
  final result2 = solution.containsDuplicate(nums2);
  print('Example 2 Result: $result2');
  print('Expected Output:  false\n');
  // --- Example 3 ---
  final nums3 = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2];
  final result3 = solution.containsDuplicate(nums3);
  print('Example 3 Result: $result3');
  print('Expected Output:  true\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

Example 1:

Input: nums = [1,2,3,1]

Output: true

Explanation:

The element 1 occurs at the indices 0 and 3.

Example 2:

Input: nums = [1,2,3,4]

Output: false

Explanation:

All elements are distinct.

Example 3:

Input: nums = [1,1,1,3,3,4,3,2,4,2]

Output: true

Constraints:

	1 <= nums.length <= 105
	-109 <= nums[i] <= 109

===============================================================================
*/
