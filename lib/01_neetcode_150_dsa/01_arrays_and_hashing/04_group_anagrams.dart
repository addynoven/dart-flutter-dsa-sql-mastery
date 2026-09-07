/// Problem: Group Anagrams
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/anagram-groups
/// LeetCode Link: https://leetcode.com/problems/group-anagrams

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
  /// Solution method for Group Anagrams
  dynamic groupAnagrams(dynamic strs) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Group Anagrams ===\n');
  // --- Example 1 ---
  final strs1 = ["eat","tea","tan","ate","nat","bat"];
  final result1 = solution.groupAnagrams(strs1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [["bat"],["nat","tan"],["ate","eat","tea"]]\n');
  // --- Example 2 ---
  final strs2 = [""];
  final result2 = solution.groupAnagrams(strs2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [[""]]\n');
  // --- Example 3 ---
  final strs3 = ["a"];
  final result3 = solution.groupAnagrams(strs3);
  print('Example 3 Result: $result3');
  print('Expected Output:  [["a"]]\n');
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
