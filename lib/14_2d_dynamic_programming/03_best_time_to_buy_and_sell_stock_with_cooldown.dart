/// Problem: Best Time to Buy And Sell Stock With Cooldown
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/buy-and-sell-crypto-with-cooldown
/// LeetCode Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown

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
  /// Solution method for Best Time to Buy And Sell Stock With Cooldown
  dynamic bestTimeToBuyAndSellStockWithCooldown(dynamic prices) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Best Time to Buy And Sell Stock With Cooldown ===\n');
  // --- Example 1 ---
  final prices1 = [1,2,3,0,2];
  final result1 = solution.bestTimeToBuyAndSellStockWithCooldown(prices1);
  print('Example 1 Result: $result1');
  print('Expected Output:  3\n');
  // --- Example 2 ---
  final prices2 = [1];
  final result2 = solution.bestTimeToBuyAndSellStockWithCooldown(prices2);
  print('Example 2 Result: $result2');
  print('Expected Output:  0\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given an array prices where prices[i] is the price of a given stock on the ith day.

Find the maximum profit you can achieve. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times) with the following restrictions:

	After you sell your stock, you cannot buy stock on the next day (i.e., cooldown one day).

Note: You may not engage in multiple transactions simultaneously (i.e., you must sell the stock before you buy again).

Example 1:

Input: prices = [1,2,3,0,2]
Output: 3
Explanation: transactions = [buy, sell, cooldown, buy, sell]

Example 2:

Input: prices = [1]
Output: 0

Constraints:

	1 <= prices.length <= 5000
	0 <= prices[i] <= 1000

===============================================================================
*/
