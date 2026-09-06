/// Problem: Hand of Straights
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/hand-of-straights
/// LeetCode Link: https://leetcode.com/problems/hand-of-straights

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
  // TODO: Implement solution for Hand of Straights
  dynamic handOfStraights(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Hand of Straights');

  // Example 1
  // final result1 = solution.handOfStraights(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Alice has some number of cards and she wants to rearrange the cards into groups so that each group is of size groupSize, and consists of groupSize consecutive cards.

Given an integer array hand where hand[i] is the value written on the ith card and an integer groupSize, return true if she can rearrange the cards, or false otherwise.

Example 1:

Input: hand = [1,2,3,6,2,3,4,7,8], groupSize = 3
Output: true
Explanation: Alice's hand can be rearranged as [1,2,3],[2,3,4],[6,7,8]

Example 2:

Input: hand = [1,2,3,4,5], groupSize = 4
Output: false
Explanation: Alice's hand can not be rearranged into groups of 4.

Constraints:

	1 <= hand.length <= 104
	0 <= hand[i] <= 109
	1 <= groupSize <= hand.length

Note: This question is the same as 1296: https://leetcode.com/problems/divide-array-in-sets-of-k-consecutive-numbers/

===============================================================================
*/
