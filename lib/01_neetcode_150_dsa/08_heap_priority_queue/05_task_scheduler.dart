/// Problem: Task Scheduler
/// Difficulty: Medium
/// NeetCode Link: https://neetcode.io/problems/task-scheduling
/// LeetCode Link: https://leetcode.com/problems/task-scheduler

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
  /// Solution method for Task Scheduler
  dynamic taskScheduler(dynamic tasks, dynamic n) {
    // TODO: Write your solution algorithm here
    return null;
  }
}

void main() {
  final solution = Solution();
  print('=== Testing: Task Scheduler ===\n');
  // --- Example 1 ---
  final tasks1 = ["A","A","A","B","B","B"];
  final n1 = 2;
  final result1 = solution.taskScheduler(tasks1, n1);
  print('Example 1 Result: $result1');
  print('Expected Output:  8\n');
  // --- Example 2 ---
  final tasks2 = ["A","C","A","B","D","B"];
  final n2 = 1;
  final result2 = solution.taskScheduler(tasks2, n2);
  print('Example 2 Result: $result2');
  print('Expected Output:  6\n');
  // --- Example 3 ---
  final tasks3 = ["A","A","A", "B","B","B"];
  final n3 = 3;
  final result3 = solution.taskScheduler(tasks3, n3);
  print('Example 3 Result: $result3');
  print('Expected Output:  10\n');
}

/*
===============================================================================
QUESTION DESCRIPTION & EXAMPLES
===============================================================================

You are given an array of CPU tasks, each labeled with a letter from A to Z, and a number n. Each CPU interval can be idle or allow the completion of one task. Tasks can be completed in any order, but there's a constraint: there has to be a gap of at least n intervals between two tasks with the same label.

Return the minimum number of CPU intervals required to complete all tasks.

Example 1:

Input: tasks = ["A","A","A","B","B","B"], n = 2

Output: 8

Explanation: A possible sequence is: A -> B -> idle -> A -> B -> idle -> A -> B.

After completing task A, you must wait two intervals before doing A again. The same applies to task B. In the 3rd interval, neither A nor B can be done, so you idle. By the 4th interval, you can do A again as 2 intervals have passed.

Example 2:

Input: tasks = ["A","C","A","B","D","B"], n = 1

Output: 6

Explanation: A possible sequence is: A -> B -> C -> D -> A -> B.

With a cooling interval of 1, you can repeat a task after just one other task.

Example 3:

Input: tasks = ["A","A","A", "B","B","B"], n = 3

Output: 10

Explanation: A possible sequence is: A -> B -> idle -> idle -> A -> B -> idle -> idle -> A -> B.

There are only two types of tasks, A and B, which need to be separated by 3 intervals. This leads to idling twice between repetitions of these tasks.

Constraints:

	1 <= tasks.length <= 104
	tasks[i] is an uppercase English letter.
	0 <= n <= 100

===============================================================================
*/
