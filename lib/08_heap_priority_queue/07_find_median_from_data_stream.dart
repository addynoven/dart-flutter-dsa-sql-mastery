/// Problem: Find Median From Data Stream
/// Difficulty: Hard
/// NeetCode Link: https://neetcode.io/problems/find-median-in-a-data-stream
/// LeetCode Link: https://leetcode.com/problems/find-median-from-data-stream

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
  // TODO: Implement solution for Find Median From Data Stream
  dynamic findMedianFromDataStream(/* add parameters */) {
    return null;
  }
}

void main() {
  final solution = Solution();

  print('Testing: Find Median From Data Stream');

  // Example 1
  // final result1 = solution.findMedianFromDataStream(/* test input */);
  // print('Result 1: $result1');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

The median is the middle value in an ordered integer list. If the size of the list is even, there is no middle value, and the median is the mean of the two middle values.

	For example, for arr = [2,3,4], the median is 3.
	For example, for arr = [2,3], the median is (2 + 3) / 2 = 2.5.

Implement the MedianFinder class:

	MedianFinder() initializes the MedianFinder object.
	void addNum(int num) adds the integer num from the data stream to the data structure.
	double findMedian() returns the median of all elements so far. Answers within 10-5 of the actual answer will be accepted.

Example 1:

Input
["MedianFinder", "addNum", "addNum", "findMedian", "addNum", "findMedian"]
[[], [1], [2], [], [3], []]
Output
[null, null, null, 1.5, null, 2.0]

Explanation
MedianFinder medianFinder = new MedianFinder();
medianFinder.addNum(1);    // arr = [1]
medianFinder.addNum(2);    // arr = [1, 2]
medianFinder.findMedian(); // return 1.5 (i.e., (1 + 2) / 2)
medianFinder.addNum(3);    // arr[1, 2, 3]
medianFinder.findMedian(); // return 2.0

Constraints:

	-105 <= num <= 105
	There will be at least one element in the data structure before calling findMedian.
	At most 5 * 104 calls will be made to addNum and findMedian.

Follow up:

	If all integer numbers from the stream are in the range [0, 100], how would you optimize your solution?
	If 99% of all integer numbers from the stream are in the range [0, 100], how would you optimize your solution?

===============================================================================
*/
