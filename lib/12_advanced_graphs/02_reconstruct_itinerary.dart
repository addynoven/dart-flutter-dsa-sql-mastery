/// Problem: Reconstruct Itinerary
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/reconstruct-flight-path
/// LeetCode Link: https://leetcode.com/problems/reconstruct-itinerary

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
  // TODO: Implement solution for Reconstruct Itinerary
  dynamic reconstructItinerary(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Reconstruct Itinerary');

  // Example 1
  // final result1 = solution.reconstructItinerary(/* test input */);
  // print('Result 1: $result1');
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
