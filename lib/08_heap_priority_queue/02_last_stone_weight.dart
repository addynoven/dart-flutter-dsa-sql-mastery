/// Problem: Last Stone Weight
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/last-stone-weight
/// LeetCode Link: https://leetcode.com/problems/last-stone-weight

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
  /// Solution method for Last Stone Weight
  dynamic lastStoneWeight(dynamic stones) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Last Stone Weight ===\n');
  // --- Example 1 ---
  final stones1 = [2,7,4,1,8,1];
  final result1 = solution.lastStoneWeight(stones1);
  print('Example 1 Result: $result1');
  print('Expected Output:  1\n');
  // --- Example 2 ---
  final stones2 = [1];
  final result2 = solution.lastStoneWeight(stones2);
  print('Example 2 Result: $result2');
  print('Expected Output:  1\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given an array of integers stones where stones[i] is the weight of the ith stone.

We are playing a game with the stones. On each turn, we choose the heaviest two stones and smash them together. Suppose the heaviest two stones have weights x and y with x <= y. The result of this smash is:

	If x == y, both stones are destroyed, and
	If x != y, the stone of weight x is destroyed, and the stone of weight y has new weight y - x.

At the end of the game, there is at most one stone left.

Return the weight of the last remaining stone. If there are no stones left, return 0.

Example 1:

Input: stones = [2,7,4,1,8,1]
Output: 1
Explanation: 
We combine 7 and 8 to get 1 so the array converts to [2,4,1,1,1] then,
we combine 2 and 4 to get 2 so the array converts to [2,1,1,1] then,
we combine 2 and 1 to get 1 so the array converts to [1,1,1] then,
we combine 1 and 1 to get 0 so the array converts to [1] then that's the value of the last stone.

Example 2:

Input: stones = [1]
Output: 1

Constraints:

	1 <= stones.length <= 30
	1 <= stones[i] <= 1000

===============================================================================
*/
