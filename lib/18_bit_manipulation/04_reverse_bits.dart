/// Problem: Reverse Bits
/// Difficulty: Easy
/// NeetCode Link: https://neetcode.io/problems/reverse-bits
/// LeetCode Link: https://leetcode.com/problems/reverse-bits

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
  /// Solution method for Reverse Bits
  dynamic reverseBits(dynamic n) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Reverse Bits ===\n');
  // --- Example 1 ---
  final n1 = 43261596;
  final result1 = solution.reverseBits(n1);
  print('Example 1 Result: $result1');
  print('Expected Output:  964176192\n');
  // --- Example 2 ---
  final n2 = 2147483644;
  final result2 = solution.reverseBits(n2);
  print('Example 2 Result: $result2');
  print('Expected Output:  1073741822\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Reverse bits of a given 32 bits signed integer.

Example 1:

Input: n = 43261596

Output: 964176192

Explanation:

			Integer
			Binary

			43261596
			00000010100101000001111010011100

			964176192
			00111001011110000010100101000000

Example 2:

Input: n = 2147483644

Output: 1073741822

Explanation:

			Integer
			Binary

			2147483644
			01111111111111111111111111111100

			1073741822
			00111111111111111111111111111110

Constraints:

	0 <= n <= 231 - 2
	n is even.

Follow up: If this function is called many times, how would you optimize it?

===============================================================================
*/
