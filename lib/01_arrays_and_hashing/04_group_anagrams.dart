/// Problem: Group Anagrams
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/anagram-groups
/// LeetCode Link: https://leetcode.com/problems/group-anagrams

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
  // TODO: Implement solution for Group Anagrams
  dynamic groupAnagrams(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Group Anagrams');

  // Example 1
  // final result1 = solution.groupAnagrams(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Given an array of strings strs, group the anagrams together. You can return the answer in any order.

Example 1:

Input: strs = ["eat","tea","tan","ate","nat","bat"]

Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

Explanation:

	There is no string in strs that can be rearranged to form "bat".
	The strings "nat" and "tan" are anagrams as they can be rearranged to form each other.
	The strings "ate", "eat", and "tea" are anagrams as they can be rearranged to form each other.

Example 2:

Input: strs = [""]

Output: [[""]]

Example 3:

Input: strs = ["a"]

Output: [["a"]]

Constraints:

	1 <= strs.length <= 104
	0 <= strs[i].length <= 100
	strs[i] consists of lowercase English letters.

===============================================================================
*/
