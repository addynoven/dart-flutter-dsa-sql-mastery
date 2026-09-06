/// Problem: Number of 1 Bits
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/number-of-one-bits
/// LeetCode Link: https://leetcode.com/problems/number-of-1-bits

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
  // TODO: Implement solution for Number of 1 Bits
  dynamic numberOf1Bits(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Number of 1 Bits');

  // Example 1
  // final result1 = solution.numberOf1Bits(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given a positive integer n, write a function that returns the number of set bits in its binary representation (also known as the Hamming weight).

Example 1:

Input: n = 11

Output: 3

Explanation:

The input binary string 1011 has a total of three set bits.

Example 2:

Input: n = 128

Output: 1

Explanation:

The input binary string 10000000 has a total of one set bit.

Example 3:

Input: n = 2147483645

Output: 30

Explanation:

The input binary string 1111111111111111111111111111101 has a total of thirty set bits.

Constraints:

	1 <= n <= 231 - 1

Follow up: If this function is called many times, how would you optimize it?

===============================================================================
*/
