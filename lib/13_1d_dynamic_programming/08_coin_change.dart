/// Problem: Coin Change
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/coin-change
/// LeetCode Link: https://leetcode.com/problems/coin-change

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
  /// Solution method for Coin Change
  dynamic coinChange(dynamic coins, dynamic amount) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Coin Change ===\n');
  // --- Example 1 ---
  final coins1 = [1,2,5];
  final amount1 = 11;
  final result1 = solution.coinChange(coins1, amount1);
  print('Example 1 Result: $result1');
  print('Expected Output:  3\n');
  // --- Example 2 ---
  final coins2 = [2];
  final amount2 = 3;
  final result2 = solution.coinChange(coins2, amount2);
  print('Example 2 Result: $result2');
  print('Expected Output:  -1\n');
  // --- Example 3 ---
  final coins3 = [1];
  final amount3 = 0;
  final result3 = solution.coinChange(coins3, amount3);
  print('Example 3 Result: $result3');
  print('Expected Output:  0\n');
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
