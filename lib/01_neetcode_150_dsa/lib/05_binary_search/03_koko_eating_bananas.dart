/// Problem: Koko Eating Bananas
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/eating-bananas
/// LeetCode Link: https://leetcode.com/problems/koko-eating-bananas

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
  /// Solution method for Koko Eating Bananas
  dynamic kokoEatingBananas(dynamic piles, dynamic h) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Koko Eating Bananas ===\n');
  // --- Example 1 ---
  final piles1 = [3,6,7,11];
  final h1 = 8;
  final result1 = solution.kokoEatingBananas(piles1, h1);
  print('Example 1 Result: $result1');
  print('Expected Output:  4\n');
  // --- Example 2 ---
  final piles2 = [30,11,23,4,20];
  final h2 = 5;
  final result2 = solution.kokoEatingBananas(piles2, h2);
  print('Example 2 Result: $result2');
  print('Expected Output:  30\n');
  // --- Example 3 ---
  final piles3 = [30,11,23,4,20];
  final h3 = 6;
  final result3 = solution.kokoEatingBananas(piles3, h3);
  print('Example 3 Result: $result3');
  print('Expected Output:  23\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Koko loves to eat bananas. There are n piles of bananas, the ith pile has piles[i] bananas. The guards have gone and will come back in h hours.

Koko can decide her bananas-per-hour eating speed of k. Each hour, she chooses some pile of bananas and eats k bananas from that pile. If the pile has less than k bananas, she eats all of them instead and will not eat any more bananas during this hour.

Koko likes to eat slowly but still wants to finish eating all the bananas before the guards return.

Return the minimum integer k such that she can eat all the bananas within h hours.

Example 1:

Input: piles = [3,6,7,11], h = 8
Output: 4

Example 2:

Input: piles = [30,11,23,4,20], h = 5
Output: 30

Example 3:

Input: piles = [30,11,23,4,20], h = 6
Output: 23

Constraints:

	1 <= piles.length <= 104
	piles.length <= h <= 109
	1 <= piles[i] <= 109

===============================================================================
*/
