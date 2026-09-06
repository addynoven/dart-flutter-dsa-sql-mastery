/// Problem: Counting Bits
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/counting-bits
/// LeetCode Link: https://leetcode.com/problems/counting-bits

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
  // TODO: Implement solution for Counting Bits
  dynamic countingBits(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Counting Bits');

  // Example 1
  // final result1 = solution.countingBits(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an integer n, return an array ans of length n + 1 such that for each i (0 <= i <= n), ans[i] is the number of 1's in the binary representation of i.
Do not solve it with built-in functions (i.e., like __builtin_popcount in C++).

Example 1:

Input: n = 2
Output: [0,1,1]
Explanation:
0 --> 0
1 --> 1
2 --> 10

Example 2:

Input: n = 5
Output: [0,1,1,2,1,2]
Explanation:
0 --> 0
1 --> 1
2 --> 10
3 --> 11
4 --> 100
5 --> 101

Constraints:

	0 <= n <= 105

Follow up:

	It is very easy to come up with a solution with a runtime of O(n log n). Can you do it in linear time O(n) and possibly in a single pass?

===============================================================================
*/
