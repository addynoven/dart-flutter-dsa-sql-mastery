/// Problem: Reconstruct Itinerary
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/reconstruct-flight-path
/// LeetCode Link: https://leetcode.com/problems/reconstruct-itinerary

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
  /// Solution method for Reconstruct Itinerary
  dynamic reconstructItinerary(dynamic tickets) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Reconstruct Itinerary ===\n');
  // --- Example 1 ---
  final tickets1 = [["MUC","LHR"],["JFK","MUC"],["SFO","SJC"],["LHR","SFO"]];
  final result1 = solution.reconstructItinerary(tickets1);
  print('Example 1 Result: $result1');
  print('Expected Output:  ["JFK","MUC","LHR","SFO","SJC"]\n');
  // --- Example 2 ---
  final tickets2 = [["JFK","SFO"],["JFK","ATL"],["SFO","ATL"],["ATL","JFK"],["ATL","SFO"]];
  final result2 = solution.reconstructItinerary(tickets2);
  print('Example 2 Result: $result2');
  print('Expected Output:  ["JFK","ATL","JFK","SFO","ATL","SFO"]\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given a list of airline tickets where tickets[i] = [fromi, toi] represent the departure and the arrival airports of one flight. Reconstruct the itinerary in order and return it.

All of the tickets belong to a man who departs from "JFK", thus, the itinerary must begin with "JFK". If there are multiple valid itineraries, you should return the itinerary that has the smallest lexical order when read as a single string.

	For example, the itinerary ["JFK", "LGA"] has a smaller lexical order than ["JFK", "LGB"].

You may assume all tickets form at least one valid itinerary. You must use all the tickets once and only once.

Example 1:

Input: tickets = [["MUC","LHR"],["JFK","MUC"],["SFO","SJC"],["LHR","SFO"]]
Output: ["JFK","MUC","LHR","SFO","SJC"]

Example 2:

Input: tickets = [["JFK","SFO"],["JFK","ATL"],["SFO","ATL"],["ATL","JFK"],["ATL","SFO"]]
Output: ["JFK","ATL","JFK","SFO","ATL","SFO"]
Explanation: Another possible reconstruction is ["JFK","SFO","ATL","JFK","ATL","SFO"] but it is larger in lexical order.

Constraints:

	1 <= tickets.length <= 300
	tickets[i].length == 2
	fromi.length == 3
	toi.length == 3
	fromi and toi consist of uppercase English letters.
	fromi != toi

===============================================================================
*/
