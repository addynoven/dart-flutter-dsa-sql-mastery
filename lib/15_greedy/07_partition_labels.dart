/// Problem: Partition Labels
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/partition-labels
/// LeetCode Link: https://leetcode.com/problems/partition-labels

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
  // TODO: Implement solution for Partition Labels
  dynamic partitionLabels(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Partition Labels');

  // Example 1
  // final result1 = solution.partitionLabels(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given a string s. We want to partition the string into as many parts as possible so that each letter appears in at most one part. For example, the string "ababcc" can be partitioned into ["abab", "cc"], but partitions such as ["aba", "bcc"] or ["ab", "ab", "cc"] are invalid.

Note that the partition is done so that after concatenating all the parts in order, the resultant string should be s.

Return a list of integers representing the size of these parts.

Example 1:

Input: s = "ababcbacadefegdehijhklij"
Output: [9,7,8]
Explanation:
The partition is "ababcbaca", "defegde", "hijhklij".
This is a partition so that each letter appears in at most one part.
A partition like "ababcbacadefegde", "hijhklij" is incorrect, because it splits s into less parts.

Example 2:

Input: s = "eccbbbbdec"
Output: [10]

Constraints:

	1 <= s.length <= 500
	s consists of lowercase English letters.

===============================================================================
*/
