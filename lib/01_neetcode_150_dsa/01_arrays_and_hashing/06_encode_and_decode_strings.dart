/*
Problem: Encode and Decode Strings
Difficulty: Medium
NeetCode Link: https://neetcode.io/problems/string-encode-and-decode
LeetCode Link: https://leetcode.com/problems/encode-and-decode-strings
*/

class Solution {
  /// Encodes a list of strings to a single string.
  String encode(List<String> strs) {
    // TODO: Write your string encoding algorithm here
    return '';
  }

  /// Decodes a single string back to a list of strings.
  List<String> decode(String str) {
    // TODO: Write your string decoding algorithm here
    return [];
  }

  /// Helper method that tests both encoding and decoding in sequence.
  List<String> encodeAndDecodeStrings(List<String> strs) {
    final encoded = encode(strs);
    return decode(encoded);
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Encode and Decode Strings ===\n');

  // --- Example 1 ---
  final param1 = ["neet", "code", "love", "you"];
  final result1 = solution.encodeAndDecodeStrings(param1);
  print('Example 1 Result: $result1');
  print('Expected Output:  ["neet", "code", "love", "you"]\n');

  // --- Example 2 ---
  final param2 = ["we", "say", ":", "yes"];
  final result2 = solution.encodeAndDecodeStrings(param2);
  print('Example 2 Result: $result2');
  print('Expected Output:  ["we", "say", ":", "yes"]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

Design an algorithm to encode a list of strings to a string. The encoded string is then sent over the network and is decoded back to the original list of strings.

Example 1:
Input: ["neet","code","love","you"]
Output: ["neet","code","love","you"]

Example 2:
Input: ["we","say",":","yes"]
Output: ["we","say",":","yes"]

Constraints:
- 0 <= string length <= 200
- 0 <= list length <= 200

===============================================================================
*/
