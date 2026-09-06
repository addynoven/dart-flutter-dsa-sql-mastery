/// Problem: Coin Change
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/coin-change
/// LeetCode Link: https://leetcode.com/problems/coin-change

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
  // TODO: Implement solution for Coin Change
  dynamic coinChange(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Coin Change');

  // Example 1
  // final result1 = solution.coinChange(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given an integer array coins representing coins of different denominations and an integer amount representing a total amount of money.

Return the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return -1.

You may assume that you have an infinite number of each kind of coin.

Example 1:

Input: coins = [1,2,5], amount = 11
Output: 3
Explanation: 11 = 5 + 5 + 1

Example 2:

Input: coins = [2], amount = 3
Output: -1

Example 3:

Input: coins = [1], amount = 0
Output: 0

Constraints:

	1 <= coins.length <= 12
	1 <= coins[i] <= 231 - 1
	0 <= amount <= 104

===============================================================================
*/
