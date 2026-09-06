/// Problem: Minimum Interval to Include Each Query
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/minimum-interval-including-query
/// LeetCode Link: https://leetcode.com/problems/minimum-interval-to-include-each-query

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
  /// Solution method for Minimum Interval to Include Each Query
  dynamic minimumIntervalToIncludeEachQuery(dynamic intervals, dynamic queries) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Minimum Interval to Include Each Query ===\n');
  // --- Example 1 ---
  final intervals1 = [[1,4],[2,4],[3,6],[4,4]];
  final queries1 = [2,3,4,5];
  final result1 = solution.minimumIntervalToIncludeEachQuery(intervals1, queries1);
  print('Example 1 Result: $result1');
  print('Expected Output:  [3,3,1,4]\n');
  // --- Example 2 ---
  final intervals2 = [[2,3],[2,5],[1,8],[20,25]];
  final queries2 = [2,19,5,22];
  final result2 = solution.minimumIntervalToIncludeEachQuery(intervals2, queries2);
  print('Example 2 Result: $result2');
  print('Expected Output:  [2,-1,4,6]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given a 2D integer array intervals, where intervals[i] = [lefti, righti] describes the ith interval starting at lefti and ending at righti (inclusive). The size of an interval is defined as the number of integers it contains, or more formally righti - lefti + 1.

You are also given an integer array queries. The answer to the jth query is the size of the smallest interval i such that lefti <= queries[j] <= righti. If no such interval exists, the answer is -1.

Return an array containing the answers to the queries.

Example 1:

Input: intervals = [[1,4],[2,4],[3,6],[4,4]], queries = [2,3,4,5]
Output: [3,3,1,4]
Explanation: The queries are processed as follows:
- Query = 2: The interval [2,4] is the smallest interval containing 2. The answer is 4 - 2 + 1 = 3.
- Query = 3: The interval [2,4] is the smallest interval containing 3. The answer is 4 - 2 + 1 = 3.
- Query = 4: The interval [4,4] is the smallest interval containing 4. The answer is 4 - 4 + 1 = 1.
- Query = 5: The interval [3,6] is the smallest interval containing 5. The answer is 6 - 3 + 1 = 4.

Example 2:

Input: intervals = [[2,3],[2,5],[1,8],[20,25]], queries = [2,19,5,22]
Output: [2,-1,4,6]
Explanation: The queries are processed as follows:
- Query = 2: The interval [2,3] is the smallest interval containing 2. The answer is 3 - 2 + 1 = 2.
- Query = 19: None of the intervals contain 19. The answer is -1.
- Query = 5: The interval [2,5] is the smallest interval containing 5. The answer is 5 - 2 + 1 = 4.
- Query = 22: The interval [20,25] is the smallest interval containing 22. The answer is 25 - 20 + 1 = 6.

Constraints:

	1 <= intervals.length <= 105
	1 <= queries.length <= 105
	intervals[i].length == 2
	1 <= lefti <= righti <= 107
	1 <= queries[j] <= 107

===============================================================================
*/
