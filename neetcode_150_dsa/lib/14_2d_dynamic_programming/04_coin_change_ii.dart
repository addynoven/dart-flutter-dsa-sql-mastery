/// Problem: Coin Change II
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/coin-change-ii
/// LeetCode Link: https://leetcode.com/problems/coin-change-ii

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
  /// Solution method for Coin Change II
  dynamic coinChangeIi(dynamic amount, dynamic coins) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Coin Change II ===\n');
  // --- Example 1 ---
  final amount1 = 5;
  final coins1 = [1,2,5];
  final result1 = solution.coinChangeIi(amount1, coins1);
  print('Example 1 Result: $result1');
  print('Expected Output:  4\n');
  // --- Example 2 ---
  final amount2 = 3;
  final coins2 = [2];
  final result2 = solution.coinChangeIi(amount2, coins2);
  print('Example 2 Result: $result2');
  print('Expected Output:  0\n');
  // --- Example 3 ---
  final amount3 = 10;
  final coins3 = [10];
  final result3 = solution.coinChangeIi(amount3, coins3);
  print('Example 3 Result: $result3');
  print('Expected Output:  1\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given an integer array coins representing coins of different denominations and an integer amount representing a total amount of money.

Return the number of combinations that make up that amount. If that amount of money cannot be made up by any combination of the coins, return 0.

You may assume that you have an infinite number of each kind of coin.

The final answer is guaranteed to fit into a signed 32-bit integer.

Example 1:

Input: amount = 5, coins = [1,2,5]
Output: 4
Explanation: there are four ways to make up the amount:
5=5
5=2+2+1
5=2+1+1+1
5=1+1+1+1+1

Example 2:

Input: amount = 3, coins = [2]
Output: 0
Explanation: the amount of 3 cannot be made up just with coins of 2.

Example 3:

Input: amount = 10, coins = [10]
Output: 1

Constraints:

	1 <= coins.length <= 300
	1 <= coins[i] <= 5000
	All the values of coins are unique.
	0 <= amount <= 5000

===============================================================================
*/
