/*
Problem: Encode and Decode Strings
Difficulty: Medium
NeetCode Link: https://neetcode.io/problems/string-encode-and-decode
LeetCode Link: https://leetcode.com/problems/encode-and-decode-strings
*/

class Solution {
  /// Encodes a list of strings to a single string using length-prefix encoding (length + '#' + string).
  String encode(List<String> strs) {
    final sb = StringBuffer();
    for (final s in strs) {
      sb.write('${s.length}#$s');
    }
    return sb.toString();
  }

  /// Decodes a single string back to a list of strings.
  List<String> decode(String str) {
    final res = <String>[];
    int i = 0;

    while (i < str.length) {
      final delimiterIndex = str.indexOf('#', i);
      if (delimiterIndex == -1) break;

      final length = int.parse(str.substring(i, delimiterIndex));
      final start = delimiterIndex + 1;
      final end = start + length;

      res.add(str.substring(start, end));
      i = end;
    }

    return res;
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
  final encoded1 = solution.encode(param1);
  final decoded1 = solution.decode(encoded1);
  print('Example 1 Original: $param1');
  print('Example 1 Encoded:  "$encoded1"');
  print('Example 1 Decoded:  $decoded1');
  print('Expected Output:   ["neet", "code", "love", "you"]\n');

  // --- Example 2 ---
  final param2 = ["we", "say", ":", "yes"];
  final encoded2 = solution.encode(param2);
  final decoded2 = solution.decode(encoded2);
  print('Example 2 Original: $param2');
  print('Example 2 Encoded:  "$encoded2"');
  print('Example 2 Decoded:  $decoded2');
  print('Expected Output:   ["we", "say", ":", "yes"]\n');
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
