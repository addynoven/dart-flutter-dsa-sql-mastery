/// Problem: Decode Ways
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/decode-ways
/// LeetCode Link: https://leetcode.com/problems/decode-ways

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
  /// Solution method for Decode Ways
  dynamic decodeWays(dynamic s) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Decode Ways ===\n');
  // --- Example 1 ---
  final s1 = "12";
  final result1 = solution.decodeWays(s1);
  print('Example 1 Result: $result1');
  print('Expected Output:  2\n');
  // --- Example 2 ---
  final s2 = "226";
  final result2 = solution.decodeWays(s2);
  print('Example 2 Result: $result2');
  print('Expected Output:  3\n');
  // --- Example 3 ---
  final s3 = "06";
  final result3 = solution.decodeWays(s3);
  print('Example 3 Result: $result3');
  print('Expected Output:  0\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You have intercepted a secret message encoded as a string of numbers. The message is decoded via the following mapping:

"1" -> 'A'
"2" -> 'B'
...
"25" -> 'Y'
"26" -> 'Z'

However, while decoding the message, you realize that there are many different ways you can decode the message because some codes are contained in other codes ("2" and "5" vs "25").

For example, "11106" can be decoded into:

	"AAJF" with the grouping (1, 1, 10, 6)
	"KJF" with the grouping (11, 10, 6)
	The grouping (1, 11, 06) is invalid because "06" is not a valid code (only "6" is valid).

Note: there may be strings that are impossible to decode.

Given a string s containing only digits, return the number of ways to decode it. If the entire string cannot be decoded in any valid way, return 0.

The test cases are generated so that the answer fits in a 32-bit integer.

Example 1:

Input: s = "12"

Output: 2

Explanation:

"12" could be decoded as "AB" (1 2) or "L" (12).

Example 2:

Input: s = "226"

Output: 3

Explanation:

"226" could be decoded as "BZ" (2 26), "VF" (22 6), or "BBF" (2 2 6).

Example 3:

Input: s = "06"

Output: 0

Explanation:

"06" cannot be mapped to "F" because of the leading zero ("6" is different from "06"). In this case, the string is not a valid encoding, so return 0.

Constraints:

	1 <= s.length <= 100
	s contains only digits and may contain leading zero(s).

===============================================================================
*/
