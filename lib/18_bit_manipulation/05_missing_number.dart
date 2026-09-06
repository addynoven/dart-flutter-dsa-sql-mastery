/// Problem: Missing Number
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/missing-number
/// LeetCode Link: https://leetcode.com/problems/missing-number

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
  /// Solution method for Missing Number
  dynamic missingNumber(dynamic nums) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Missing Number ===\n');
  // --- Example 1 ---
  final nums1 = [3,0,1];
  final result1 = solution.missingNumber(nums1);
  print('Example 1 Result: $result1');
  print('Expected Output:  2\n');
  // --- Example 2 ---
  final nums2 = [0,1];
  final result2 = solution.missingNumber(nums2);
  print('Example 2 Result: $result2');
  print('Expected Output:  2\n');
  // --- Example 3 ---
  final nums3 = [9,6,4,2,3,5,7,0,1];
  final result3 = solution.missingNumber(nums3);
  print('Example 3 Result: $result3');
  print('Expected Output:  8\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

Example 1:

Input: nums = [3,0,1]

Output: 2

Explanation:

n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.

Example 2:

Input: nums = [0,1]

Output: 2

Explanation:

n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.

Example 3:

Input: nums = [9,6,4,2,3,5,7,0,1]

Output: 8

Explanation:

n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.

Constraints:

	n == nums.length
	1 <= n <= 104
	0 <= nums[i] <= n
	All the numbers of nums are unique.

Follow up: Could you implement a solution using only O(1) extra space complexity and O(n) runtime complexity?

===============================================================================
*/
