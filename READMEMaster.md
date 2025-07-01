# MASTER LIST
All the collection combined in one easily searchable list.

# LeetcodeCollection: Top 15 Patterns
Various Leetcode playgrounds: 

# 1 Prefix Sum Pattern
 ## 303. Range Sum Query - Immutable
 https://leetcode.com/problems/range-sum-query-immutable/description/

 Given an integer array nums, handle multiple queries of the following type:

 Calculate the sum of the elements of nums between indices left and right inclusive where left <= right.
 Implement the NumArray class:

 NumArray(int[] nums) Initializes the object with the integer array nums.
 int sumRange(int left, int right) Returns the sum of the elements of nums between indices left and right inclusive (i.e. nums[left] + nums[left + 1] + ... + nums[right]).

 Example 1:
 Input
 ["NumArray", "sumRange", "sumRange", "sumRange"]
 [[[-2, 0, 3, -5, 2, -1]], [0, 2], [2, 5], [0, 5]]
 Output
 [null, 1, -1, -3]

 Explanation
 NumArray numArray = new NumArray([-2, 0, 3, -5, 2, -1]);
 numArray.sumRange(0, 2); // return (-2) + 0 + 3 = 1
 numArray.sumRange(2, 5); // return 3 + (-5) + 2 + (-1) = -1
 numArray.sumRange(0, 5); // return (-2) + 0 + 3 + (-5) + 2 + (-1) = -3

 ## 525. Contiguous Array
 https://leetcode.com/problems/contiguous-array/description/

 Given a binary array nums, return the maximum length of a contiguous subarray with an equal number of 0 and 1.

 Example 1:
 Input: nums = [0,1]
 Output: 2
 Explanation: [0, 1] is the longest contiguous subarray with an equal number of 0 and 1.

 Example 2:
 Input: nums = [0,1,0]
 Output: 2
 Explanation: [0, 1] (or [1, 0]) is a longest contiguous subarray with equal number of 0 and 1.

 ## 560. Subarray Sum Equals K
 https://leetcode.com/problems/subarray-sum-equals-k/description/

 Given an array of integers nums and an integer k, return the total number of subarrays whose sum equals to k.

 A subarray is a contiguous non-empty sequence of elements within an array.

 Example 1:
 Input: nums = [1,1,1], k = 2
 Output: 2

 Example 2:
 Input: nums = [1,2,3], k = 3
 Output: 2


# 2. Two Pointers Pattern
 ## 167. Two Sum II - Input Array Is Sorted
 https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/description/

 Given a 1-indexed array of integers numbers that is already sorted in non-decreasing order, find two numbers such that they add up to a specific target number. Let these two numbers be numbers[index1] and numbers[index2] where 1 <= index1 < index2 <= numbers.length.

 Return the indices of the two numbers, index1 and index2, added by one as an integer array [index1, index2] of length 2.

 The tests are generated such that there is exactly one solution. You may not use the same element twice.

 Your solution must use only constant extra space.

 Example 1:
 Input: numbers = [2,7,11,15], target = 9
 Output: [1,2]
 Explanation: The sum of 2 and 7 is 9. Therefore, index1 = 1, index2 = 2. We return [1, 2].

 Example 2:
 Input: numbers = [2,3,4], target = 6
 Output: [1,3]
 Explanation: The sum of 2 and 4 is 6. Therefore index1 = 1, index2 = 3. We return [1, 3].

 Example 3:
 Input: numbers = [-1,0], target = -1
 Output: [1,2]
 Explanation: The sum of -1 and 0 is -1. Therefore index1 = 1, index2 = 2. We return [1, 2].
 
  ## 15. 3Sum
 https://leetcode.com/problems/3sum/description/

 Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

 Notice that the solution set must not contain duplicate triplets.

 Example 1:
 Input: nums = [-1,0,1,2,-1,-4]
 Output: [[-1,-1,2],[-1,0,1]]
 Explanation:
 nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
 nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
 nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
 The distinct triplets are [-1,0,1] and [-1,-1,2].
 Notice that the order of the output and the order of the triplets does not matter.

 Example 2:
 Input: nums = [0,1,1]
 Output: []
 Explanation: The only possible triplet does not sum up to 0.

 Example 3:
 Input: nums = [0,0,0]
 Output: [[0,0,0]]
 Explanation: The only possible triplet sums up to 0.

 ## 11. Container With Most Water
 https://leetcode.com/problems/container-with-most-water/description/

 You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

 Find two lines that together with the x-axis form a container, such that the container contains the most water.

 Return the maximum amount of water a container can store.

 Notice that you may not slant the container.

 Example 1:
 Input: height = [1,8,6,2,5,4,8,3,7]
 Output: 49
 Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.
 
 Example 2:
 Input: height = [1,1]
 Output: 1


# 3. Sliding Window pattern

 ## 643. Maximum Average Subarray I
 https://leetcode.com/problems/maximum-average-subarray-i/description/

 You are given an integer array nums consisting of n elements, and an integer k.

 Find a contiguous subarray whose length is equal to k that has the maximum average value and return this value. Any answer with a calculation error less than 10-5 will be accepted.

 Example 1:
 Input: nums = [1,12,-5,-6,50,3], k = 4
 Output: 12.75000
 Explanation: Maximum average is (12 - 5 - 6 + 50) / 4 = 51 / 4 = 12.75

 Example 2:
 Input: nums = [5], k = 1
 Output: 5.00000

 ## 3. Longest Substring Without Repeating Characters
 https://leetcode.com/problems/longest-substring-without-repeating-characters/description/

 Given a string s, find the length of the longest
 substring
  without repeating characters.

 Example 1:
 Input: s = "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.

 Example 2:
 Input: s = "bbbbb"
 Output: 1
 Explanation: The answer is "b", with the length of 1.

 Example 3:
 Input: s = "pwwkew"
 Output: 3
 Explanation: The answer is "wke", with the length of 3.
 Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

 ## 76. Minimum Window Substring
 https://leetcode.com/problems/minimum-window-substring/description/

 Given two strings s and t of lengths m and n respectively, return the minimum window
 substring
  of s such that every character in t (including duplicates) is included in the window. If there is no such substring, return the empty string "".

 The testcases will be generated such that the answer is unique.

 Example 1:
 Input: s = "ADOBECODEBANC", t = "ABC"
 Output: "BANC"
 Explanation: The minimum window substring "BANC" includes 'A', 'B', and 'C' from string t.

 Example 2:
 Input: s = "a", t = "a"
 Output: "a"
 Explanation: The entire string s is the minimum window.

 Example 3:
 Input: s = "a", t = "aa"
 Output: ""
 Explanation: Both 'a's from t must be included in the window.
 Since the largest window of s only has one 'a', return empty string.

 ## 424. Longest Repeating Character Replacement
 https://leetcode.com/problems/longest-repeating-character-replacement/description/

 You are given a string s and an integer k. You can choose any character of the string and change it to any other uppercase English character. You can perform this operation at most k times.

 Return the length of the longest substring containing the same letter you can get after performing the above operations.

 Example 1:
 Input: s = "ABAB", k = 2
 Output: 4
 Explanation: Replace the two 'A's with two 'B's or vice versa.

 Example 2:
 Input: s = "AABABBA", k = 1
 Output: 4
 Explanation: Replace the one 'A' in the middle with 'B' and form "AABBBBA".
 The substring "BBBB" has the longest repeating letters, which is 4.
 There may exists other ways to achieve this answer too.

# 4. Fast and slow pointer pattern

 ## 141. Linked List Cycle
 https://leetcode.com/problems/linked-list-cycle/description/

 Given head, the head of a linked list, determine if the linked list has a cycle in it.

 There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the next pointer. Internally, pos is used to denote the index of the node that tail's next pointer is connected to. Note that pos is not passed as a parameter.

 Return true if there is a cycle in the linked list. Otherwise, return false.

 Example 1:
 Input: head = [3,2,0,-4], pos = 1
 Output: true
 Explanation: There is a cycle in the linked list, where the tail connects to the 1st node (0-indexed).

 Example 2:
 Input: head = [1,2], pos = 0
 Output: true
 Explanation: There is a cycle in the linked list, where the tail connects to the 0th node.

 Example 3:
 Input: head = [1], pos = -1
 Output: false
 Explanation: There is no cycle in the linked list.

 ## 202. Happy Number
 https://leetcode.com/problems/happy-number/description/
 
 Uses Floyd's cycle detection algorithm

 Write an algorithm to determine if a number n is happy.

 A happy number is a number defined by the following process:

 Starting with any positive integer, replace the number by the sum of the squares of its digits.
 Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
 Those numbers for which this process ends in 1 are happy.
 Return true if n is a happy number, and false if not.

 Example 1:
 Input: n = 19
 Output: true
 Explanation:
 12 + 92 = 82
 82 + 22 = 68
 62 + 82 = 100
 12 + 02 + 02 = 1

 Example 2:
 Input: n = 2
 Output: false

 ## 287. Find the Duplicate Number
 https://leetcode.com/problems/find-the-duplicate-number/description/
 
 Uses Floyd's cycle detection algorithm

 Given an array of integers nums containing n + 1 integers where each integer is in the range [1, n] inclusive.

 There is only one repeated number in nums, return this repeated number.

 You must solve the problem without modifying the array nums and using only constant extra space.

 Example 1:
 Input: nums = [1,3,4,2,2]
 Output: 2

 Example 2:
 Input: nums = [3,1,3,4,2]
 Output: 3

 Example 3:
 Input: nums = [3,3,3,3,3]
 Output: 3

# 5. Linked List In-place Reversal Pattern

 ## 206. Reverse Linked List
 https://leetcode.com/problems/reverse-linked-list/description/

 Given the head of a singly linked list, reverse the list, and return the reversed list.

 Example 1:
 Input: head = [1,2,3,4,5]
 Output: [5,4,3,2,1]

 Example 2:
 Input: head = [1,2]
 Output: [2,1]

 Example 3:
 Input: head = []
 Output: []
 
  ## 92. Reverse Linked List II
 https://leetcode.com/problems/reverse-linked-list-ii/description/

 Given the head of a singly linked list and two integers left and right where left <= right, reverse the nodes of the list from position left to position right, and return the reversed list.

 Example 1:
 Input: head = [1,2,3,4,5], left = 2, right = 4
 Output: [1,4,3,2,5]

 Example 2:
 Input: head = [5], left = 1, right = 1
 Output: [5]

 ## 24. Swap Nodes in Pairs
 https://leetcode.com/problems/swap-nodes-in-pairs/description/

 Given a linked list, swap every two adjacent nodes and return its head. You must solve the problem without modifying the values in the list's nodes (i.e., only nodes themselves may be changed.)

 Example 1:
 Input: head = [1,2,3,4]
 Output: [2,1,4,3]
 Explanation:

 Example 2:
 Input: head = []
 Output: []

 Example 3:
 Input: head = [1]
 Output: [1]

 Example 4:
 Input: head = [1,2,3]
 Output: [2,1,3]

# 6. Monotonic Stack Pattern

 ## 496. Next Greater Element I
 https://leetcode.com/problems/next-greater-element-i/description/

 The next greater element of some element x in an array is the first greater element that is to the right of x in the same array.

 You are given two distinct 0-indexed integer arrays nums1 and nums2, where nums1 is a subset of nums2.

 For each 0 <= i < nums1.length, find the index j such that nums1[i] == nums2[j] and determine the next greater element of nums2[j] in nums2. If there is no next greater element, then the answer for this query is -1.

 Return an array ans of length nums1.length such that ans[i] is the next greater element as described above.

 Example 1:
 Input: nums1 = [4,1,2], nums2 = [1,3,4,2]
 Output: [-1,3,-1]
 Explanation: The next greater element for each value of nums1 is as follows:
 - 4 is underlined in nums2 = [1,3,4,2]. There is no next greater element, so the answer is -1.
 - 1 is underlined in nums2 = [1,3,4,2]. The next greater element is 3.
 - 2 is underlined in nums2 = [1,3,4,2]. There is no next greater element, so the answer is -1.

 Example 2:
 Input: nums1 = [2,4], nums2 = [1,2,3,4]
 Output: [3,-1]
 Explanation: The next greater element for each value of nums1 is as follows:
 - 2 is underlined in nums2 = [1,2,3,4]. The next greater element is 3.
 - 4 is underlined in nums2 = [1,2,3,4]. There is no next greater element, so the answer is -1.

 ## 739. Daily Temperatures
 https://leetcode.com/problems/daily-temperatures/description/

 Given an array of integers temperatures represents the daily temperatures, return an array answer such that answer[i] is the number of days you have to wait after the ith day to get a warmer temperature. If there is no future day for which this is possible, keep answer[i] == 0 instead.

 Example 1:
 Input: temperatures = [73,74,75,71,69,72,76,73]
 Output: [1,1,4,2,1,1,0,0]

 Example 2:
 Input: temperatures = [30,40,50,60]
 Output: [1,1,1,0]

 Example 3:
 Input: temperatures = [30,60,90]
 Output: [1,1,0]

 ## 84. Largest Rectangle in Histogram
 https://leetcode.com/problems/largest-rectangle-in-histogram/description/

 Given an array of integers heights representing the histogram's bar height where the width of each bar is 1, return the area of the largest rectangle in the histogram.

 Example 1:
 Input: heights = [2,1,5,6,2,3]
 Output: 10
 Explanation: The above is a histogram where width of each bar is 1.
 The largest rectangle is shown in the red area, which has an area = 10 units.

 Example 2:
 Input: heights = [2,4]
 Output: 4

# 7. Top K Elements Pattern

 ## 215. Kth Largest Element in an Array
 https://leetcode.com/problems/kth-largest-element-in-an-array/description/

 Given an integer array nums and an integer k, return the kth largest element in the array.

 Note that it is the kth largest element in the sorted order, not the kth distinct element.

 Can you solve it without sorting?

 Example 1:
 Input: nums = [3,2,1,5,6,4], k = 2
 Output: 5

 Example 2:
 Input: nums = [3,2,3,1,2,4,5,5,6], k = 4
 Output: 4

 ## 347. Top K Frequent Elements
 https://leetcode.com/problems/top-k-frequent-elements/description/

 Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.

 Example 1:
 Input: nums = [1,1,1,2,2,3], k = 2
 Output: [1,2]

 Example 2:
 Input: nums = [1], k = 1
 Output: [1]

 ## 373. Find K Pairs with Smallest Sums
 https://leetcode.com/problems/find-k-pairs-with-smallest-sums/description/

 You are given two integer arrays nums1 and nums2 sorted in non-decreasing order and an integer k.

 Define a pair (u, v) which consists of one element from the first array and one element from the second array.

 Return the k pairs (u1, v1), (u2, v2), ..., (uk, vk) with the smallest sums.

 Example 1:
 Input: nums1 = [1,7,11], nums2 = [2,4,6], k = 3
 Output: [[1,2],[1,4],[1,6]]
 Explanation: The first 3 pairs are returned from the sequence: [1,2],[1,4],[1,6],[7,2],[7,4],[11,2],[7,6],[11,4],[11,6]

 Example 2:
 Input: nums1 = [1,1,2], nums2 = [1,2,3], k = 2
 Output: [[1,1],[1,1]]
 Explanation: The first 2 pairs are returned from the sequence: [1,1],[1,1],[1,2],[2,1],[1,2],[2,2],[1,3],[1,3],[2,3]

# 8. Overlapping Intervals Pattern

 ## 56. Merge Intervals
 https://leetcode.com/problems/merge-intervals/description/

 Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals, and return an array of the non-overlapping intervals that cover all the intervals in the input.

 Example 1:
 Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
 Output: [[1,6],[8,10],[15,18]]
 Explanation: Since intervals [1,3] and [2,6] overlap, merge them into [1,6].

 Example 2:
 Input: intervals = [[1,4],[4,5]]
 Output: [[1,5]]
 Explanation: Intervals [1,4] and [4,5] are considered overlapping.

 ## 57. Insert Interval
 https://leetcode.com/problems/insert-interval/description/

 You are given an array of non-overlapping intervals intervals where intervals[i] = [starti, endi] represent the start and the end of the ith interval and intervals is sorted in ascending order by starti. You are also given an interval newInterval = [start, end] that represents the start and end of another interval.

 Insert newInterval into intervals such that intervals is still sorted in ascending order by starti and intervals still does not have any overlapping intervals (merge overlapping intervals if necessary).

 Return intervals after the insertion.

 Note that you don't need to modify intervals in-place. You can make a new array and return it.

 Example 1:
 Input: intervals = [[1,3],[6,9]], newInterval = [2,5]
 Output: [[1,5],[6,9]]

 Example 2:
 Input: intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]], newInterval = [4,8]
 Output: [[1,2],[3,10],[12,16]]
 Explanation: Because the new interval [4,8] overlaps with [3,5],[6,7],[8,10].

 ## 435. Non-overlapping Intervals
 https://leetcode.com/problems/non-overlapping-intervals/description/

 Given an array of intervals intervals where intervals[i] = [starti, endi], return the minimum number of intervals you need to remove to make the rest of the intervals non-overlapping.

 Note that intervals which only touch at a point are non-overlapping. For example, [1, 2] and [2, 3] are non-overlapping.

 Example 1:
 Input: intervals = [[1,2],[2,3],[3,4],[1,3]]
 Output: 1
 Explanation: [1,3] can be removed and the rest of the intervals are non-overlapping.

 Example 2:
 Input: intervals = [[1,2],[1,2],[1,2]]
 Output: 2
 Explanation: You need to remove two [1,2] to make the rest of the intervals non-overlapping.

 Example 3:
 Input: intervals = [[1,2],[2,3]]
 Output: 0
 Explanation: You don't need to remove any of the intervals since they're already non-overlapping.

# 9 Modified Binary Search Pattern

 ## 704. Binary Search
 https://leetcode.com/problems/binary-search/description/

 Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.

 You must write an algorithm with O(log n) runtime complexity.

 Example 1:
 Input: nums = [-1,0,3,5,9,12], target = 9
 Output: 4
 Explanation: 9 exists in nums and its index is 4

 Example 2:
 Input: nums = [-1,0,3,5,9,12], target = 2
 Output: -1
 Explanation: 2 does not exist in nums so return -1

 ## 33. Search in Rotated Sorted Array
 https://leetcode.com/problems/search-in-rotated-sorted-array/description/
 
 There is an integer array nums sorted in ascending order (with distinct values).

 Prior to being passed to your function, nums is possibly rotated at an unknown pivot index k (1 <= k < nums.length) such that the resulting array is [nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]] (0-indexed). For example, [0,1,2,4,5,6,7] might be rotated at pivot index 3 and become [4,5,6,7,0,1,2].

 Given the array nums after the possible rotation and an integer target, return the index of target if it is in nums, or -1 if it is not in nums.

 You must write an algorithm with O(log n) runtime complexity.

 Example 1:
 Input: nums = [4,5,6,7,0,1,2], target = 0
 Output: 4

 Example 2:
 Input: nums = [4,5,6,7,0,1,2], target = 3
 Output: -1

 Example 3:
 Input: nums = [1], target = 0
 Output: -1
 
 ## 153. Find Minimum in Rotated Sorted Array
 https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/description/

 Suppose an array of length n sorted in ascending order is rotated between 1 and n times. For example, the array nums = [0,1,2,4,5,6,7] might become:

 [4,5,6,7,0,1,2] if it was rotated 4 times.
 [0,1,2,4,5,6,7] if it was rotated 7 times.
 Notice that rotating an array [a[0], a[1], a[2], ..., a[n-1]] 1 time results in the array [a[n-1], a[0], a[1], a[2], ..., a[n-2]].

 Given the sorted rotated array nums of unique elements, return the minimum element of this array.

 You must write an algorithm that runs in O(log n) time.

 Example 1:
 Input: nums = [3,4,5,1,2]
 Output: 1
 Explanation: The original array was [1,2,3,4,5] rotated 3 times.

 Example 2:
 Input: nums = [4,5,6,7,0,1,2]
 Output: 0
 Explanation: The original array was [0,1,2,4,5,6,7] and it was rotated 4 times.

 Example 3:
 Input: nums = [11,13,15,17]
 Output: 11
 Explanation: The original array was [11,13,15,17] and it was rotated 4 times.

 ## 240. Search a 2D Matrix II
 https://leetcode.com/problems/search-a-2d-matrix-ii/description/
  NOTE: Not binary search

 Write an efficient algorithm that searches for a value target in an m x n integer matrix matrix. This matrix has the following properties:

 Integers in each row are sorted in ascending from left to right.
 Integers in each column are sorted in ascending from top to bottom.

 Example 1:
 Input: matrix = [
 [1,4,7,11,15],
 [2,5,8,12,19],
 [3,6,9,16,22],
 [10,13,14,17,24],
 [18,21,23,26,30]
 ], target = 5
 Output: true

 Example 2:
 Input: matrix = [
 [1,4,7,11,15],
 [2,5,8,12,19],
 [3,6,9,16,22],
 [10,13,14,17,24],
 [18,21,23,26,30]
 ], target = 20
 Output: false

# 10 Binary Tree Traversal Pattern

 ## 257. Binary Tree Paths
 https://leetcode.com/problems/binary-tree-paths/description/

 Given the root of a binary tree, return all root-to-leaf paths in any order.

 A leaf is a node with no children.

 Example 1:

         1
       /  \
      2    3
       \
        5

 Input: root = [1,2,3,null,5]
 Output: ["1->2->5","1->3"]

 Example 2:
 Input: root = [1]
 Output: ["1"]

 ## 230. Kth Smallest Element in a BST
 https://leetcode.com/problems/kth-smallest-element-in-a-bst/description/

 Given the root of a binary search tree, and an integer k, return the kth smallest value (1-indexed) of all the values of the nodes in the tree.

 Example 1:
 Input: root = [3,1,4,null,2], k = 1
 Output: 1

 Example 2:

                     5
                    /  \
                   3    6
                  / \
                 2   4
                /
               1

 Input: root = [5,3,6,2,4,null,null,1], k = 3
 Output: 3

 ## 124. Binary Tree Maximum Path Sum
 https://leetcode.com/problems/binary-tree-maximum-path-sum/description/

 A path in a binary tree is a sequence of nodes where each pair of adjacent nodes in the sequence has an edge connecting them. A node can only appear in the sequence at most once. Note that the path does not need to pass through the root.

 The path sum of a path is the sum of the node's values in the path.

 Given the root of a binary tree, return the maximum path sum of any non-empty path.

 Example 1:

 Input: root = [1,2,3]
 Output: 6
 Explanation: The optimal path is 2 -> 1 -> 3 with a path sum of 2 + 1 + 3 = 6.

 Example 2:

         -10
        /   \
       9     20
            /  \
           15   7

 Input: root = [-10,9,20,null,null,15,7]
 Output: 42
 Explanation: The optimal path is 15 -> 20 -> 7 with a path sum of 15 + 20 + 7 = 42.

 ## 107. Binary Tree Level Order Traversal II
 https://leetcode.com/problems/binary-tree-level-order-traversal-ii/description/

 Given the root of a binary tree, return the bottom-up level order traversal of its nodes' values. (i.e., from left to right, level by level from leaf to root).

 Example 1:

        3
       / \
      9   20
          / \
        15   7

 Input: root = [3,9,20,null,null,15,7]
 Output: [[15,7],[9,20],[3]]

 Example 2:
 Input: root = [1]
 Output: [[1]]

 Example 3:
 Input: root = []
 Output: []

# 11 Depth First Search Pattern (DFS)

 ## 113. Path Sum II
 https://leetcode.com/problems/path-sum-ii/description/
 NOTE: Very similar to 257 Binary Tree Paths

 Given the root of a binary tree and an integer targetSum, return all root-to-leaf paths where the sum of the node values in the path equals targetSum. Each path should be returned as a list of the node values, not node references.

 A root-to-leaf path is a path starting from the root and ending at any leaf node. A leaf is a node with no children.

 Example 1:
 Input: root = [5,4,8,11,null,13,4,7,2,null,null,5,1], targetSum = 22
 Output: [[5,4,11,2],[5,8,4,5]]
 Explanation: There are two paths whose sum equals targetSum:
 5 + 4 + 11 + 2 = 22
 5 + 8 + 4 + 5 = 22

 Example 2:
 Input: root = [1,2,3], targetSum = 5
 Output: []

 Example 3:
 Input: root = [1,2], targetSum = 0
 Output: []

 ## 133. Clone Graph
 https://leetcode.com/problems/clone-graph/description/

 Given a reference of a node in a connected undirected graph.

 Return a deep copy (clone) of the graph.

 Each node in the graph contains a value (int) and a list (List[Node]) of its neighbors.

 class Node {
     public int val;
     public List<Node> neighbors;
 }

 Test case format:

 For simplicity, each node's value is the same as the node's index (1-indexed). For example, the first node with val == 1, the second node with val == 2, and so on. The graph is represented in the test case using an adjacency list.

 An adjacency list is a collection of unordered lists used to represent a finite graph. Each list describes the set of neighbors of a node in the graph.

 The given node will always be the first node with val = 1. You must return the copy of the given node as a reference to the cloned graph.

 Example 1:

    1 - 2
    |   |
    4 - 3

 Input: adjList = [[2,4],[1,3],[2,4],[1,3]]
 Output: [[2,4],[1,3],[2,4],[1,3]]
 Explanation: There are 4 nodes in the graph.
 1st node (val = 1)'s neighbors are 2nd node (val = 2) and 4th node (val = 4).
 2nd node (val = 2)'s neighbors are 1st node (val = 1) and 3rd node (val = 3).
 3rd node (val = 3)'s neighbors are 2nd node (val = 2) and 4th node (val = 4).
 4th node (val = 4)'s neighbors are 1st node (val = 1) and 3rd node (val = 3).

 Example 2:
 Input: adjList = [[]]
 Output: [[]]
 Explanation: Note that the input contains one empty list. The graph consists of only one node with val = 1 and it does not have any neighbors.

 Example 3:
 Input: adjList = []
 Output: []
 Explanation: This an empty graph, it does not have any nodes.

 ## 210. Course Schedule II
 https://leetcode.com/problems/course-schedule-ii/description/

 There are a total of numCourses courses you have to take, labeled from 0 to numCourses - 1. You are given an array prerequisites where prerequisites[i] = [ai, bi] indicates that you must take course bi first if you want to take course ai.

 For example, the pair [0, 1], indicates that to take course 0 you have to first take course 1.
 Return the ordering of courses you should take to finish all courses. If there are many valid answers, return any of them. If it is impossible to finish all courses, return an empty array.

 Example 1:
 Input: numCourses = 2, prerequisites = [[1,0]]
 Output: [0,1]
 Explanation: There are a total of 2 courses to take. To take course 1 you should have finished course 0. So the correct course order is [0,1].

 Example 2:
 Input: numCourses = 4, prerequisites = [[1,0],[2,0],[3,1],[3,2]]
 Output: [0,2,1,3]
 Explanation: There are a total of 4 courses to take. To take course 3 you should have finished both courses 1 and 2. Both courses 1 and 2 should be taken after you finished course 0.
 So one correct course order is [0,1,2,3]. Another correct ordering is [0,2,1,3].

 Example 3:
 Input: numCourses = 1, prerequisites = []
 Output: [0]

# 12 Breadth First Search Pattern (BFS)

 ## 994. Rotting Oranges
 https://leetcode.com/problems/rotting-oranges/description/

 You are given an m x n grid where each cell can have one of three values:

 0 representing an empty cell,
 1 representing a fresh orange, or
 2 representing a rotten orange.
 Every minute, any fresh orange that is 4-directionally adjacent to a rotten orange becomes rotten.

 Return the minimum number of minutes that must elapse until no cell has a fresh orange. If this is impossible, return -1.

 Example 1:
 Input: grid = [[2,1,1],[1,1,0],[0,1,1]]
 Output: 4

 Example 2:
 Input: grid = [[2,1,1],[0,1,1],[1,0,1]]
 Output: -1
 Explanation: The orange in the bottom left corner (row 2, column 0) is never rotten, because rotting only happens 4-directionally.

 Example 3:
 Input: grid = [[0,2]]
 Output: 0
 Explanation: Since there are already no fresh oranges at minute 0, the answer is just 0.

 ## 127. Word Ladder
 https://leetcode.com/problems/word-ladder/description/

 A transformation sequence from word beginWord to word endWord using a dictionary wordList is a sequence of words beginWord -> s1 -> s2 -> ... -> sk such that:

 Every adjacent pair of words differs by a single letter.
 Every si for 1 <= i <= k is in wordList. Note that beginWord does not need to be in wordList.
 sk == endWord
 Given two words, beginWord and endWord, and a dictionary wordList, return the number of words in the shortest transformation sequence from beginWord to endWord, or 0 if no such sequence exists.

 Example 1:
 Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log","cog"]
 Output: 5
 Explanation: One shortest transformation sequence is "hit" -> "hot" -> "dot" -> "dog" -> cog", which is 5 words long.

 Example 2:
 Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log"]
 Output: 0
 Explanation: The endWord "cog" is not in wordList, therefore there is no valid transformation sequence.

# 13 Matrix Traversal Pattern

 ## 733. Flood Fill
 https://leetcode.com/problems/flood-fill/description/

 You are given an image represented by an m x n grid of integers image, where image[i][j] represents the pixel value of the image. You are also given three integers sr, sc, and color. Your task is to perform a flood fill on the image starting from the pixel image[sr][sc].

 To perform a flood fill:

 Begin with the starting pixel and change its color to color.
 Perform the same process for each pixel that is directly adjacent (pixels that share a side with the original pixel, either horizontally or vertically) and shares the same color as the starting pixel.
 Keep repeating this process by checking neighboring pixels of the updated pixels and modifying their color if it matches the original color of the starting pixel.
 The process stops when there are no more adjacent pixels of the original color to update.
 Return the modified image after performing the flood fill.

 Example 1:
 Input: image = [[1,1,1],[1,1,0],[1,0,1]], sr = 1, sc = 1, color = 2
 Output: [[2,2,2],[2,2,0],[2,0,1]]

 Explanation:
 From the center of the image with position (sr, sc) = (1, 1) (i.e., the red pixel), all pixels connected by a path of the same color as the starting pixel (i.e., the blue pixels) are colored with the new color.

 Note the bottom corner is not colored 2, because it is not horizontally or vertically connected to the starting pixel.

 Example 2:
 Input: image = [[0,0,0],[0,0,0]], sr = 0, sc = 0, color = 0
 Output: [[0,0,0],[0,0,0]]

 Explanation:
 The starting pixel is already colored with 0, which is the same as the target color. Therefore, no changes are made to the image.

 ## 200. Number of Islands
 https://leetcode.com/problems/number-of-islands/description/

 Given an m x n 2D binary grid grid which represents a map of '1's (land) and '0's (water), return the number of islands.

 An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.

 Example 1:
 Input: grid = [
   ["1","1","1","1","0"],
   ["1","1","0","1","0"],
   ["1","1","0","0","0"],
   ["0","0","0","0","0"]
 ]
 Output: 1

 Example 2:
 Input: grid = [
   ["1","1","0","0","0"],
   ["1","1","0","0","0"],
   ["0","0","1","0","0"],
   ["0","0","0","1","1"]
 ]
 Output: 3

 ## 130. Surrounded Regions
 https://leetcode.com/problems/surrounded-regions/description/

 You are given an m x n matrix board containing letters 'X' and 'O', capture regions that are surrounded:

 Connect: A cell is connected to adjacent cells horizontally or vertically.
 Region: To form a region connect every 'O' cell.
 Surround: The region is surrounded with 'X' cells if you can connect the region with 'X' cells and none of the region cells are on the edge of the board.
 A surrounded region is captured by replacing all 'O's with 'X's in the input matrix board.

 Example 1:
 Input: board = [["X","X","X","X"],["X","O","O","X"],["X","X","O","X"],["X","O","X","X"]]
 Output: [["X","X","X","X"],["X","X","X","X"],["X","X","X","X"],["X","O","X","X"]]

 Explanation:
 In the above diagram, the bottom region is not captured because it is on the edge of the board and cannot be surrounded.

 Example 2:
 Input: board = [["X"]]
 Output: [["X"]]

 ## 695. Max Area of Island
 https://leetcode.com/problems/max-area-of-island/description/

 You are given an m x n binary matrix grid. An island is a group of 1's (representing land) connected 4-directionally (horizontal or vertical.) You may assume all four edges of the grid are surrounded by water.

 The area of an island is the number of cells with a value 1 in the island.

 Return the maximum area of an island in grid. If there is no island, return 0.

 Example 1:
 Input: grid = [[0,0,1,0,0,0,0,1,0,0,0,0,0],[0,0,0,0,0,0,0,1,1,1,0,0,0],[0,1,1,0,1,0,0,0,0,0,0,0,0],[0,1,0,0,1,1,0,0,1,0,1,0,0],[0,1,0,0,1,1,0,0,1,1,1,0,0],[0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,0,0,1,1,1,0,0,0],[0,0,0,0,0,0,0,1,1,0,0,0,0]]
 Output: 6
 Explanation: The answer is not 11, because the island must be connected 4-directionally.

 Example 2:
 Input: grid = [[0,0,0,0,0,0,0,0]]
 Output: 0

 ## 463. Island Perimeter
 https://leetcode.com/problems/island-perimeter/description/

 You are given row x col grid representing a map where grid[i][j] = 1 represents land and grid[i][j] = 0 represents water.

 Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells).

 The island doesn't have "lakes", meaning the water inside isn't connected to the water around the island. One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.

 Example 1:
 Input: grid = [[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]
 Output: 16
 Explanation: The perimeter is the 16 yellow stripes in the image above.

 Example 2:
 Input: grid = [[1]]
 Output: 4

 Example 3:
 Input: grid = [[1,0]]
 Output: 4

# 14 Backtracking Pattern

 ## 46. Permutations
 https://leetcode.com/problems/permutations/description/

 Given an array nums of distinct integers, return all the possible permutations. You can return the answer in any order.

 Example 1:
 Input: nums = [1,2,3]
 Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

 Example 2:
 Input: nums = [0,1]
 Output: [[0,1],[1,0]]

 Example 3:
 Input: nums = [1]
 Output: [[1]]

 ## 78. Subsets
 https://leetcode.com/problems/subsets/

 Given an integer array nums of unique elements, return all possible
 subsets
  (the power set).

 The solution set must not contain duplicate subsets. Return the solution in any order.

 Example 1:
 Input: nums = [1,2,3]
 Output: [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]

 Example 2:
 Input: nums = [0]
 Output: [[],[0]]

 ## 51. N-Queens
 https://leetcode.com/problems/n-queens/description/

 The n-queens puzzle is the problem of placing n queens on an n x n chessboard such that no two queens attack each other.

 Given an integer n, return all distinct solutions to the n-queens puzzle. You may return the answer in any order.

 Each solution contains a distinct board configuration of the n-queens' placement, where 'Q' and '.' both indicate a queen and an empty space, respectively.

 Example 1:
 Input: n = 4
 Output: [[".Q..","...Q","Q...","..Q."],["..Q.","Q...","...Q",".Q.."]]
 Explanation: There exist two distinct solutions to the 4-queens puzzle as shown above

 Example 2:
 Input: n = 1
 Output: [["Q"]]

# 14 Dynamic Programming Pattern

 ## 70. Climbing Stairs
 https://leetcode.com/problems/climbing-stairs/description/
 15. Dynamic Programming Pattern

 You are climbing a staircase. It takes n steps to reach the top.

 Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

 Example 1:
 Input: n = 2
 Output: 2
 Explanation: There are two ways to climb to the top.
 1. 1 step + 1 step
 2. 2 steps

 Example 2:
 Input: n = 3
 Output: 3
 Explanation: There are three ways to climb to the top.
 1. 1 step + 1 step + 1 step
 2. 1 step + 2 steps
 3. 2 steps + 1 step

 ## 746. Min Cost Climbing Stairs
 https://leetcode.com/problems/min-cost-climbing-stairs/description/
 15 Dynamic Programming

 You are given an integer array cost where cost[i] is the cost of ith step on a staircase. Once you pay the cost, you can either climb one or two steps.

 You can either start from the step with index 0, or the step with index 1.

 Return the minimum cost to reach the top of the floor.

 Example 1:
 Input: cost = [10,15,20]
 Output: 15
 Explanation: You will start at index 1.
 - Pay 15 and climb two steps to reach the top.
 The total cost is 15.

 Example 2:
 Input: cost = [1,100,1,1,1,100,1,1,100,1]
 Output: 6
 Explanation: You will start at index 0.
 - Pay 1 and climb two steps to reach index 2.
 - Pay 1 and climb two steps to reach index 4.
 - Pay 1 and climb two steps to reach index 6.
 - Pay 1 and climb one step to reach index 7.
 - Pay 1 and climb two steps to reach index 9.
 - Pay 1 and climb one step to reach the top.
 The total cost is 6.

 ## 322. Coin Change
 https://leetcode.com/problems/coin-change/description/

 15 Dynamic Programming

 You are given an integer array coins representing coins of different denominations and an integer amount representing a total amount of money.

 Return the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return -1.

 You may assume that you have an infinite number of each kind of coin.

 Example 1:
 Input: coins = [1,2,5], amount = 11
 Output: 3
 Explanation: 11 = 5 + 5 + 1

 Example 2:
 Input: coins = [2], amount = 3
 Output: -1

 Example 3:
 Input: coins = [1], amount = 0
 Output: 0

 ## 1143. Longest Common Subsequence
 https://leetcode.com/problems/longest-common-subsequence/description/

 Given two strings text1 and text2, return the length of their longest common subsequence. If there is no common subsequence, return 0.

 A subsequence of a string is a new string generated from the original string with some characters (can be none) deleted without changing the relative order of the remaining characters.

 For example, "ace" is a subsequence of "abcde".
 A common subsequence of two strings is a subsequence that is common to both strings.

 Example 1:
 Input: text1 = "abcde", text2 = "ace"
 Output: 3
 Explanation: The longest common subsequence is "ace" and its length is 3.

 Example 2:
 Input: text1 = "abc", text2 = "abc"
 Output: 3
 Explanation: The longest common subsequence is "abc" and its length is 3.

 Example 3:
 Input: text1 = "abc", text2 = "def"
 Output: 0
 Explanation: There is no such common subsequence, so the result is 0.

 ## 300. Longest Increasing Subsequence
 https://leetcode.com/problems/longest-increasing-subsequence/description/
 15 Dynamic Programming pattern
 
 Given an integer array nums, return the length of the longest strictly increasing
 subsequence

 Example 1:
 Input: nums = [10,9,2,5,3,7,101,18]
 Output: 4
 Explanation: The longest increasing subsequence is [2,3,7,101], therefore the length is 4.

 Example 2:
 Input: nums = [0,1,0,3,2,3]
 Output: 4

 Example 3:
 Input: nums = [7,7,7,7,7,7,7]
 Output: 1

 ## 416. Partition Equal Subset Sum
 https://leetcode.com/problems/partition-equal-subset-sum/description/

 Given an integer array nums, return true if you can partition the array into two subsets such that the sum of the elements in both subsets is equal or false otherwise.

 Example 1:
 Input: nums = [1,5,11,5]
 Output: true
 Explanation: The array can be partitioned as [1, 5, 5] and [11].

 Example 2:
 Input: nums = [1,2,3,5]
 Output: false
 Explanation: The array cannot be partitioned into equal sum subsets.

 ## 312. Burst Balloons
 https://leetcode.com/problems/burst-balloons/description/
 15 Dynamic Programming Pattern

 You are given n balloons, indexed from 0 to n - 1. Each balloon is painted with a number on it represented by an array nums. You are asked to burst all the balloons.

 If you burst the ith balloon, you will get nums[i - 1] * nums[i] * nums[i + 1] coins. If i - 1 or i + 1 goes out of bounds of the array, then treat it as if there is a balloon with a 1 painted on it.

 Return the maximum coins you can collect by bursting the balloons wisely.

 Example 1:
 Input: nums = [3,1,5,8]
 Output: 167
 Explanation:
 nums = [3,1,5,8] --> [3,5,8] --> [3,8] --> [8] --> []
 coins =  3*1*5    +   3*5*8   +  1*3*8  + 1*8*1 = 167

 Example 2:
 Input: nums = [1,5]
 Output: 10
 
 # LeetcodeCollection: Blind75
Various Leetcode playgrounds: Backtracking, Stacks, DynamicProgramming, Blind75

 ## 1. Two Sum
 https://leetcode.com/problems/two-sum/description/

 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 You can return the answer in any order.

 Example 1:
 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

 Example 2:
 Input: nums = [3,2,4], target = 6
 Output: [1,2]

 Example 3:
 Input: nums = [3,3], target = 6
 Output: [0,1]

 ## 121. Best Time to Buy and Sell Stock
 https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/

 Sliding Window or Two Pointer technique

 You are given an array prices where prices[i] is the price of a given stock on the ith day.

 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

 Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

 Example 1:
 Input: prices = [7,1,5,3,6,4]
 Output: 5
 Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
 Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.

 Example 2:
 Input: prices = [7,6,4,3,1]
 Output: 0
 Explanation: In this case, no transactions are done and the max profit = 0.

 ## 217. Contains Duplicate
 https://leetcode.com/problems/contains-duplicate/description/

 Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

 Example 1:
 Input: nums = [1,2,3,1]
 Output: true

 Example 2:
 Input: nums = [1,2,3,4]
 Output: false

 Example 3:
 Input: nums = [1,1,1,3,3,4,3,2,4,2]
 Output: true

 ## 238. Product of Array Except Self
 https://leetcode.com/problems/product-of-array-except-self/

 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

 You must write an algorithm that runs in O(n) time and without using the division operation.

 Example 1:
 Input: nums = [1,2,3,4]
 Output: [24,12,8,6]

 Example 2:
 Input: nums = [-1,1,0,-3,3]
 Output: [0,0,9,0,0]

 ## 53. Maximum Subarray
 https://leetcode.com/problems/maximum-subarray/description/

 Given an integer array nums, find the
 subarray
  with the largest sum, and return its sum.

 Example 1:
 Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
 Output: 6
 Explanation: The subarray [4,-1,2,1] has the largest sum 6.

 Example 2:
 Input: nums = [1]
 Output: 1
 Explanation: The subarray [1] has the largest sum 1.

 Example 3:
 Input: nums = [5,4,-1,7,8]
 Output: 23
 Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.

## 152. Maximum Product Subarray
 https://leetcode.com/problems/maximum-product-subarray/description/

 Given an integer array nums, find a
 subarray
  that has the largest product, and return the product.

 The test cases are generated so that the answer will fit in a 32-bit integer.

 Example 1:
 Input: nums = [2,3,-2,4]
 Output: 6
 Explanation: [2,3] has the largest product 6.

 Example 2:
 Input: nums = [-2,0,-1]
 Output: 0
 Explanation: The result cannot be 2, because [-2,-1] is not a subarray.

## 153. Find Minimum in Rotated Sorted Array
 https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/

 Suppose an array of length n sorted in ascending order is rotated between 1 and n times. For example, the array nums = [0,1,2,4,5,6,7] might become:

 [4,5,6,7,0,1,2] if it was rotated 4 times.
 [0,1,2,4,5,6,7] if it was rotated 7 times.
 Notice that rotating an array [a[0], a[1], a[2], ..., a[n-1]] 1 time results in the array [a[n-1], a[0], a[1], a[2], ..., a[n-2]].

 Given the sorted rotated array nums of unique elements, return the minimum element of this array.

 You must write an algorithm that runs in O(log n) time.

 Example 1:
 Input: nums = [3,4,5,1,2]
 Output: 1
 Explanation: The original array was [1,2,3,4,5] rotated 3 times.

 Example 2:
 Input: nums = [4,5,6,7,0,1,2]
 Output: 0
 Explanation: The original array was [0,1,2,4,5,6,7] and it was rotated 4 times.

 Example 3:
 Input: nums = [11,13,15,17]
 Output: 11
 Explanation: The original array was [11,13,15,17] and it was rotated 4 times.

## 33. Search in Rotated Sorted Array
 https://leetcode.com/problems/search-in-rotated-sorted-array/

 Need to search in O(log n)

 There is an integer array nums sorted in ascending order (with distinct values).

 Prior to being passed to your function, nums is possibly rotated at an unknown pivot index k (1 <= k < nums.length) such that the resulting array is [nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]] (0-indexed). For example, [0,1,2,4,5,6,7] might be rotated at pivot index 3 and become [4,5,6,7,0,1,2].

 Given the array nums after the possible rotation and an integer target, return the index of target if it is in nums, or -1 if it is not in nums.

 You must write an algorithm with O(log n) runtime complexity.

 Example 1:
 Input: nums = [4,5,6,7,0,1,2], target = 0
 Output: 4

 Example 2:
 Input: nums = [4,5,6,7,0,1,2], target = 3
 Output: -1

 Example 3:
 Input: nums = [1], target = 0
 Output: -1

## 15. 3Sum
 https://leetcode.com/problems/3sum/description/

 Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

 Notice that the solution set must not contain duplicate triplets.

 Example 1:
 Input: nums = [-1,0,1,2,-1,-4]
 Output: [[-1,-1,2],[-1,0,1]]
 Explanation:
 nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
 nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
 nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
 The distinct triplets are [-1,0,1] and [-1,-1,2].
 Notice that the order of the output and the order of the triplets does not matter.

 Example 2:
 Input: nums = [0,1,1]
 Output: []
 Explanation: The only possible triplet does not sum up to 0.

 Example 3:
 Input: nums = [0,0,0]
 Output: [[0,0,0]]
 Explanation: The only possible triplet sums up to 0.

## 18. 4Sum, FourSum
 https://leetcode.com/problems/4sum/description/

 Given an array nums of n integers, return an array of all the unique quadruplets [nums[a], nums[b], nums[c], nums[d]] such that:

 0 <= a, b, c, d < n
 a, b, c, and d are distinct.
 nums[a] + nums[b] + nums[c] + nums[d] == target
 You may return the answer in any order.

 Example 1:
 Input: nums = [1,0,-1,0,-2,2], target = 0
 Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]

 Example 2:
 Input: nums = [2,2,2,2,2], target = 8
 Output: [[2,2,2,2]]

## 454. 4Sum II, 4Sum2, FourSum II, FourSum 2
 https://leetcode.com/problems/4sum-ii/description/

 Given four integer arrays nums1, nums2, nums3, and nums4 all of length n, return the number of tuples (i, j, k, l) such that:

 0 <= i, j, k, l < n
 nums1[i] + nums2[j] + nums3[k] + nums4[l] == 0

 Example 1:
 Input: nums1 = [1,2], nums2 = [-2,-1], nums3 = [-1,2], nums4 = [0,2]
 Output: 2
 Explanation:
 The two tuples are:
 1. (0, 0, 0, 1) -> nums1[0] + nums2[0] + nums3[0] + nums4[1] = 1 + (-2) + (-1) + 2 = 0
 2. (1, 1, 0, 0) -> nums1[1] + nums2[1] + nums3[0] + nums4[0] = 2 + (-1) + (-1) + 0 = 0

 Example 2:
 Input: nums1 = [0], nums2 = [0], nums3 = [0], nums4 = [0]
 Output: 1

## 11. Container With Most Water
 https://leetcode.com/problems/container-with-most-water/description/

 You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

 Find two lines that together with the x-axis form a container, such that the container contains the most water.

 Return the maximum amount of water a container can store.

 Notice that you may not slant the container.

 Example 1:
 Input: height = [1,8,6,2,5,4,8,3,7]
 Output: 49
 Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.

 Example 2:
 Input: height = [1,1]
 Output: 1

## 191. Number of 1 Bits
 https://leetcode.com/problems/number-of-1-bits/

 Bit manipulation
 NOTE: This doesn't work in a playground! But it works in leetcode
 
 Write a function that takes the binary representation of an unsigned integer and returns the number of '1' bits it has (also known as the Hamming weight).

 Note:

 Note that in some languages, such as Java, there is no unsigned integer type. In this case, the input will be given as a signed integer type. It should not affect your implementation, as the integer's internal binary representation is the same, whether it is signed or unsigned.
 In Java, the compiler represents the signed integers using 2's complement notation. Therefore, in Example 3, the input represents the signed integer. -3.

 Example 1:
 Input: n = 00000000000000000000000000001011
 Output: 3
 Explanation: The input binary string 00000000000000000000000000001011 has a total of three '1' bits.

 Example 2:
 Input: n = 00000000000000000000000010000000
 Output: 1
 Explanation: The input binary string 00000000000000000000000010000000 has a total of one '1' bit.

 Example 3:
 Input: n = 11111111111111111111111111111101
 Output: 31
 Explanation: The input binary string 11111111111111111111111111111101 has a total of thirty one '1' bits.

## 338. Counting Bits
 https://leetcode.com/problems/counting-bits/description/

 Given an integer n, return an array ans of length n + 1 such that for each i (0 <= i <= n), ans[i] is the number of 1's in the binary representation of i.

 Example 1:
 Input: n = 2
 Output: [0,1,1]
 Explanation:
 0 --> 0
 1 --> 1
 2 --> 10

 Example 2:
 Input: n = 5
 Output: [0,1,1,2,1,2]
 Explanation:
 0 --> 0
 1 --> 1
 2 --> 10
 3 --> 11
 4 --> 100
 5 --> 101

## 268. Missing Number
 https://leetcode.com/problems/missing-number/description/

 Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

 Example 1:
 Input: nums = [3,0,1]
 Output: 2
 Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.

 Example 2:
 Input: nums = [0,1]
 Output: 2
 Explanation: n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.

 Example 3:
 Input: nums = [9,6,4,2,3,5,7,0,1]
 Output: 8
 Explanation: n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.

## 190. Reverse Bits
 https://leetcode.com/problems/reverse-bits/description/

 // NOTE: Works in Leetcode but not in a playground

 Reverse bits of a given 32 bits unsigned integer.

 Note:
 Note that in some languages, such as Java, there is no unsigned integer type. In this case, both input and output will be given as a signed integer type. They should not affect your implementation, as the integer's internal binary representation is the same, whether it is signed or unsigned.
 In Java, the compiler represents the signed integers using 2's complement notation. Therefore, in Example 2 above, the input represents the signed integer -3 and the output represents the signed integer -1073741825.

 Example 1:
 Input: n = 00000010100101000001111010011100
 Output:    964176192 (00111001011110000010100101000000)
 Explanation: The input binary string 00000010100101000001111010011100 represents the unsigned integer 43261596, so return 964176192 which its binary representation is 00111001011110000010100101000000.

 Example 2:
 Input: n = 11111111111111111111111111111101
 Output:   3221225471 (10111111111111111111111111111111)
 Explanation: The input binary string 11111111111111111111111111111101 represents the unsigned integer 4294967293, so return 3221225471 which its binary representation is 10111111111111111111111111111111.

## 70. Climbing Stairs
 https://leetcode.com/problems/climbing-stairs/description/

 You are climbing a staircase. It takes n steps to reach the top.
 Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

 Example 1:
 Input: n = 2
 Output: 2
 Explanation: There are two ways to climb to the top.
 1. 1 step + 1 step
 2. 2 steps

 Example 2:
 Input: n = 3
 Output: 3
 Explanation: There are three ways to climb to the top.
 1. 1 step + 1 step + 1 step
 2. 1 step + 2 steps
 3. 2 steps + 1 step

## 322. Coin Change
// DYNAMIC PROGRAMMING
 https://leetcode.com/problems/coin-change/

 You are given an integer array coins representing coins of different denominations and an integer amount representing a total amount of money.

 Return the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return -1.

 You may assume that you have an infinite number of each kind of coin.

 Example 1:
 Input: coins = [1,2,5], amount = 11
 Output: 3
 Explanation: 11 = 5 + 5 + 1

 Example 2:
 Input: coins = [2], amount = 3
 Output: -1

 Example 3:
 Input: coins = [1], amount = 0
 Output: 0

## 300. Longest Increasing Subsequence
 https://leetcode.com/problems/longest-increasing-subsequence/description/

 // DYNAMIC PROGRAMMING

 Given an integer array nums, return the length of the longest strictly increasing
 subsequence

 Example 1:
 Input: nums = [10,9,2,5,3,7,101,18]
 Output: 4
 Explanation: The longest increasing subsequence is [2,3,7,101], therefore the length is 4.

 Example 2:
 Input: nums = [0,1,0,3,2,3]
 Output: 4

 Example 3:
 Input: nums = [7,7,7,7,7,7,7]
 Output: 1

## 139. Word Break
 https://leetcode.com/problems/word-break/

 // Bottom up dynamic programming

 Given a string s and a dictionary of strings wordDict, return true if s can be segmented into a space-separated sequence of one or more dictionary words.

 Note that the same word in the dictionary may be reused multiple times in the segmentation.

 Example 1:
 Input: s = "leetcode", wordDict = ["leet","code"]
 Output: true
 Explanation: Return true because "leetcode" can be segmented as "leet code".

 Example 2:
 Input: s = "applepenapple", wordDict = ["apple","pen"]
 Output: true
 Explanation: Return true because "applepenapple" can be segmented as "apple pen apple".
 Note that you are allowed to reuse a dictionary word.

 Example 3:
 Input: s = "catsandog", wordDict = ["cats","dog","sand","and","cat"]
 Output: false

## 1143. Longest Common Subsequence
 https://leetcode.com/problems/longest-common-subsequence/description/

// Bottom Up Dynamic programming

 Given two strings text1 and text2, return the length of their longest common subsequence. If there is no common subsequence, return 0.

 A subsequence of a string is a new string generated from the original string with some characters (can be none) deleted without changing the relative order of the remaining characters.

 For example, "ace" is a subsequence of "abcde".
 A common subsequence of two strings is a subsequence that is common to both strings.

 Example 1:
 Input: text1 = "abcde", text2 = "ace"
 Output: 3
 Explanation: The longest common subsequence is "ace" and its length is 3.

 Example 2:
 Input: text1 = "abc", text2 = "abc"
 Output: 3
 Explanation: The longest common subsequence is "abc" and its length is 3.

 Example 3:
 Input: text1 = "abc", text2 = "def"
 Output: 0
 Explanation: There is no such common subsequence, so the result is 0.

## 140. Word Break II
 https://leetcode.com/problems/word-break-ii/description/

 // DOESN'T WORK YET

 Given a string s and a dictionary of strings wordDict, add spaces in s to construct a sentence where each word is a valid dictionary word. Return all such possible sentences in any order.

 Note that the same word in the dictionary may be reused multiple times in the segmentation.

 Example 1:
 Input: s = "catsanddog", wordDict = ["cat","cats","and","sand","dog"]
 Output: ["cats and dog","cat sand dog"]

 Example 2:
 Input: s = "pineapplepenapple", wordDict = ["apple","pen","applepen","pine","pineapple"]
 Output: ["pine apple pen apple","pineapple pen apple","pine applepen apple"]
 Explanation: Note that you are allowed to reuse a dictionary word.

 Example 3:
 Input: s = "catsandog", wordDict = ["cats","dog","sand","and","cat"]
 Output: []

## 39. Combination Sum
 https://leetcode.com/problems/combination-sum/description/

 Given an array of distinct integers candidates and a target integer target, return a list of all unique combinations of candidates where the chosen numbers sum to target. You may return the combinations in any order.

 The same number may be chosen from candidates an unlimited number of times. Two combinations are unique if the
 frequency
  of at least one of the chosen numbers is different.

 The test cases are generated such that the number of unique combinations that sum up to target is less than 150 combinations for the given input.

 Example 1:
 Input: candidates = [2,3,6,7], target = 7
 Output: [[2,2,3],[7]]
 Explanation:
 2 and 3 are candidates, and 2 + 2 + 3 = 7. Note that 2 can be used multiple times.
 7 is a candidate, and 7 = 7.
 These are the only two combinations.

 Example 2:
 Input: candidates = [2,3,5], target = 8
 Output: [[2,2,2,2],[2,3,3],[3,5]]

 Example 3:
 Input: candidates = [2], target = 1
 Output: []

## 198. House Robber
 https://leetcode.com/problems/house-robber/description/

 // Dynamic Programming

 You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security systems connected and it will automatically contact the police if two adjacent houses were broken into on the same night.

 Given an integer array nums representing the amount of money of each house, return the maximum amount of money you can rob tonight without alerting the police.

 Example 1:
 Input: nums = [1,2,3,1]
 Output: 4
 Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
 Total amount you can rob = 1 + 3 = 4.

 Example 2:
 Input: nums = [2,7,9,3,1]
 Output: 12
 Explanation: Rob house 1 (money = 2), rob house 3 (money = 9) and rob house 5 (money = 1).
 Total amount you can rob = 2 + 9 + 1 = 12.

## 213. House Robber II
 https://leetcode.com/problems/house-robber-ii/description/

 // Dynamic Programming

 You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed. All houses at this place are arranged in a circle. That means the first house is the neighbor of the last one. Meanwhile, adjacent houses have a security system connected, and it will automatically contact the police if two adjacent houses were broken into on the same night.

 Given an integer array nums representing the amount of money of each house, return the maximum amount of money you can rob tonight without alerting the police.

 Example 1:
 Input: nums = [2,3,2]
 Output: 3
 Explanation: You cannot rob house 1 (money = 2) and then rob house 3 (money = 2), because they are adjacent houses.

 Example 2:
 Input: nums = [1,2,3,1]
 Output: 4
 Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
 Total amount you can rob = 1 + 3 = 4.

 Example 3:
 Input: nums = [1,2,3]
 Output: 3

## 91. Decode Ways
 https://leetcode.com/problems/decode-ways/description/

 A message containing letters from A-Z can be encoded into numbers using the following mapping:

 'A' -> "1"
 'B' -> "2"
 ...
 'Z' -> "26"
 To decode an encoded message, all the digits must be grouped then mapped back into letters using the reverse of the mapping above (there may be multiple ways). For example, "11106" can be mapped into:

 "AAJF" with the grouping (1 1 10 6)
 "KJF" with the grouping (11 10 6)
 Note that the grouping (1 11 06) is invalid because "06" cannot be mapped into 'F' since "6" is different from "06".

 Given a string s containing only digits, return the number of ways to decode it.

 The test cases are generated so that the answer fits in a 32-bit integer.

 Example 1:
 Input: s = "12"
 Output: 2
 Explanation: "12" could be decoded as "AB" (1 2) or "L" (12).

 Example 2:
 Input: s = "226"
 Output: 3
 Explanation: "226" could be decoded as "BZ" (2 26), "VF" (22 6), or "BBF" (2 2 6).

 Example 3:
 Input: s = "06"
 Output: 0
 Explanation: "06" cannot be mapped to "F" because of the leading zero ("6" is different from "06").

## 62. Unique Paths
 https://leetcode.com/problems/unique-paths/description/
 // BOTTOM UP DYNAMIC PROGRAMMING
 // I SOLOVED ALONE

 There is a robot on an m x n grid. The robot is initially located at the top-left corner (i.e., grid[0][0]). The robot tries to move to the bottom-right corner (i.e., grid[m - 1][n - 1]). The robot can only move either down or right at any point in time.

 Given the two integers m and n, return the number of possible unique paths that the robot can take to reach the bottom-right corner.

 The test cases are generated so that the answer will be less than or equal to 2 * 109.

 Example 1:
 Input: m = 3, n = 7
 Output: 28

 Example 2:
 Input: m = 3, n = 2
 Output: 3
 Explanation: From the top-left corner, there are a total of 3 ways to reach the bottom-right corner:
 1. Right -> Down -> Down
 2. Down -> Down -> Right
 3. Down -> Right -> Down

## 55. Jump Game
 https://leetcode.com/problems/jump-game/description/

 You are given an integer array nums. You are initially positioned at the array's first index, and each element in the array represents your maximum jump length at that position.

 Return true if you can reach the last index, or false otherwise.

 Example 1:
 Input: nums = [2,3,1,1,4]
 Output: true
 Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.

 Example 2:
 Input: nums = [3,2,1,0,4]
 Output: false
 Explanation: You will always arrive at index 3 no matter what. Its maximum jump length is 0, which makes it impossible to reach the last index.

## 133. Clone Graph
 https://leetcode.com/problems/clone-graph/description/
// NOTE: THE DICTIONARY DOESN'T CONFORM TO HASHABLE HERE BUT DOES ON LEETCODE
 
 Given a reference of a node in a connected undirected graph.

 Return a deep copy (clone) of the graph.

 Each node in the graph contains a value (int) and a list (List[Node]) of its neighbors.

 class Node {
     public int val;
     public List<Node> neighbors;
 }

 Test case format:

 For simplicity, each node's value is the same as the node's index (1-indexed). For example, the first node with val == 1, the second node with val == 2, and so on. The graph is represented in the test case using an adjacency list.

 An adjacency list is a collection of unordered lists used to represent a finite graph. Each list describes the set of neighbors of a node in the graph.

 The given node will always be the first node with val = 1. You must return the copy of the given node as a reference to the cloned graph.

 Example 1:
 Input: adjList = [[2,4],[1,3],[2,4],[1,3]]
 Output: [[2,4],[1,3],[2,4],[1,3]]
 Explanation: There are 4 nodes in the graph.
 1st node (val = 1)'s neighbors are 2nd node (val = 2) and 4th node (val = 4).
 2nd node (val = 2)'s neighbors are 1st node (val = 1) and 3rd node (val = 3).
 3rd node (val = 3)'s neighbors are 2nd node (val = 2) and 4th node (val = 4).
 4th node (val = 4)'s neighbors are 1st node (val = 1) and 3rd node (val = 3).

 Example 2:
 Input: adjList = [[]]
 Output: [[]]
 Explanation: Note that the input contains one empty list. The graph consists of only one node with val = 1 and it does not have any neighbors.

 Example 3:
 Input: adjList = []
 Output: []
 Explanation: This an empty graph, it does not have any nodes.

## 207. Course Schedule
 https://leetcode.com/problems/course-schedule/description/

 There are a total of numCourses courses you have to take, labeled from 0 to numCourses - 1. You are given an array prerequisites where prerequisites[i] = [ai, bi] indicates that you must take course bi first if you want to take course ai.

 For example, the pair [0, 1], indicates that to take course 0 you have to first take course 1.
 Return true if you can finish all courses. Otherwise, return false.

 Example 1:
 Input: numCourses = 2, prerequisites = [[1,0]]
 Output: true
 Explanation: There are a total of 2 courses to take.
 To take course 1 you should have finished course 0. So it is possible.

 Example 2:
 Input: numCourses = 2, prerequisites = [[1,0],[0,1]]
 Output: false
 Explanation: There are a total of 2 courses to take.
 To take course 1 you should have finished course 0, and to take course 0 you should also have finished course 1. So it is impossible.

## 417. Pacific Atlantic Water Flow
 https://leetcode.com/problems/pacific-atlantic-water-flow/

 There is an m x n rectangular island that borders both the Pacific Ocean and Atlantic Ocean. The Pacific Ocean touches the island's left and top edges, and the Atlantic Ocean touches the island's right and bottom edges.

 The island is partitioned into a grid of square cells. You are given an m x n integer matrix heights where heights[r][c] represents the height above sea level of the cell at coordinate (r, c).

 The island receives a lot of rain, and the rain water can flow to neighboring cells directly north, south, east, and west if the neighboring cell's height is less than or equal to the current cell's height. Water can flow from any cell adjacent to an ocean into the ocean.

 Return a 2D list of grid coordinates result where result[i] = [ri, ci] denotes that rain water can flow from cell (ri, ci) to both the Pacific and Atlantic oceans.

 Example 1:
 Input: heights = [[1,2,2,3,5],[3,2,3,4,4],[2,4,5,3,1],[6,7,1,4,5],[5,1,1,2,4]]
 Output: [[0,4],[1,3],[1,4],[2,2],[3,0],[3,1],[4,0]]
 Explanation: The following cells can flow to the Pacific and Atlantic oceans, as shown below:
 [0,4]: [0,4] -> Pacific Ocean
        [0,4] -> Atlantic Ocean
 [1,3]: [1,3] -> [0,3] -> Pacific Ocean
        [1,3] -> [1,4] -> Atlantic Ocean
 [1,4]: [1,4] -> [1,3] -> [0,3] -> Pacific Ocean
        [1,4] -> Atlantic Ocean
 [2,2]: [2,2] -> [1,2] -> [0,2] -> Pacific Ocean
        [2,2] -> [2,3] -> [2,4] -> Atlantic Ocean
 [3,0]: [3,0] -> Pacific Ocean
        [3,0] -> [4,0] -> Atlantic Ocean
 [3,1]: [3,1] -> [3,0] -> Pacific Ocean
        [3,1] -> [4,1] -> Atlantic Ocean
 [4,0]: [4,0] -> Pacific Ocean
        [4,0] -> Atlantic Ocean
 Note that there are other possible paths for these cells to flow to the Pacific and Atlantic oceans.

 Example 2:
 Input: heights = [[1]]
 Output: [[0,0]]
 Explanation: The water can flow from the only cell to the Pacific and Atlantic oceans.

## 2364. Count Number of Bad Pairs
 https://leetcode.com/problems/count-number-of-bad-pairs/description/

 You are given a 0-indexed integer array nums. A pair of indices (i, j) is a bad pair if i < j and j - i != nums[j] - nums[i].

 Return the total number of bad pairs in nums.

 Example 1:
 Input: nums = [4,1,3,3]
 Output: 5
 Explanation: The pair (0, 1) is a bad pair since 1 - 0 != 1 - 4.
 The pair (0, 2) is a bad pair since 2 - 0 != 3 - 4, 2 != -1.
 The pair (0, 3) is a bad pair since 3 - 0 != 3 - 4, 3 != -1.
 The pair (1, 2) is a bad pair since 2 - 1 != 3 - 1, 1 != 2.
 The pair (2, 3) is a bad pair since 3 - 2 != 3 - 3, 1 != 0.
 There are a total of 5 bad pairs, so we return 5.

 Example 2:
 Input: nums = [1,2,3,4,5]
 Output: 0
 Explanation: There are no bad pairs.

## 200. Number of Islands
 https://leetcode.com/problems/number-of-islands/description/

 Given an m x n 2D binary grid grid which represents a map of '1's (land) and '0's (water), return the number of islands.

 An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.

 Example 1:
 Input: grid = [
   ["1","1","1","1","0"],
   ["1","1","0","1","0"],
   ["1","1","0","0","0"],
   ["0","0","0","0","0"]
 ]
 Output: 1

 Example 2:
 Input: grid = [
   ["1","1","0","0","0"],
   ["1","1","0","0","0"],
   ["0","0","1","0","0"],
   ["0","0","0","1","1"]
 ]
 Output: 3
 
 ## 128. Longest Consecutive Sequence
 https://leetcode.com/problems/longest-consecutive-sequence/description/

 Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.
 You must write an algorithm that runs in O(n) time.

 Example 1:
 Input: nums = [100,4,200,1,3,2]
 Output: 4
 Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.

 Example 2:
 Input: nums = [0,3,7,2,5,8,4,6,0,1]
 Output: 9

## 57. Insert Interval
 https://leetcode.com/problems/insert-interval/description/

 You are given an array of non-overlapping intervals intervals where intervals[i] = [starti, endi] represent the start and the end of the ith interval and intervals is sorted in ascending order by starti. You are also given an interval newInterval = [start, end] that represents the start and end of another interval.

 Insert newInterval into intervals such that intervals is still sorted in ascending order by starti and intervals still does not have any overlapping intervals (merge overlapping intervals if necessary).

 Return intervals after the insertion.

 Example 1:
 Input: intervals = [[1,3],[6,9]], newInterval = [2,5]
 Output: [[1,5],[6,9]]

 Example 2:
 Input: intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]], newInterval = [4,8]
 Output: [[1,2],[3,10],[12,16]]
 Explanation: Because the new interval [4,8] overlaps with [3,5],[6,7],[8,10].

 ## 56. Merge Intervals
 https://leetcode.com/problems/merge-intervals/description/

 Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals, and return an array of the non-overlapping intervals that cover all the intervals in the input.

 Example 1:
 Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
 Output: [[1,6],[8,10],[15,18]]
 Explanation: Since intervals [1,3] and [2,6] overlap, merge them into [1,6].

 Example 2:
 Input: intervals = [[1,4],[4,5]]
 Output: [[1,5]]
 Explanation: Intervals [1,4] and [4,5] are considered overlapping.

 ## 435. Non-overlapping Intervals
 https://leetcode.com/problems/non-overlapping-intervals/description/

 Given an array of intervals intervals where intervals[i] = [starti, endi], return the minimum number of intervals you need to remove to make the rest of the intervals non-overlapping.

 Example 1:
 Input: intervals = [[1,2],[2,3],[3,4],[1,3]]
 Output: 1
 Explanation: [1,3] can be removed and the rest of the intervals are non-overlapping.

 Example 2:
 Input: intervals = [[1,2],[1,2],[1,2]]
 Output: 2
 Explanation: You need to remove two [1,2] to make the rest of the intervals non-overlapping.

 Example 3:
 Input: intervals = [[1,2],[2,3]]
 Output: 0
 Explanation: You don't need to remove any of the intervals since they're already non-overlapping.

 ## 920 · Meeting Rooms
 https://www.lintcode.com/problem/920/

 NOTE: This is a premium leetcode problem so I'm using lintcode instead
 Given an array of meeting time intervals consisting of start and end times [[s1,e1],[s2,e2],...] (si < ei), determine if a person could attend all meetings.

 (0,8),(8,10) is not conflict at 8

 Example1
 Input: intervals = [(0,30),(5,10),(15,20)]
 Output: false
 Explanation:
 (0,30), (5,10) and (0,30),(15,20) will conflict

 Example2
 Input: intervals = [(5,8),(9,15)]
 Output: true
 Explanation:
 Two times will not conflict

 ## 919 · Meeting Rooms II
 https://www.lintcode.com/problem/919/

 NOTE: This is a premium leetcode problem so I'm using lintcode instead

 Given an array of meeting time intervals consisting of start and end times [[s1,e1],[s2,e2],...] (si < ei), find the minimum number of conference rooms required.)
 (0,8),(8,10) is not conflict at 8

 Example1
 Input: intervals = [(0,30),(5,10),(15,20)]
 Output: 2
 Explanation:
 We need two meeting rooms
 room1: (0,30)
 room2: (5,10),(15,20)

 Example2
 Input: intervals = [(2,7)]
 Output: 1
 Explanation:
 Only need one meeting room
 
 ## 206. Reverse Linked List
 https://leetcode.com/problems/reverse-linked-list/description/

 Given the head of a singly linked list, reverse the list, and return the reversed list.

 Example 1:
 Input: head = [1,2,3,4,5]
 Output: [5,4,3,2,1]

 Example 2:
 Input: head = [1,2]
 Output: [2,1]

 Example 3:
 Input: head = []
 Output: []

 ## 141. Linked List Cycle
 https://leetcode.com/problems/linked-list-cycle/description/

 Given head, the head of a linked list, determine if the linked list has a cycle in it.

 There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the next pointer. Internally, pos is used to denote the index of the node that tail's next pointer is connected to. Note that pos is not passed as a parameter.

 Return true if there is a cycle in the linked list. Otherwise, return false.

 Example 1:
 Input: head = [3,2,0,-4], pos = 1
 Output: true
 Explanation: There is a cycle in the linked list, where the tail connects to the 1st node (0-indexed).

 Example 2:
 Input: head = [1,2], pos = 0
 Output: true
 Explanation: There is a cycle in the linked list, where the tail connects to the 0th node.

 Example 3:
 Input: head = [1], pos = -1
 Output: false
 Explanation: There is no cycle in the linked list.

 ## 21. Merge Two Sorted Lists
 https://leetcode.com/problems/merge-two-sorted-lists/description/

 You are given the heads of two sorted linked lists list1 and list2.

 Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.

 Return the head of the merged linked list.

 Example 1:
 Input: list1 = [1,2,4], list2 = [1,3,4]
 Output: [1,1,2,3,4,4]

 Example 2:
 Input: list1 = [], list2 = []
 Output: []

 Example 3:
 Input: list1 = [], list2 = [0]
 Output: [0]
 
  ## 23. Merge k Sorted Lists
 https://leetcode.com/problems/merge-k-sorted-lists/description/

 You are given an array of k linked-lists lists, each linked-list is sorted in ascending order.

 Merge all the linked-lists into one sorted linked-list and return it.

 Example 1:
 Input: lists = [[1,4,5],[1,3,4],[2,6]]
 Output: [1,1,2,3,4,4,5,6]
 Explanation: The linked-lists are:
 [
   1->4->5,
   1->3->4,
   2->6
 ]
 merging them into one sorted list:
 1->1->2->3->4->4->5->6

 Example 2:
 Input: lists = []
 Output: []

 Example 3:
 Input: lists = [[]]
 Output: []

 ## 19. Remove Nth Node From End of List
 https://leetcode.com/problems/remove-nth-node-from-end-of-list/description/

 Given the head of a linked list, remove the nth node from the end of the list and return its head.

 Example 1:
 Input: head = [1,2,3,4,5], n = 2
 Output: [1,2,3,5]

 Example 2:
 Input: head = [1], n = 1
 Output: []

 Example 3:
 Input: head = [1,2], n = 1
 Output: [1]
 
  ## 143. Reorder List
 https://leetcode.com/problems/reorder-list/description/

 You are given the head of a singly linked-list. The list can be represented as:

 L0 → L1 → … → Ln - 1 → Ln
 Reorder the list to be on the following form:

 L0 → Ln → L1 → Ln - 1 → L2 → Ln - 2 → …
 You may not modify the values in the list's nodes. Only nodes themselves may be changed.

 Example 1:
 Input: head = [1,2,3,4]
 Output: [1,4,2,3]

 Example 2:
 Input: head = [1,2,3,4,5]
 Output: [1,5,2,4,3]
 
 ## 73. Set Matrix Zeroes
 https://leetcode.com/problems/set-matrix-zeroes/description/

 NOTE: - the trick is to use Constant space

 Given an m x n integer matrix matrix, if an element is 0, set its entire row and column to 0's.

 You must do it in place.

 Example 1:
 Input: matrix = [[1,1,1],[1,0,1],[1,1,1]]
 Output: [[1,0,1],[0,0,0],[1,0,1]]

 Example 2:
 Input: matrix = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
 Output: [[0,0,0,0],[0,4,5,0],[0,3,1,0]]

 ## 54. Spiral Matrix
 https://leetcode.com/problems/spiral-matrix/description/

 Given an m x n matrix, return all elements of the matrix in spiral order.

 Example 1:
 Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
 Output: [1,2,3,6,9,8,7,4,5]

 Example 2:
 Input: matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
 Output: [1,2,3,4,8,12,11,10,9,5,6,7]
 
  ## 48. Rotate Image
 https://leetcode.com/problems/rotate-image/description/

 You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise).
 You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.

 Example 1:
 Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
 Output: [[7,4,1],[8,5,2],[9,6,3]]

 Example 2:
 Input: matrix = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]
 Output: [[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]

 ## 79. Word Search
 https://leetcode.com/problems/word-search/description/

 Given an m x n grid of characters board and a string word, return true if word exists in the grid.

 The word can be constructed from letters of sequentially adjacent cells, where adjacent cells are horizontally or vertically neighboring. The same letter cell may not be used more than once.

 Example 1:
 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCCED"
 Output: true

 Example 2:
 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "SEE"
 Output: true

 Example 3:
 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCB"
 Output: false

 ## 3. Longest Substring Without Repeating Characters
 https://leetcode.com/problems/longest-substring-without-repeating-characters/description/

 Given a string s, find the length of the longest
 substring without repeating characters.

 Example 1:
 Input: s = "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.

 Example 2:
 Input: s = "bbbbb"
 Output: 1
 Explanation: The answer is "b", with the length of 1.

 Example 3:
 Input: s = "pwwkew"
 Output: 3
 Explanation: The answer is "wke", with the length of 3.

 Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

 ## 424. Longest Repeating Character Replacement
 https://leetcode.com/problems/longest-repeating-character-replacement/description/

 You are given a string s and an integer k. You can choose any character of the string and change it to any other uppercase English character. You can perform this operation at most k times.

 Return the length of the longest substring containing the same letter you can get after performing the above operations.

 Example 1:
 Input: s = "ABAB", k = 2
 Output: 4
 Explanation: Replace the two 'A's with two 'B's or vice versa.

 Example 2:
 Input: s = "AABABBA", k = 1
 Output: 4
 Explanation: Replace the one 'A' in the middle with 'B' and form "AABBBBA".
 The substring "BBBB" has the longest repeating letters, which is 4.
 There may exists other ways to achieve this answer too.

## 76. Minimum Window Substring
 https://leetcode.com/problems/minimum-window-substring/description/

 Given two strings s and t of lengths m and n respectively, return the minimum window substring
  of s such that every character in t (including duplicates) is included in the window. 
 If there is no such substring, return the empty string "".

 The testcases will be generated such that the answer is unique.

 Example 1:
 Input: s = "ADOBECODEBANC", t = "ABC"
 Output: "BANC"
 Explanation: The minimum window substring "BANC" includes 'A', 'B', and 'C' from string t.

 Example 2:
 Input: s = "a", t = "a"
 Output: "a"
 Explanation: The entire string s is the minimum window.

 Example 3:
 Input: s = "a", t = "aa"
 Output: ""
 Explanation: Both 'a's from t must be included in the window.
 Since the largest window of s only has one 'a', return empty string.
 */

 ## 49. Group Anagrams
 https://leetcode.com/problems/group-anagrams/description/
 // NOTE: quick way to map letters to an array index!!

 Given an array of strings strs, group the anagrams together. You can return the answer in any order.

 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

 Example 1:
 Input: strs = ["eat","tea","tan","ate","nat","bat"]
 Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

 Example 2:
 Input: strs = [""]
 Output: [[""]]

 Example 3:
 Input: strs = ["a"]
 Output: [["a"]]

 ## 20. Valid Parentheses
 https://leetcode.com/problems/valid-parentheses/description/

 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Every close bracket has a corresponding open bracket of the same type.

 Example 1:
 Input: s = "()"
 Output: true

 Example 2:
 Input: s = "()[]{}"
 Output: true

 Example 3:
 Input: s = "(]"
 Output: false

 ## 125. Valid Palindrome
 https://leetcode.com/problems/valid-palindrome/description/

 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

 Given a string s, return true if it is a palindrome, or false otherwise.

 Example 1:
 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.

 Example 2:
 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.

 Example 3:
 Input: s = " "
 Output: true
 Explanation: s is an empty string "" after removing non-alphanumeric characters.
 Since an empty string reads the same forward and backward, it is a palindrome.

 ## 5. Longest Palindromic Substring
 https://leetcode.com/problems/longest-palindromic-substring/description/

 Given a string s, return the longest palindromic substring in s.

 Example 1:
 Input: s = "babad"
 Output: "bab"
 Explanation: "aba" is also a valid answer.

 Example 2:
 Input: s = "cbbd"
 Output: "bb"

 ## 647. Palindromic Substrings
 https://leetcode.com/problems/palindromic-substrings/description/

 Given a string s, return the number of palindromic substrings in it.

 A string is a palindrome when it reads the same backward as forward.

 A substring is a contiguous sequence of characters within the string.

 Example 1:
 Input: s = "abc"
 Output: 3
 Explanation: Three palindromic strings: "a", "b", "c".

 Example 2:
 Input: s = "aaa"
 Output: 6
 Explanation: Six palindromic strings: "a", "a", "a", "aa", "aa", "aaa".

 ## 659 · Encode and Decode Strings
 https://www.lintcode.com/problem/659/
 NOTE: THIS PROBLEM IS PREMIUM ON LEETCODE SO IT'S SOLVED ON LINTCODE INSTEAD

 Design an algorithm to encode a list of strings to a string. The encoded string is then sent over the network and is decoded back to the original list of strings.

 Please implement encode and decode

 Example1
 Input: ["lint","code","love","you"]
 Output: ["lint","code","love","you"]
 Explanation:
 One possible encode method is: "lint:;code:;love:;you"

 Example2
 Input: ["we", "say", ":", "yes"]
 Output: ["we", "say", ":", "yes"]
 Explanation:
 One possible encode method is: "we:;say:;:::;yes"

 ## 104. Maximum Depth of Binary Tree
 https://leetcode.com/problems/maximum-depth-of-binary-tree/description/

 Given the root of a binary tree, return its maximum depth.

 A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

 Example 1:
 Input: root = [3,9,20,null,null,15,7]
 Output: 3

 Example 2:
 Input: root = [1,null,2]
 Output: 2

 ## 100. Same Tree
 https://leetcode.com/problems/same-tree/description/

 Given the roots of two binary trees p and q, write a function to check if they are the same or not.

 Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.

 Example 1:
 Input: p = [1,2,3], q = [1,2,3]
 Output: true

 Example 2:
 Input: p = [1,2], q = [1,null,2]
 Output: false

 Example 3:
 Input: p = [1,2,1], q = [1,1,2]
 Output: false

 ## 226. Invert Binary Tree
 https://leetcode.com/problems/invert-binary-tree/description/

 Given the root of a binary tree, invert the tree, and return its root.

 Example 1:
 Input: root = [4,2,7,1,3,6,9]
 Output: [4,7,2,9,6,3,1]

 Example 2:
 Input: root = [2,1,3]
 Output: [2,3,1]

 Example 3:
 Input: root = []
 Output: []
 
## 124. Binary Tree Maximum Path Sum
 https://leetcode.com/problems/binary-tree-maximum-path-sum/description/

 A path in a binary tree is a sequence of nodes where each pair of adjacent nodes in the sequence has an edge connecting them. A node can only appear in the sequence at most once. Note that the path does not need to pass through the root.

 The path sum of a path is the sum of the node's values in the path.

 Given the root of a binary tree, return the maximum path sum of any non-empty path.

 Example 1:
 Input: root = [1,2,3]
 Output: 6
 Explanation: The optimal path is 2 -> 1 -> 3 with a path sum of 2 + 1 + 3 = 6.

 Example 2:
 Input: root = [-10,9,20,null,null,15,7]
 Output: 42
 Explanation: The optimal path is 15 -> 20 -> 7 with a path sum of 15 + 20 + 7 = 42. 

 ## 102. Binary Tree Level Order Traversal
 https://leetcode.com/problems/binary-tree-level-order-traversal/description/

 Given the root of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).

 Example 1:
 Input: root = [3,9,20,null,null,15,7]
 Output: [[3],[9,20],[15,7]]

 Example 2:
 Input: root = [1]
 Output: [[1]]

 Example 3:
 Input: root = []
 Output: []

 ## 297. Serialize and Deserialize Binary Tree
 https://leetcode.com/problems/serialize-and-deserialize-binary-tree/description/

 Serialization is the process of converting a data structure or object into a sequence of bits so that it can be stored in a file or memory buffer, or transmitted across a network connection link to be reconstructed later in the same or another computer environment.

 Design an algorithm to serialize and deserialize a binary tree. There is no restriction on how your serialization/deserialization algorithm should work. You just need to ensure that a binary tree can be serialized to a string and this string can be deserialized to the original tree structure.

 Clarification: The input/output format is the same as how LeetCode serializes a binary tree. You do not necessarily need to follow this format, so please be creative and come up with different approaches yourself.

 Example 1:
 Input: root = [1,2,3,null,null,4,5]
 Output: [1,2,3,null,null,4,5]

 Example 2:
 Input: root = []
 Output: []

 ## 572. Subtree of Another Tree
 https://leetcode.com/problems/subtree-of-another-tree/description/

 Given the roots of two binary trees root and subRoot, return true if there is a subtree of root with the same structure and node values of subRoot and false otherwise.

 A subtree of a binary tree tree is a tree that consists of a node in tree and all of this node's descendants. The tree tree could also be considered as a subtree of itself.

 Example 1:
 Input: root = [3,4,5,1,2], subRoot = [4,1,2]
 Output: true

 Example 2:
 Input: root = [3,4,5,1,2,null,null,null,null,0], subRoot = [4,1,2]
 Output: false

 ## 105. Construct Binary Tree from Preorder and Inorder Traversal
 https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/description/

 Given two integer arrays preorder and inorder where preorder is the preorder traversal of a binary tree and inorder is the inorder traversal of the same tree, construct and return the binary tree.

 Example 1:
 Input: preorder = [3,9,20,15,7], inorder = [9,3,15,20,7]
 Output: [3,9,20,null,null,15,7]

 Example 2:
 Input: preorder = [-1], inorder = [-1]
 Output: [-1]

 ## 98. Validate Binary Search Tree
 https://leetcode.com/problems/validate-binary-search-tree/description/

 Given the root of a binary tree, determine if it is a valid binary search tree (BST).

 A valid BST is defined as follows:

 The left subtree of a node contains only nodes with keys less than the node's key.
 The right subtree of a node contains only nodes with keys greater than the node's key.
 Both the left and right subtrees must also be binary search trees.

 Example 1:
 Input: root = [2,1,3]
 Output: true

 Example 2:
 Input: root = [5,1,4,null,null,3,6]
 Output: false
 Explanation: The root node's value is 5 but its right child's value is 4.

 ## 230. Kth Smallest Element in a BST
 https://leetcode.com/problems/kth-smallest-element-in-a-bst/description/

 Given the root of a binary search tree, and an integer k, return the kth smallest value (1-indexed) of all the values of the nodes in the tree.

 Example 1:
 Input: root = [3,1,4,null,2], k = 1
 Output: 1

 Example 2:
 Input: root = [5,3,6,2,4,null,null,1], k = 3
 Output: 3

 ## 235. Lowest Common Ancesotr of a Binary Search Tree
 https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/description/

 Given a binary search tree (BST), find the lowest common ancestor (LCA) node of two given nodes in the BST.

 According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes p and q as the lowest node in T that has both p and q as descendants (where we allow a node to be a descendant of itself).”

 Example 1:
 Input: root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 8
 Output: 6
 Explanation: The LCA of nodes 2 and 8 is 6.

 Example 2:
 Input: root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 4
 Output: 2
 Explanation: The LCA of nodes 2 and 4 is 2, since a node can be a descendant of itself according to the LCA definition.

 Example 3:
 Input: root = [2,1], p = 2, q = 1
 Output: 2

 ## 208. Implement Trie (Prefix Tree)
 https://leetcode.com/problems/implement-trie-prefix-tree/description/

 A trie (pronounced as "try") or prefix tree is a tree data structure used to efficiently store and retrieve keys in a dataset of strings. There are various applications of this data structure, such as autocomplete and spellchecker.

 Implement the Trie class:

 Trie() Initializes the trie object.
 void insert(String word) Inserts the string word into the trie.
 boolean search(String word) Returns true if the string word is in the trie (i.e., was inserted before), and false otherwise.
 boolean startsWith(String prefix) Returns true if there is a previously inserted string word that has the prefix prefix, and false otherwise.

 Example 1:
 Input
 ["Trie", "insert", "search", "search", "startsWith", "insert", "search"]
 [[], ["apple"], ["apple"], ["app"], ["app"], ["app"], ["app"]]
 Output
 [null, null, true, false, true, null, true]

 Explanation
 Trie trie = new Trie();
 trie.insert("apple");
 trie.search("apple");   // return True
 trie.search("app");     // return False
 trie.startsWith("app"); // return True
 trie.insert("app");
 trie.search("app");     // return True

 ## 211. Design Add and Search Words Data Structure
 https://leetcode.com/problems/design-add-and-search-words-data-structure/description/

 Design a data structure that supports adding new words and finding if a string matches any previously added string.

 Implement the WordDictionary class:

 WordDictionary() Initializes the object.
 void addWord(word) Adds word to the data structure, it can be matched later.
 bool search(word) Returns true if there is any string in the data structure that matches word or false otherwise. word may contain dots '.' where dots can be matched with any letter.

 Example:

 Input
 ["WordDictionary","addWord","addWord","addWord","search","search","search","search"]
 [[],["bad"],["dad"],["mad"],["pad"],["bad"],[".ad"],["b.."]]
 Output
 [null,null,null,null,false,true,true,true]

 Explanation
 WordDictionary wordDictionary = new WordDictionary();
 wordDictionary.addWord("bad");
 wordDictionary.addWord("dad");
 wordDictionary.addWord("mad");
 wordDictionary.search("pad"); // return False
 wordDictionary.search("bad"); // return True
 wordDictionary.search(".ad"); // return True
 wordDictionary.search("b.."); // return True

 ## 212. Word Search 2
 https://leetcode.com/problems/word-search-ii/description/

 Given an m x n board of characters and a list of strings words, return all words on the board.

 Each word must be constructed from letters of sequentially adjacent cells, where adjacent cells are horizontally or vertically neighboring. The same letter cell may not be used more than once in a word.

 Example 1:
 Input: board = [["o","a","a","n"],["e","t","a","e"],["i","h","k","r"],["i","f","l","v"]], words = ["oath","pea","eat","rain"]
 Output: ["eat","oath"]

 Example 2:
 Input: board = [["a","b"],["c","d"]], words = ["abcb"]
 Output: []

 ## 347. Top K Frequent Elements
 https://leetcode.com/problems/top-k-frequent-elements/description/

 Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.

 Example 1:
 Input: nums = [1,1,1,2,2,3], k = 2
 Output: [1,2]

 Example 2:
 Input: nums = [1], k = 1
 Output: [1]

 Constraints:
 1 <= nums.length <= 105
 -104 <= nums[i] <= 104
 k is in the range [1, the number of unique elements in the array].
 It is guaranteed that the answer is unique.

 Follow up: Your algorithm's time complexity must be better than O(n log n), where n is the array's size.

 ## 295. Find Median from Data Stream
 https://leetcode.com/problems/find-median-from-data-stream/description/

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
 
 ## 242. Valid Anagram
 https://leetcode.com/problems/valid-anagram/description/

 Given two strings s and t, return true if t is an anagram of s, and false otherwise.

 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

 Example 1:
 Input: s = "anagram", t = "nagaram"
 Output: true

 Example 2:
 Input: s = "rat", t = "car"
 Output: false

 ## 371. Sum of Two Integers
 https://leetcode.com/problems/sum-of-two-integers/description/

 Given two integers a and b, return the sum of the two integers without using the operators + and -.

 Example 1:
 Input: a = 1, b = 2
 Output: 3

 Example 2:
 Input: a = 2, b = 3
 Output: 5


# LeetcodeCollection: Stacks
Various Leetcode playgrounds: Backtracking, Stacks, DynamicProgramming, Blind75

## 20. Valid Parentheses
 https://leetcode.com/problems/valid-parentheses/description/

 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Every close bracket has a corresponding open bracket of the same type.

 Example 1:
 Input: s = "()"
 Output: true

 Example 2:
 Input: s = "()[]{}"
 Output: true

 Example 3:
 Input: s = "(]"
 Output: false

## 71. Simplify Path
 https://leetcode.com/problems/simplify-path/description/

 Given a string path, which is an absolute path (starting with a slash '/') to a file or directory in a Unix-style file system, convert it to the simplified canonical path.

 In a Unix-style file system, a period '.' refers to the current directory, a double period '..' refers to the directory up a level, and any multiple consecutive slashes (i.e. '//') are treated as a single slash '/'. For this problem, any other format of periods such as '...' are treated as file/directory names.

 The canonical path should have the following format:

 The path starts with a single slash '/'.
 Any two directories are separated by a single slash '/'.
 The path does not end with a trailing '/'.
 The path only contains the directories on the path from the root directory to the target file or directory (i.e., no period '.' or double period '..')
 Return the simplified canonical path.

 Example 1:
 Input: path = "/home/"
 Output: "/home"
 Explanation: Note that there is no trailing slash after the last directory name.

 Example 2
 Input: path = "/../"
 Output: "/"
 Explanation: Going one level up from the root directory is a no-op, as the root level is the highest level you can go.

 Example 3:
 Input: path = "/home//foo/"
 Output: "/home/foo"
 Explanation: In the canonical path, multiple consecutive slashes are replaced by a single one.

## 155. Min Stack
 https://leetcode.com/problems/min-stack/description/

 Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

 Implement the MinStack class:

 MinStack() initializes the stack object.
 void push(int val) pushes the element val onto the stack.
 void pop() removes the element on the top of the stack.
 int top() gets the top element of the stack.
 int getMin() retrieves the minimum element in the stack.

 Here's the rub:
 You must implement a solution with O(1) time complexity for each function.
 Especially the func getMin()

 Example 1:
 Input
 ["MinStack","push","push","push","getMin","pop","top","getMin"]
 [[],[-2],[0],[-3],[],[],[],[]]

 Output
 [null,null,null,null,-3,null,0,-2]

 Explanation
 MinStack minStack = new MinStack();
 minStack.push(-2);
 minStack.push(0);
 minStack.push(-3);
 minStack.getMin(); // return -3
 minStack.pop();
 minStack.top();    // return 0
 minStack.getMin(); // return -2

## 22. Generate Parentheses
 https://leetcode.com/problems/generate-parentheses/description/

 Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.

 Example 1:
 Input: n = 3
 Output: ["((()))","(()())","(())()","()(())","()()()"]

 Example 2:
 Input: n = 1
 Output: ["()"]

## 735. Asteroid Collision
 https://leetcode.com/problems/asteroid-collision/

 We are given an array asteroids of integers representing asteroids in a row.

 For each asteroid, the absolute value represents its size, and the sign represents its direction (positive meaning right, negative meaning left). Each asteroid moves at the same speed.

 Find out the state of the asteroids after all collisions. If two asteroids meet, the smaller one will explode. If both are the same size, both will explode. Two asteroids moving in the same direction will never meet.

 Example 1:
 Input: asteroids = [5,10,-5]
 Output: [5,10]
 Explanation: The 10 and -5 collide resulting in 10. The 5 and 10 never collide.

 Example 2:
 Input: asteroids = [8,-8]
 Output: []
 Explanation: The 8 and -8 collide exploding each other.

 Example 3:
 Input: asteroids = [10,2,-5]
 Output: [10]
 Explanation: The 2 and -5 collide resulting in -5. The 10 and -5 collide resulting in 10.

## 853. Car Fleet
 https://leetcode.com/problems/car-fleet/description/

 There are n cars going to the same destination along a one-lane road. The destination is target miles away.

 You are given two integer array position and speed, both of length n, where position[i] is the position of the ith car and speed[i] is the speed of the ith car (in miles per hour).

 A car can never pass another car ahead of it, but it can catch up to it and drive bumper to bumper at the same speed. The faster car will slow down to match the slower car's speed. The distance between these two cars is ignored (i.e., they are assumed to have the same position).

 A car fleet is some non-empty set of cars driving at the same position and same speed. Note that a single car is also a car fleet.

 If a car catches up to a car fleet right at the destination point, it will still be considered as one car fleet.

 Return the number of car fleets that will arrive at the destination.

 Example 1:
 Input: target = 12, position = [10,8,0,5,3], speed = [2,4,1,1,3]
 Output: 3
 Explanation:
 The cars starting at 10 (speed 2) and 8 (speed 4) become a fleet, meeting each other at 12.
 The car starting at 0 does not catch up to any other car, so it is a fleet by itself.
 The cars starting at 5 (speed 1) and 3 (speed 3) become a fleet, meeting each other at 6. The fleet moves at speed 1 until it reaches target.
 Note that no other cars meet these fleets before the destination, so the answer is 3.

 Example 2:
 Input: target = 10, position = [3], speed = [3]
 Output: 1
 Explanation: There is only one car, hence there is only one fleet.

 Example 3:
 Input: target = 100, position = [0,2,4], speed = [4,2,1]
 Output: 1
 Explanation:
 The cars starting at 0 (speed 4) and 2 (speed 2) become a fleet, meeting each other at 4. The fleet moves at speed 2.
 Then, the fleet (speed 2) and the car starting at 4 (speed 1) become one fleet, meeting each other at 6. The fleet moves at speed 1 until it reaches target.

## 1776. Car Fleet II
 https://leetcode.com/problems/car-fleet-ii/description/

 There are n cars traveling at different speeds in the same direction along a one-lane road. You are given an array cars of length n, where cars[i] = [positioni, speedi] represents:

 positioni is the distance between the ith car and the beginning of the road in meters. It is guaranteed that positioni < positioni+1.
 speedi is the initial speed of the ith car in meters per second.
 For simplicity, cars can be considered as points moving along the number line. Two cars collide when they occupy the same position. Once a car collides with another car, they unite and form a single car fleet. The cars in the formed fleet will have the same position and the same speed, which is the initial speed of the slowest car in the fleet.

 Return an array answer, where answer[i] is the time, in seconds, at which the ith car collides with the next car, or -1 if the car does not collide with the next car. Answers within 10-5 of the actual answers are accepted.

 Example 1:
 Input: cars = [[1,2],[2,1],[4,3],[7,2]]
 Output: [1.00000,-1.00000,3.00000,-1.00000]
 Explanation: After exactly one second, the first car will collide with the second car, and form a car fleet with speed 1 m/s. After exactly 3 seconds, the third car will collide with the fourth car, and form a car fleet with speed 2 m/s.

 Example 2:
 Input: cars = [[3,4],[5,4],[6,3],[9,1]]
 Output: [2.00000,1.00000,1.50000,-1.00000]

## 225. Implement Stack using Queues
 https://leetcode.com/problems/implement-stack-using-queues/description/

 ie. an Array pretending to be a Queue pretending to be a Stack
 
 Implement a last-in-first-out (LIFO) stack using only two queues. The implemented stack should support all the functions of a normal stack (push, top, pop, and empty).

 Implement the MyStack class:

 void push(int x) Pushes element x to the top of the stack.
 int pop() Removes the element on the top of the stack and returns it.
 int top() Returns the element on the top of the stack.
 boolean empty() Returns true if the stack is empty, false otherwise.
 Notes:

 You must use only standard operations of a queue, which means that only push to back, peek/pop from front, size and is empty operations are valid.
 Depending on your language, the queue may not be supported natively. You may simulate a queue using a list or deque (double-ended queue) as long as you use only a queue's standard operations.

 Example 1:
 Input
 ["MyStack", "push", "push", "top", "pop", "empty"]
 [[], [1], [2], [], [], []]
 Output
 [null, null, null, 2, 2, false]

 Explanation
 MyStack myStack = new MyStack();
 myStack.push(1);
 myStack.push(2);
 myStack.top(); // return 2
 myStack.pop(); // return 2
 myStack.empty(); // return False

## 232. Implement Queue using Stacks
 https://leetcode.com/problems/implement-queue-using-stacks/description/

 ie. An Array pretending to be a Stack pretending to be a Queue

 Implement a first in first out (FIFO) queue using only two stacks. The implemented queue should support all the functions of a normal queue (push, peek, pop, and empty).

 Implement the MyQueue class:

 void push(int x) Pushes element x to the back of the queue.
 int pop() Removes the element from the front of the queue and returns it.
 int peek() Returns the element at the front of the queue.
 boolean empty() Returns true if the queue is empty, false otherwise.
 Notes:

 You must use only standard operations of a stack, which means only push to top, peek/pop from top, size, and is empty operations are valid.
 Depending on your language, the stack may not be supported natively. You may simulate a stack using a list or deque (double-ended queue) as long as you use only a stack's standard operations.

 Example 1:
 Input
 ["MyQueue", "push", "push", "peek", "pop", "empty"]
 [[], [1], [2], [], [], []]
 Output
 [null, null, null, 1, 1, false]

 Explanation
 MyQueue myQueue = new MyQueue();
 myQueue.push(1); // queue is: [1]
 myQueue.push(2); // queue is: [1, 2] (leftmost is front of the queue)
 myQueue.peek(); // return 1
 myQueue.pop(); // return 1, queue is [2]
 myQueue.empty(); // return false

## 901. Online Stock Span
 https://leetcode.com/problems/online-stock-span/description/

 Design an algorithm that collects daily price quotes for some stock and returns the span of that stock's price for the current day.

 The span of the stock's price in one day is the maximum number of consecutive days (starting from that day and going backward) for which the stock price was less than or equal to the price of that day.

 For example, if the prices of the stock in the last four days is [7,2,1,2] and the price of the stock today is 2, then the span of today is 4 because starting from today, the price of the stock was less than or equal 2 for 4 consecutive days.
 Also, if the prices of the stock in the last four days is [7,34,1,2] and the price of the stock today is 8, then the span of today is 3 because starting from today, the price of the stock was less than or equal 8 for 3 consecutive days.
 Implement the StockSpanner class:

 StockSpanner() Initializes the object of the class.
 int next(int price) Returns the span of the stock's price given that today's price is price.

 Example 1:
 Input
 ["StockSpanner", "next", "next", "next", "next", "next", "next", "next"]
 [[], [100], [80], [60], [70], [60], [75], [85]]
 Output
 [null, 1, 1, 1, 2, 1, 4, 6]

 Explanation
 StockSpanner stockSpanner = new StockSpanner();
 stockSpanner.next(100); // return 1
 stockSpanner.next(80);  // return 1
 stockSpanner.next(60);  // return 1
 stockSpanner.next(70);  // return 2
 stockSpanner.next(60);  // return 1
 stockSpanner.next(75);  // return 4, because the last 4 prices (including today's price of 75) were less than or equal to today's price.
 stockSpanner.next(85);  // return 6

## 739. Daily Temperatures
 https://leetcode.com/problems/daily-temperatures/description/

 Given an array of integers temperatures represents the daily temperatures, return an array answer such that answer[i] is the number of days you have to wait after the ith day to get a warmer temperature. If there is no future day for which this is possible, keep answer[i] == 0 instead.

 Example 1:
 Input: temperatures = [73,74,75,71,69,72,76,73]
 Output: [1,1,4,2,1,1,0,0]

 Example 2:
 Input: temperatures = [30,40,50,60]
 Output: [1,1,1,0]

 Example 3:
 Input: temperatures = [30,60,90]
 Output: [1,1,0]

## 150. Evaluate Reverse Polish Notation
 https://leetcode.com/problems/evaluate-reverse-polish-notation/

 You are given an array of strings tokens that represents an arithmetic expression in a Reverse Polish Notation.

 Evaluate the expression. Return an integer that represents the value of the expression.

 Note that:
 The valid operators are '+', '-', '*', and '/'.
 Each operand may be an integer or another expression.
 The division between two integers always truncates toward zero.
 There will not be any division by zero.
 The input represents a valid arithmetic expression in a reverse polish notation.
 The answer and all the intermediate calculations can be represented in a 32-bit integer.

 Example 1:
 Input: tokens = ["2","1","+","3","*"]
 Output: 9
 Explanation: ((2 + 1) * 3) = 9

 Example 2:
 Input: tokens = ["4","13","5","/","+"]
 Output: 6
 Explanation: (4 + (13 / 5)) = 6

 Example 3:
 Input: tokens = ["10","6","9","3","+","-11","*","/","*","17","+","5","+"]
 Output: 22
 Explanation: ((10 * (6 / ((9 + 3) * -11))) + 17) + 5
 = ((10 * (6 / (12 * -11))) + 17) + 5
 = ((10 * (6 / -132)) + 17) + 5
 = ((10 * 0) + 17) + 5
 = (0 + 17) + 5
 = 17 + 5
 = 22

## 151. Reverse Words in a String
 https://leetcode.com/problems/reverse-words-in-a-string/description/
 Not a stack :)

 Given an input string s, reverse the order of the words.

 A word is defined as a sequence of non-space characters. The words in s will be separated by at least one space.

 Return a string of the words in reverse order concatenated by a single space.

 Note that s may contain leading or trailing spaces or multiple spaces between two words. The returned string should only have a single space separating the words. Do not include any extra spaces.

 Example 1:
 Input: s = "the sky is blue"
 Output: "blue is sky the"

 Example 2:
 Input: s = "  hello world  "
 Output: "world hello"
 Explanation: Your reversed string should not contain leading or trailing spaces.

 Example 3:
 Input: s = "a good   example"
 Output: "example good a"
 Explanation: You need to reduce multiple spaces between two words to a single space in the reversed string.

## 402. Remove K Digits
 https://leetcode.com/problems/remove-k-digits/

 Given string num representing a non-negative integer num, and an integer k, return the smallest possible integer after removing k digits from num.

 Example 1:
 Input: num = "1432219", k = 3
 Output: "1219"
 Explanation: Remove the three digits 4, 3, and 2 to form the new number 1219 which is the smallest.

 Example 2:
 Input: num = "10200", k = 1
 Output: "200"
 Explanation: Remove the leading 1 and the number is 200. Note that the output must not contain leading zeroes.

 Example 3:
 Input: num = "10", k = 2
 Output: "0"
 Explanation: Remove all the digits from the number and it is left with nothing which is 0.

## 895. Maximum Frequency Stack
 https://leetcode.com/problems/maximum-frequency-stack/

 Design a stack-like data structure to push elements to the stack and pop the most frequent element from the stack.

 Implement the FreqStack class:

 FreqStack() constructs an empty frequency stack.
 void push(int val) pushes an integer val onto the top of the stack.
 int pop() removes and returns the most frequent element in the stack.
 If there is a tie for the most frequent element, the element closest to the stack's top is removed and returned.

 Example 1:
 Input
 ["FreqStack", "push", "push", "push", "push", "push", "push", "pop", "pop", "pop", "pop"]
 [[], [5], [7], [5], [7], [4], [5], [], [], [], []]
 Output
 [null, null, null, null, null, null, null, 5, 7, 5, 4]

 Explanation
 FreqStack freqStack = new FreqStack();
 freqStack.push(5); // The stack is [5]
 freqStack.push(7); // The stack is [5,7]
 freqStack.push(5); // The stack is [5,7,5]
 freqStack.push(7); // The stack is [5,7,5,7]
 freqStack.push(4); // The stack is [5,7,5,7,4]
 freqStack.push(5); // The stack is [5,7,5,7,4,5]
 freqStack.pop();   // return 5, as 5 is the most frequent. The stack becomes [5,7,5,7,4].
 freqStack.pop();   // return 7, as 5 and 7 is the most frequent, but 7 is closest to the top. The stack becomes [5,7,5,4].
 freqStack.pop();   // return 5, as 5 is the most frequent. The stack becomes [5,7,4].
 freqStack.pop();   // return 4, as 4, 5 and 7 is the most frequent, but 4 is closest to the top. The stack becomes [5,7].

## 496. Next Greater Element I
 https://leetcode.com/problems/next-greater-element-i/

 The next greater element of some element x in an array is the first greater element that is to the right of x in the same array.

 You are given two distinct 0-indexed integer arrays nums1 and nums2, where nums1 is a subset of nums2.

 For each 0 <= i < nums1.length, find the index j such that nums1[i] == nums2[j] and determine the next greater element of nums2[j] in nums2. If there is no next greater element, then the answer for this query is -1.

 Return an array ans of length nums1.length such that ans[i] is the next greater element as described above.

 Example 1:
 Input: nums1 = [4,1,2], nums2 = [1,3,4,2]
 Output: [-1,3,-1]
 Explanation: The next greater element for each value of nums1 is as follows:
 - 4 is underlined in nums2 = [1,3,4,2]. There is no next greater element, so the answer is -1.
 - 1 is underlined in nums2 = [1,3,4,2]. The next greater element is 3.
 - 2 is underlined in nums2 = [1,3,4,2]. There is no next greater element, so the answer is -1.

 Example 2:
 Input: nums1 = [2,4], nums2 = [1,2,3,4]
 Output: [3,-1]
 Explanation: The next greater element for each value of nums1 is as follows:
 - 2 is underlined in nums2 = [1,2,3,4]. The next greater element is 3.
 - 4 is underlined in nums2 = [1,2,3,4]. There is no next greater element, so the answer is -1.

## 503. Next Greater Element II
 https://leetcode.com/problems/next-greater-element-ii/description/

 Given a circular integer array nums (i.e., the next element of nums[nums.length - 1] is nums[0]), return the next greater number for every element in nums.

 The next greater number of a number x is the first greater number to its traversing-order next in the array, which means you could search circularly to find its next greater number. If it doesn't exist, return -1 for this number.

 Example 1:
 Input: nums = [1,2,1]
 Output: [2,-1,2]
 Explanation: The first 1's next greater number is 2;
 The number 2 can't find next greater number.
 The second 1's next greater number needs to search circularly, which is also 2.

 Example 2:
 Input: nums = [1,2,3,4,3]
 Output: [2,3,4,-1,4]

## 173. Binary Search Tree Iterator
 https://leetcode.com/problems/binary-search-tree-iterator/description/

 Implement the BSTIterator class that represents an iterator over the in-order traversal of a binary search tree (BST):

 BSTIterator(TreeNode root) Initializes an object of the BSTIterator class. The root of the BST is given as part of the constructor. The pointer should be initialized to a non-existent number smaller than any element in the BST.
 boolean hasNext() Returns true if there exists a number in the traversal to the right of the pointer, otherwise returns false.
 int next() Moves the pointer to the right, then returns the number at the pointer.
 Notice that by initializing the pointer to a non-existent smallest number, the first call to next() will return the smallest element in the BST.

 You may assume that next() calls will always be valid. That is, there will be at least a next number in the in-order traversal when next() is called.

 Example 1:
 Input
 ["BSTIterator", "next", "next", "hasNext", "next", "hasNext", "next", "hasNext", "next", "hasNext"]
 [[[7, 3, 15, null, null, 9, 20]], [], [], [], [], [], [], [], [], []]
 Output
 [null, 3, 7, true, 9, true, 15, true, 20, false]

 Explanation
 BSTIterator bSTIterator = new BSTIterator([7, 3, 15, null, null, 9, 20]);
 bSTIterator.next();    // return 3
 bSTIterator.next();    // return 7
 bSTIterator.hasNext(); // return True
 bSTIterator.next();    // return 9
 bSTIterator.hasNext(); // return True
 bSTIterator.next();    // return 15
 bSTIterator.hasNext(); // return True
 bSTIterator.next();    // return 20
 bSTIterator.hasNext(); // return False

## 94. Binary Tree Inorder Traversal (Using a stack instead of recursion
 https://leetcode.com/problems/binary-tree-inorder-traversal/description/

 Given the root of a binary tree, return the inorder traversal of its nodes' values.

 Example 1:
 Input: root = [1,null,2,3]
 Output: [1,3,2]

 Example 2:
 Input: root = []
 Output: []

 Example 3:
 Input: root = [1]
 Output: [1]

## 682. Baseball Game
 https://leetcode.com/problems/baseball-game/description/

 You are keeping the scores for a baseball game with strange rules. At the beginning of the game, you start with an empty record.

 You are given a list of strings operations, where operations[i] is the ith operation you must apply to the record and is one of the following:

 An integer x.
 Record a new score of x.
 '+'.
 Record a new score that is the sum of the previous two scores.
 'D'.
 Record a new score that is the double of the previous score.
 'C'.
 Invalidate the previous score, removing it from the record.
 Return the sum of all the scores on the record after applying all the operations.

 The test cases are generated such that the answer and all intermediate calculations fit in a 32-bit integer and that all operations are valid.

 Example 1:
 Input: ops = ["5","2","C","D","+"]
 Output: 30
 Explanation:
 "5" - Add 5 to the record, record is now [5].
 "2" - Add 2 to the record, record is now [5, 2].
 "C" - Invalidate and remove the previous score, record is now [5].
 "D" - Add 2 * 5 = 10 to the record, record is now [5, 10].
 "+" - Add 5 + 10 = 15 to the record, record is now [5, 10, 15].
 The total sum is 5 + 10 + 15 = 30.

 Example 2:
 Input: ops = ["5","-2","4","C","D","9","+","+"]
 Output: 27
 Explanation:
 "5" - Add 5 to the record, record is now [5].
 "-2" - Add -2 to the record, record is now [5, -2].
 "4" - Add 4 to the record, record is now [5, -2, 4].
 "C" - Invalidate and remove the previous score, record is now [5, -2].
 "D" - Add 2 * -2 = -4 to the record, record is now [5, -2, -4].
 "9" - Add 9 to the record, record is now [5, -2, -4, 9].
 "+" - Add -4 + 9 = 5 to the record, record is now [5, -2, -4, 9, 5].
 "+" - Add 9 + 5 = 14 to the record, record is now [5, -2, -4, 9, 5, 14].
 The total sum is 5 + -2 + -4 + 9 + 5 + 14 = 27.

 Example 3:
 Input: ops = ["1","C"]
 Output: 0
 Explanation:
 "1" - Add 1 to the record, record is now [1].
 "C" - Invalidate and remove the previous score, record is now [].
 Since the record is empty, the total sum is 0.

## 1209. Remove All Adjacent Duplicates in String II
 https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string-ii/description/

 You are given a string s and an integer k, a k duplicate removal consists of choosing k adjacent and equal letters from s and removing them, causing the left and the right side of the deleted substring to concatenate together.

 We repeatedly make k duplicate removals on s until we no longer can.

 Return the final string after all such duplicate removals have been made. It is guaranteed that the answer is unique.

 Example 1:
 Input: s = "abcd", k = 2
 Output: "abcd"
 Explanation: There's nothing to delete.

 Example 2:
 Input: s = "deeedbbcccbdaa", k = 3
 Output: "aa"
 Explanation:
 First delete "eee" and "ccc", get "ddbbbdaa"
 Then delete "bbb", get "dddaa"
 Finally delete "ddd", get "aa"

 Example 3:
 Input: s = "pbbcggttciiippooaais", k = 2
 Output: "ps"

## 456. 132 Pattern
 https://leetcode.com/problems/132-pattern/description/

 Given an array of n integers nums, a 132 pattern is a subsequence of three integers nums[i], nums[j] and nums[k] such that i < j < k and nums[i] < nums[k] < nums[j].

 Return true if there is a 132 pattern in nums, otherwise, return false.

 Example 1:
 Input: nums = [1,2,3,4]
 Output: false
 Explanation: There is no 132 pattern in the sequence.

 Example 2:
 Input: nums = [3,1,4,2]
 Output: true
 Explanation: There is a 132 pattern in the sequence: [1, 4, 2].

 Example 3:
 Input: nums = [-1,3,2,0]
 Output: true
 Explanation: There are three 132 patterns in the sequence: [-1, 3, 2], [-1, 3, 0] and [-1, 2, 0].

# LeetcodeCollection: DynamicProgramming
Various Leetcode playgrounds: Backtracking, Stacks, DynamicProgramming, Blind75

## 494. Target Sum
 https://leetcode.com/problems/target-sum/

 You are given an integer array nums and an integer target.

 You want to build an expression out of nums by adding one of the symbols '+' and '-' before each integer in nums and then concatenate all the integers.

 For example, if nums = [2, 1], you can add a '+' before 2 and a '-' before 1 and concatenate them to build the expression "+2-1".
 Return the number of different expressions that you can build, which evaluates to target.

 Example 1:
 Input: nums = [1,1,1,1,1], target = 3
 Output: 5
 Explanation: There are 5 ways to assign symbols to make the sum of nums be target 3.
 -1 + 1 + 1 + 1 + 1 = 3
 +1 - 1 + 1 + 1 + 1 = 3
 +1 + 1 - 1 + 1 + 1 = 3
 +1 + 1 + 1 - 1 + 1 = 3
 +1 + 1 + 1 + 1 - 1 = 3

 Example 2:
 Input: nums = [1], target = 1
 Output: 1

## 70. Climbing Stairs
 https://leetcode.com/problems/climbing-stairs/

 You are climbing a staircase. It takes n steps to reach the top.

 Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

 Example 1:

 Input: n = 2
 Output: 2
 Explanation: There are two ways to climb to the top.
 1. 1 step + 1 step
 2. 2 steps
 Example 2:

 Input: n = 3
 Output: 3
 Explanation: There are three ways to climb to the top.
 1. 1 step + 1 step + 1 step
 2. 1 step + 2 steps
 3. 2 steps + 1 step

## 983. Minimum Cost For Tickets
 https://leetcode.com/problems/minimum-cost-for-tickets/

 You have planned some train traveling one year in advance. The days of the year in which you will travel are given as an integer array days. Each day is an integer from 1 to 365.

 Train tickets are sold in three different ways:

 a 1-day pass is sold for costs[0] dollars,
 a 7-day pass is sold for costs[1] dollars, and
 a 30-day pass is sold for costs[2] dollars.
 The passes allow that many days of consecutive travel.

 For example, if we get a 7-day pass on day 2, then we can travel for 7 days: 2, 3, 4, 5, 6, 7, and 8.
 Return the minimum number of dollars you need to travel every day in the given list of days.

 Example 1:
 Input: days = [1,4,6,7,8,20], costs = [2,7,15]
 Output: 11
 Explanation: For example, here is one way to buy passes that lets you travel your travel plan:
 On day 1, you bought a 1-day pass for costs[0] = $2, which covered day 1.
 On day 3, you bought a 7-day pass for costs[1] = $7, which covered days 3, 4, ..., 9.
 On day 20, you bought a 1-day pass for costs[0] = $2, which covered day 20.
 In total, you spent $11 and covered all the days of your travel.

 Example 2:
 Input: days = [1,2,3,4,5,6,7,8,9,10,30,31], costs = [2,7,15]
 Output: 17
 Explanation: For example, here is one way to buy passes that lets you travel your travel plan:
 On day 1, you bought a 30-day pass for costs[2] = $15 which covered days 1, 2, ..., 30.
 On day 31, you bought a 1-day pass for costs[0] = $2 which covered day 31.
 In total, you spent $17 and covered all the days of your travel.

## 322. Coin Change
 https://leetcode.com/problems/coin-change/

 // DYNAMIC PROGRAMMING

 You are given an integer array coins representing coins of different denominations and an integer amount representing a total amount of money.

 Return the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return -1.

 You may assume that you have an infinite number of each kind of coin.

 Example 1:
 Input: coins = [1,2,5], amount = 11
 Output: 3
 Explanation: 11 = 5 + 5 + 1

 Example 2:
 Input: coins = [2], amount = 3
 Output: -1

 Example 3:
 Input: coins = [1], amount = 0
 Output: 0

## 518. Coin Change II
 https://leetcode.com/problems/coin-change-ii/description/

 You are given an integer array coins representing coins of different denominations and an integer amount representing a total amount of money.

 Return the number of combinations that make up that amount. If that amount of money cannot be made up by any combination of the coins, return 0.

 You may assume that you have an infinite number of each kind of coin.

 The answer is guaranteed to fit into a signed 32-bit integer.

 Example 1:
 Input: amount = 5, coins = [1,2,5]
 Output: 4
 Explanation: there are four ways to make up the amount:
 5=5
 5=2+2+1
 5=2+1+1+1
 5=1+1+1+1+1

 Example 2:
 Input: amount = 3, coins = [2]
 Output: 0
 Explanation: the amount of 3 cannot be made up just with coins of 2.

 Example 3:
 Input: amount = 10, coins = [10]
 Output: 1

## 139. Word Break
 https://leetcode.com/problems/word-break/description/

 Given a string s and a dictionary of strings wordDict, return true if s can be segmented into a space-separated sequence of one or more dictionary words.

 Note that the same word in the dictionary may be reused multiple times in the segmentation.

 Example 1:
 Input: s = "leetcode", wordDict = ["leet","code"]
 Output: true
 Explanation: Return true because "leetcode" can be segmented as "leet code".

 Example 2:
 Input: s = "applepenapple", wordDict = ["apple","pen"]
 Output: true
 Explanation: Return true because "applepenapple" can be segmented as "apple pen apple".
 Note that you are allowed to reuse a dictionary word.

 Example 3:
 Input: s = "catsandog", wordDict = ["cats","dog","sand","and","cat"]
 Output: false

## 5. Longest Palindromic Substring
 https://leetcode.com/problems/longest-palindromic-substring/description/

 Given a string s, return the longest
 palindromic

 substring
  in s.

 Example 1:
 Input: s = "babad"
 Output: "bab"
 Explanation: "aba" is also a valid answer.

 Example 2:
 Input: s = "cbbd"
 Output: "bb"

## 91. Decode Ways
 https://leetcode.com/problems/decode-ways/description/

 A message containing letters from A-Z can be encoded into numbers using the following mapping:

 'A' -> "1"
 'B' -> "2"
 ...
 'Z' -> "26"
 To decode an encoded message, all the digits must be grouped then mapped back into letters using the reverse of the mapping above (there may be multiple ways). For example, "11106" can be mapped into:

 "AAJF" with the grouping (1 1 10 6)
 "KJF" with the grouping (11 10 6)
 Note that the grouping (1 11 06) is invalid because "06" cannot be mapped into 'F' since "6" is different from "06".

 Given a string s containing only digits, return the number of ways to decode it.

 The test cases are generated so that the answer fits in a 32-bit integer.

 Example 1:
 Input: s = "12"
 Output: 2
 Explanation: "12" could be decoded as "AB" (1 2) or "L" (12).

 Example 2:
 Input: s = "226"
 Output: 3
 Explanation: "226" could be decoded as "BZ" (2 26), "VF" (22 6), or "BBF" (2 2 6).

 Example 3:
 Input: s = "06"
 Output: 0
 Explanation: "06" cannot be mapped to "F" because of the leading zero ("6" is different from "06").

## 198. House Robber
 https://leetcode.com/problems/house-robber/description/

 // Dynamic Programming

 You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security systems connected and it will automatically contact the police if two adjacent houses were broken into on the same night.

 Given an integer array nums representing the amount of money of each house, return the maximum amount of money you can rob tonight without alerting the police.

 Example 1:
 Input: nums = [1,2,3,1]
 Output: 4
 Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
 Total amount you can rob = 1 + 3 = 4.

 Example 2:
 Input: nums = [2,7,9,3,1]
 Output: 12
 Explanation: Rob house 1 (money = 2), rob house 3 (money = 9) and rob house 5 (money = 1).
 Total amount you can rob = 2 + 9 + 1 = 12.

## 97. Interleaving String
 https://leetcode.com/problems/interleaving-string/description/

 Given strings s1, s2, and s3, find whether s3 is formed by an interleaving of s1 and s2.

 An interleaving of two strings s and t is a configuration where s and t are divided into n and m
 substrings
  respectively, such that:

 s = s1 + s2 + ... + sn
 t = t1 + t2 + ... + tm
 |n - m| <= 1
 The interleaving is s1 + t1 + s2 + t2 + s3 + t3 + ... or t1 + s1 + t2 + s2 + t3 + s3 + ...
 Note: a + b is the concatenation of strings a and b.

 Example 1:
 Input: s1 = "aabcc", s2 = "dbbca", s3 = "aadbbcbcac"
 Output: true
 Explanation: One way to obtain s3 is:
 Split s1 into s1 = "aa" + "bc" + "c", and s2 into s2 = "dbbc" + "a".
 Interleaving the two splits, we get "aa" + "dbbc" + "bc" + "a" + "c" = "aadbbcbcac".
 Since s3 can be obtained by interleaving s1 and s2, we return true.

 Example 2:
 Input: s1 = "aabcc", s2 = "dbbca", s3 = "aadbbbaccc"
 Output: false
 Explanation: Notice how it is impossible to interleave s2 with any other string to obtain s3.

 Example 3:
 Input: s1 = "", s2 = "", s3 = ""
 Output: true

## 213. House Robber II
 https://leetcode.com/problems/house-robber-ii/description/

 // Dynamic Programming

 You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed. All houses at this place are arranged in a circle. That means the first house is the neighbor of the last one. Meanwhile, adjacent houses have a security system connected, and it will automatically contact the police if two adjacent houses were broken into on the same night.

 Given an integer array nums representing the amount of money of each house, return the maximum amount of money you can rob tonight without alerting the police.

 Example 1:
 Input: nums = [2,3,2]
 Output: 3
 Explanation: You cannot rob house 1 (money = 2) and then rob house 3 (money = 2), because they are adjacent houses.

 Example 2:
 Input: nums = [1,2,3,1]
 Output: 4
 Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
 Total amount you can rob = 1 + 3 = 4.

 Example 3:
 Input: nums = [1,2,3]
 Output: 3

## 515 · Paint House
 found on chinese leet code called lintcode
 https://www.lintcode.com/problem/515/

 Description
 There are a row of n houses, each house can be painted with one of the three colors: red, blue or green. The cost of painting each house with a certain color is different. You have to paint all the houses such that no two adjacent houses have the same color, and you need to cost the least. Return the minimum cost.

 The cost of painting each house with a certain color is represented by a n x 3 cost matrix. For example, costs[0][0] is the cost of painting house 0 with color red; costs[1][2] is the cost of painting house 1 with color green, and so on... Find the minimum cost to paint all houses.

 All costs are positive integers.

 Example 1:
 Input: [[14,2,11],[11,14,5],[14,3,10]]
 Output: 10
 Explanation: Paint house 0 into blue, paint house 1 into green, paint house 2 into blue. Minimum cost: 2 + 5 + 3 = 10.

 Example 2:
 Input: [[1,2,3],[1,4,6]]
 Output: 3

##  300. Longest Increasing Subsequence
 https://leetcode.com/problems/longest-increasing-subsequence/description/

 // DYNAMIC PROGRAMMING

 Given an integer array nums, return the length of the longest strictly increasing
 subsequence

 Example 1:
 Input: nums = [10,9,2,5,3,7,101,18]
 Output: 4
 Explanation: The longest increasing subsequence is [2,3,7,101], therefore the length is 4.

 Example 2:
 Input: nums = [0,1,0,3,2,3]
 Output: 4

 Example 3:
 Input: nums = [7,7,7,7,7,7,7]
 Output: 1

## 1143. Longest Common Subsequence
 https://leetcode.com/problems/longest-common-subsequence/description/

 // Bottom Up Dynamic programming

 Given two strings text1 and text2, return the length of their longest common subsequence. If there is no common subsequence, return 0.

 A subsequence of a string is a new string generated from the original string with some characters (can be none) deleted without changing the relative order of the remaining characters.

 For example, "ace" is a subsequence of "abcde".
 A common subsequence of two strings is a subsequence that is common to both strings.

 Example 1:
 Input: text1 = "abcde", text2 = "ace"
 Output: 3
 Explanation: The longest common subsequence is "ace" and its length is 3.

 Example 2:
 Input: text1 = "abc", text2 = "abc"
 Output: 3
 Explanation: The longest common subsequence is "abc" and its length is 3.

 Example 3:
 Input: text1 = "abc", text2 = "def"
 Output: 0
 Explanation: There is no such common subsequence, so the result is 0.

## 152. Maximum Product Subarray
 https://leetcode.com/problems/maximum-product-subarray/description/

 Given an integer array nums, find a
 subarray
  that has the largest product, and return the product.

 The test cases are generated so that the answer will fit in a 32-bit integer.

 Example 1:
 Input: nums = [2,3,-2,4]
 Output: 6
 Explanation: [2,3] has the largest product 6.

 Example 2:
 Input: nums = [-2,0,-1]
 Output: 0
 Explanation: The result cannot be 2, because [-2,-1] is not a subarray.

## 120. Triangle
 https://leetcode.com/problems/triangle/
 // BOTTOM UP DYNAMIC PROGRAMMING
 // I SOLVED BY MYSELF ON PAPER
 
 Given a triangle array, return the minimum path sum from top to bottom.

 For each step, you may move to an adjacent number of the row below. More formally, if you are on index i on the current row, you may move to either index i or index i + 1 on the next row.

 Example 1:
 Input: triangle = [[2],[3,4],[6,5,7],[4,1,8,3]]
 Output: 11
 Explanation: The triangle looks like:
    2
   3 4
  6 5 7
 4 1 8 3
 The minimum path sum from top to bottom is 2 + 3 + 5 + 1 = 11 (underlined above).

 Example 2:
 Input: triangle = [[-10]]
 Output: -10

## 62. Unique Paths
 https://leetcode.com/problems/unique-paths/description/
 // BOTTOM UP DYNAMIC PROGRAMMING
 // I SOLOVED ALONE

 There is a robot on an m x n grid. The robot is initially located at the top-left corner (i.e., grid[0][0]). The robot tries to move to the bottom-right corner (i.e., grid[m - 1][n - 1]). The robot can only move either down or right at any point in time.

 Given the two integers m and n, return the number of possible unique paths that the robot can take to reach the bottom-right corner.

 The test cases are generated so that the answer will be less than or equal to 2 * 109.

 Example 1:
 Input: m = 3, n = 7
 Output: 28

 Example 2:
 Input: m = 3, n = 2
 Output: 3
 Explanation: From the top-left corner, there are a total of 3 ways to reach the bottom-right corner:
 1. Right -> Down -> Down
 2. Down -> Down -> Right
 3. Down -> Right -> Down

## 221. Maximal Square
 https://leetcode.com/problems/maximal-square/
 // Dynamic programming bottom up

 Given an m x n binary matrix filled with 0's and 1's, find the largest square containing only 1's and return its area.

 Example 1:
 Input: matrix = [["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]
 Output: 4

 Example 2:
 Input: matrix = [["0","1"],["1","0"]]
 Output: 1

 Example 3:
 Input: matrix = [["0"]]
 Output: 0

## 63. Unique Paths II
 https://leetcode.com/problems/unique-paths-ii/

 You are given an m x n integer array grid. There is a robot initially located at the top-left corner (i.e., grid[0][0]). The robot tries to move to the bottom-right corner (i.e., grid[m - 1][n - 1]). The robot can only move either down or right at any point in time.

 An obstacle and space are marked as 1 or 0 respectively in grid. A path that the robot takes cannot include any square that is an obstacle.

 Return the number of possible unique paths that the robot can take to reach the bottom-right corner.

 The testcases are generated so that the answer will be less than or equal to 2 * 109.

 Example 1:
 Input: obstacleGrid = [[0,0,0],[0,1,0],[0,0,0]]
 Output: 2
 Explanation: There is one obstacle in the middle of the 3x3 grid above.
 There are two ways to reach the bottom-right corner:
 1. Right -> Right -> Down -> Down
 2. Down -> Down -> Right -> Right

 Example 2:
 Input: obstacleGrid = [[0,1],[0,0]]
 Output: 1

## 64. Minimum Path Sum
 https://leetcode.com/problems/minimum-path-sum/description/
 // DYNAMIC PROGRAMMING

 Given a m x n grid filled with non-negative numbers, find a path from top left to bottom right, which minimizes the sum of all numbers along its path.

 Note: You can only move either down or right at any point in time.

 Example 1:
 Input: grid = [[1,3,1],[1,5,1],[4,2,1]]
 Output: 7
 Explanation: Because the path 1 → 3 → 1 → 1 → 1 minimizes the sum.

 Example 2:
 Input: grid = [[1,2,3],[4,5,6]]
 Output: 12

## 55. Jump Game
 https://leetcode.com/problems/jump-game/description/

 You are given an integer array nums. You are initially positioned at the array's first index, and each element in the array represents your maximum jump length at that position.

 Return true if you can reach the last index, or false otherwise.

 Example 1:
 Input: nums = [2,3,1,1,4]
 Output: true
 Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.

 Example 2:
 Input: nums = [3,2,1,0,4]
 Output: false
 Explanation: You will always arrive at index 3 no matter what. Its maximum jump length is 0, which makes it impossible to reach the last index.

## 45. Jump Game II, Jump Game 2
 https://leetcode.com/problems/jump-game-ii/description/

 You are given a 0-indexed array of integers nums of length n. You are initially positioned at nums[0].

 Each element nums[i] represents the maximum length of a forward jump from index i. In other words, if you are at nums[i], you can jump to any nums[i + j] where:

 0 <= j <= nums[i] and
 i + j < n
 Return the minimum number of jumps to reach nums[n - 1]. The test cases are generated such that you can reach nums[n - 1].

 Example 1:
 Input: nums = [2,3,1,1,4]
 Output: 2
 Explanation: The minimum number of jumps to reach the last index is 2. Jump 1 step from index 0 to 1, then 3 steps to the last index.

 Example 2:
 Input: nums = [2,3,0,1,4]
 Output: 2

## 1871. Jump Game VII
 https://leetcode.com/problems/jump-game-vii/description/
 // DOESN'T WORK. I THINK I DON'T UNDERSTAND THE PROBLEM MAYBE

 You are given a 0-indexed binary string s and two integers minJump and maxJump. In the beginning, you are standing at index 0, which is equal to '0'. You can move from index i to index j if the following conditions are fulfilled:

 i + minJump <= j <= min(i + maxJump, s.length - 1), and
 s[j] == '0'.
 Return true if you can reach index s.length - 1 in s, or false otherwise.

 Example 1:
 Input: s = "011010", minJump = 2, maxJump = 3
 Output: true
 Explanation:
 In the first step, move from index 0 to index 3.
 In the second step, move from index 3 to index 5.

 Example 2:
 Input: s = "01101110", minJump = 2, maxJump = 3
 Output: false

 ## 10. Regular Expression Matching
 https://leetcode.com/problems/regular-expression-matching/
 // RECURSION WITH MEMOIZATION

 Given an input string s and a pattern p, implement regular expression matching with support for '.' and '*' where:

 '.' Matches any single character.
 '*' Matches zero or more of the preceding element.
 The matching should cover the entire input string (not partial).

 Example 1:
 Input: s = "aa", p = "a"
 Output: false
 Explanation: "a" does not match the entire string "aa".

 Example 2:
 Input: s = "aa", p = "a*"
 Output: true
 Explanation: '*' means zero or more of the preceding element, 'a'. Therefore, by repeating 'a' once, it becomes "aa".

 Example 3:
 Input: s = "ab", p = ".*"
 Output: true
 Explanation: ".*" means "zero or more (*) of any character (.)".

## 44. Wildcard Matching
 https://leetcode.com/problems/wildcard-matching/description/

 Given an input string (s) and a pattern (p), implement wildcard pattern matching with support for '?' and '*' where:

 '?' Matches any single character.
 '*' Matches any sequence of characters (including the empty sequence).
 The matching should cover the entire input string (not partial).

 Example 1:
 Input: s = "aa", p = "a"
 Output: false
 Explanation: "a" does not match the entire string "aa".

 Example 2:
 Input: s = "aa", p = "*"
 Output: true
 Explanation: '*' matches any sequence.

 Example 3:
 Input: s = "cb", p = "?a"
 Output: false
 Explanation: '?' matches 'c', but the second letter is 'a', which does not match 'b'.

## 79. Word Search
 https://leetcode.com/problems/word-search/
 // MY DYNAMIC PROGRAMMING TRY DOESN'T WORK

 Given an m x n grid of characters board and a string word, return true if word exists in the grid.

 The word can be constructed from letters of sequentially adjacent cells, where adjacent cells are horizontally or vertically neighboring. The same letter cell may not be used more than once.

 Example 1:
 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCCED"
 Output: true

 Example 2:
 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "SEE"
 Output: true

 Example 3:
 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCB"
 Output: false

# LeetcodeCollection: Backtracking

 ## 51. N-Queens
 https://leetcode.com/problems/n-queens/description/

 The n-queens puzzle is the problem of placing n queens on an n x n chessboard such that no two queens attack each other.

 Given an integer n, return all distinct solutions to the n-queens puzzle. You may return the answer in any order.

 Each solution contains a distinct board configuration of the n-queens' placement, where 'Q' and '.' both indicate a queen and an empty space, respectively.

 Example 1:
 Input: n = 4
 Output: [[".Q..","...Q","Q...","..Q."],["..Q.","Q...","...Q",".Q.."]]
 Explanation: There exist two distinct solutions to the 4-queens puzzle as shown above

 Example 2:
 Input: n = 1
 Output: [["Q"]]
 
  ## 52. N-Queens II
 https://leetcode.com/problems/n-queens-ii/

 The n-queens puzzle is the problem of placing n queens on an n x n chessboard such that no two queens attack each other.

 Given an integer n, return the number of distinct solutions to the n-queens puzzle.

 Example 1:
 Input: n = 4
 Output: 2
 Explanation: There are two distinct solutions to the 4-queens puzzle as shown.

 Example 2:
 Input: n = 1
 Output: 1

 ## 79. Word Search
 https://leetcode.com/problems/word-search/

 Given an m x n grid of characters board and a string word, return true if word exists in the grid.

 The word can be constructed from letters of sequentially adjacent cells, where adjacent cells are horizontally or vertically neighboring. The same letter cell may not be used more than once.

 Example 1:
 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCCED"
 Output: true

 Example 2:
 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "SEE"
 Output: true

 Example 3:
 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCB"
 Output: false

 ## 212. Word Search II, Word Search 2
 https://leetcode.com/problems/word-search-ii/description/

// Times out

 Given an m x n board of characters and a list of strings words, return all words on the board.

 Each word must be constructed from letters of sequentially adjacent cells, where adjacent cells are horizontally or vertically neighboring. The same letter cell may not be used more than once in a word.

 Example 1:
 Input: board = [["o","a","a","n"],["e","t","a","e"],["i","h","k","r"],["i","f","l","v"]], words = ["oath","pea","eat","rain"]
 Output: ["eat","oath"]

 Example 2:
 Input: board = [["a","b"],["c","d"]], words = ["abcb"]
 Output: []

 ## 46. Permutations
 https://leetcode.com/problems/permutations/description/

 Given an array nums of distinct integers, return all the possible permutations. You can return the answer in any order.

 Example 1:
 Input: nums = [1,2,3]
 Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

 Example 2:
 Input: nums = [0,1]
 Output: [[0,1],[1,0]]

 Example 3:
 Input: nums = [1]
 Output: [[1]]

 ## 80. Remove Duplicates from Sorted Array II
 https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/description/

 Given an integer array nums sorted in non-decreasing order, remove some duplicates in-place such that each unique element appears at most twice. The relative order of the elements should be kept the same.

 Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.

 Return k after placing the final result in the first k slots of nums.

 Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.

 Example 1:
 Input: nums = [1,1,1,2,2,3]
 Output: 5, nums = [1,1,2,2,3,_]
 Explanation: Your function should return k = 5, with the first five elements of nums being 1, 1, 2, 2 and 3 respectively.
 It does not matter what you leave beyond the returned k (hence they are underscores).

 Example 2:
 Input: nums = [0,0,1,1,1,1,2,3,3]
 Output: 7, nums = [0,0,1,1,2,3,3,_,_]
 Explanation: Your function should return k = 7, with the first seven elements of nums being 0, 0, 1, 1, 2, 3 and 3 respectively.
 It does not matter what you leave beyond the returned k (hence they are underscores).

 ## 34. Find First and Last Position of Element in Sorted Array
 https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/description/
// Doesn't work for small arrays

 Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.

 If target is not found in the array, return [-1, -1].

 You must write an algorithm with O(log n) runtime complexity.

 Example 1:
 Input: nums = [5,7,7,8,8,10], target = 8
 Output: [3,4]

 Example 2:
 Input: nums = [5,7,7,8,8,10], target = 6
 Output: [-1,-1]

 Example 3:
 Input: nums = [], target = 0
 Output: [-1,-1]

 ## 17. Letter Combinations of a Phone Number
 https://leetcode.com/problems/letter-combinations-of-a-phone-number/

 Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.

 A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.

 Example 1:
 Input: digits = "23"
 Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]

 Example 2:
 Input: digits = ""
 Output: []

 Example 3:
 Input: digits = "2"
 Output: ["a","b","c"]

 ## 39. Combination Sum
 https://leetcode.com/problems/combination-sum/description/

 Given an array of distinct integers candidates and a target integer target, return a list of all unique combinations of candidates where the chosen numbers sum to target. You may return the combinations in any order.

 The same number may be chosen from candidates an unlimited number of times. Two combinations are unique if the
 frequency
  of at least one of the chosen numbers is different.

 The test cases are generated such that the number of unique combinations that sum up to target is less than 150 combinations for the given input.

 Example 1:
 Input: candidates = [2,3,6,7], target = 7
 Output: [[2,2,3],[7]]
 Explanation:
 2 and 3 are candidates, and 2 + 2 + 3 = 7. Note that 2 can be used multiple times.
 7 is a candidate, and 7 = 7.
 These are the only two combinations.

 Example 2:
 Input: candidates = [2,3,5], target = 8
 Output: [[2,2,2,2],[2,3,3],[3,5]]

 Example 3:
 Input: candidates = [2], target = 1
 Output: []

 ## 22. Generate Parentheses
 https://leetcode.com/problems/generate-parentheses/

 Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.

 Example 1:
 Input: n = 3
 Output: ["((()))","(()())","(())()","()(())","()()()"]

 Example 2:
 Input: n = 1
 Output: ["()"]

 ## 40. Combination Sum II, Combination Sum 2
 https://leetcode.com/problems/combination-sum-ii/

 Given a collection of candidate numbers (candidates) and a target number (target), find all unique combinations in candidates where the candidate numbers sum to target.

 Each number in candidates may only be used once in the combination.

 Note: The solution set must not contain duplicate combinations.

 Example 1:
 Input: candidates = [10,1,2,7,6,1,5], target = 8
 Output:
 [
 [1,1,6],
 [1,2,5],
 [1,7],
 [2,6]
 ]

 Example 2:
 Input: candidates = [2,5,2,1,2], target = 5
 Output:
 [
 [1,2,2],
 [5]
 ]

 ## 90. Subsets II, Subsets 2
 https://leetcode.com/problems/subsets-ii/

 Given an integer array nums that may contain duplicates, return all possible
 subsets
  (the power set).

 The solution set must not contain duplicate subsets. Return the solution in any order.

 Example 1:
 Input: nums = [1,2,2]
 Output: [[],[1],[1,2],[1,2,2],[2],[2,2]]

 Example 2:
 Input: nums = [0]
 Output: [[],[0]]

 ## 77. Combinations
 https://leetcode.com/problems/combinations/

 Given two integers n and k, return all possible combinations of k numbers chosen from the range [1, n].

 You may return the answer in any order.

 Example 1:
 Input: n = 4, k = 2
 Output: [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
 Explanation: There are 4 choose 2 = 6 total combinations.
 Note that combinations are unordered, i.e., [1,2] and [2,1] are considered to be the same combination.

 Example 2:
 Input: n = 1, k = 1
 Output: [[1]]
 Explanation: There is 1 choose 1 = 1 total combination.

 ## 131. Palindrome Partitioning
 https://leetcode.com/problems/palindrome-partitioning/

 Given a string s, partition s such that every
 substring
  of the partition is a
 palindrome
 . Return all possible palindrome partitioning of s.

 Example 1:
 Input: s = "aab"
 Output: [["a","a","b"],["aa","b"]]

 Example 2:
 Input: s = "a"
 Output: [["a"]]

 ## 132. Palindrome Partitioning II
 https://leetcode.com/problems/palindrome-partitioning-ii/

 Given a string s, partition s such that every
 substring
  of the partition is a
 palindrome

 Return the minimum cuts needed for a palindrome partitioning of s.

 Example 1:
 Input: s = "aab"
 Output: 1
 Explanation: The palindrome partitioning ["aa","b"] could be produced using 1 cut.

 Example 2:
 Input: s = "a"
 Output: 0

 Example 3:
 Input: s = "ab"
 Output: 1

 ## 2472. Maximum Number of Non-overlapping Palindrome Substrings
 https://leetcode.com/problems/maximum-number-of-non-overlapping-palindrome-substrings/description/
// Times out on larger strings

 You are given a string s and a positive integer k.

 Select a set of non-overlapping substrings from the string s that satisfy the following conditions:

 The length of each substring is at least k.
 Each substring is a palindrome.
 Return the maximum number of substrings in an optimal selection.

 A substring is a contiguous sequence of characters within a string.

 Example 1:
 Input: s = "abaccdbbd", k = 3
 Output: 2
 Explanation: We can select the substrings underlined in s = "abaccdbbd". Both "aba" and "dbbd" are palindromes and have a length of at least k = 3.
 It can be shown that we cannot find a selection with more than two valid substrings.
 
 Example 2:
 Input: s = "adbcda", k = 2
 Output: 0
 Explanation: There is no palindrome substring of length at least 2 in the string.

 1980. Find Unique Binary String
 https://leetcode.com/problems/find-unique-binary-string/description/

 Given an array of strings nums containing n unique binary strings each of length n, return a binary string of length n that does not appear in nums. If there are multiple answers, you may return any of them.

 Example 1:
 Input: nums = ["01","10"]
 Output: "11"
 Explanation: "11" does not appear in nums. "00" would also be correct.

 Example 2:
 Input: nums = ["00","01"]
 Output: "11"
 Explanation: "11" does not appear in nums. "10" would also be correct.

 Example 3:
 Input: nums = ["111","011","001"]
 Output: "101"
 Explanation: "101" does not appear in nums. "000", "010", "100", and "110" would also be correct.

 ## 1239. Maximum Length of a Concatenated String with Unique Characters
 https://leetcode.com/problems/maximum-length-of-a-concatenated-string-with-unique-characters/

 You are given an array of strings arr. A string s is formed by the concatenation of a subsequence of arr that has unique characters.

 Return the maximum possible length of s.

 A subsequence is an array that can be derived from another array by deleting some or no elements without changing the order of the remaining elements.

 Example 1:
 Input: arr = ["un","iq","ue"]
 Output: 4
 Explanation: All the valid concatenations are:
 - ""
 - "un"
 - "iq"
 - "ue"
 - "uniq" ("un" + "iq")
 - "ique" ("iq" + "ue")
 Maximum length is 4.

 Example 2:
 Input: arr = ["cha","r","act","ers"]
 Output: 6
 Explanation: Possible longest valid concatenations are "chaers" ("cha" + "ers") and "acters" ("act" + "ers").

 Example 3:
 Input: arr = ["abcdefghijklmnopqrstuvwxyz"]
 Output: 26
 Explanation: The only string in arr has all 26 characters.

 ## 93. Restore IP Addresses
 https://leetcode.com/problems/restore-ip-addresses/

 A valid IP address consists of exactly four integers separated by single dots. Each integer is between 0 and 255 (inclusive) and cannot have leading zeros.

 For example, "0.1.2.201" and "192.168.1.1" are valid IP addresses, but "0.011.255.245", "192.168.1.312" and "192.168@1.1" are invalid IP addresses.
 Given a string s containing only digits, return all possible valid IP addresses that can be formed by inserting dots into s. You are not allowed to reorder or remove any digits in s. You may return the valid IP addresses in any order.

 Example 1:
 Input: s = "25525511135"
 Output: ["255.255.11.135","255.255.111.35"]

 Example 2:
 Input: s = "0000"
 Output: ["0.0.0.0"]

 Example 3:
 Input: s = "101023"
 Output: ["1.0.10.23","1.0.102.3","10.1.0.23","10.10.2.3","101.0.2.3"]

 ## 698. Partition to K Equal Sum Subsets
https://leetcode.com/problems/partition-to-k-equal-sum-subsets/

Given an integer array nums and an integer k, return true if it is possible to divide this array into k non-empty subsets whose sums are all equal.

Example 1:
Input: nums = [4,3,2,3,5,2,1], k = 4
Output: true
Explanation: It is possible to divide it into 4 subsets (5), (1, 4), (2,3), (2,3) with equal sums.

Example 2:
Input: nums = [1,2,3,4], k = 3
Output: false

 ## 473. Matchsticks to Square
 https://leetcode.com/problems/matchsticks-to-square/

 You are given an integer array matchsticks where matchsticks[i] is the length of the ith matchstick.
 You want to use all the matchsticks to make one square.
 You should not break any stick, but you can link them up, and each matchstick must be used exactly one time.

 Return true if you can make this square and false otherwise.

 Example: 1
 Input: matchsticks = [1,1,2,2,2]
 Output: true
 Explanation: You can form a square with length 2, one side of the square came two sticks with length 1.

 Example 2:
 Input: matchsticks = [3,3,3,3,4]
 Output: false
 Explanation: You cannot find a way to form a square with all the matchsticks.

 ## 332. Reconstruct Itinerary
 https://leetcode.com/problems/reconstruct-itinerary/

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

 ## 78. Subsets
 https://leetcode.com/problems/subsets/

 Given an integer array nums of unique elements, return all possible
 subsets
  (the power set).

 The solution set must not contain duplicate subsets. Return the solution in any order.

 Example 1:
 Input: nums = [1,2,3]
 Output: [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]

 Example 2:
 Input: nums = [0]
 Output: [[],[0]]

 ## 47. Permutations II
 https://leetcode.com/problems/permutations-ii/description/

 Given a collection of numbers, nums, that might contain duplicates, return all possible unique permutations in any order.

 Example 1:
 Input: nums = [1,1,2]
 Output:
 [[1,1,2],
 [1,2,1],
 [2,1,1]]

 Example 2:
 Input: nums = [1,2,3]
 Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

 ## 50. Pow(x, n)
 https://leetcode.com/problems/powx-n/

 Implement pow(x, n), which calculates x raised to the power n (i.e., xn).

 Example 1:
 Input: x = 2.00000, n = 10
 Output: 1024.00000

 Example 2:
 Input: x = 2.10000, n = 3
 Output: 9.26100

 Example 3:
 Input: x = 2.00000, n = -2
 Output: 0.25000
 Explanation: 2-2 = 1/22 = 1/4 = 0.25

 ## 1780. Check if Number is a Sum of Powers of Three
 https://leetcode.com/problems/check-if-number-is-a-sum-of-powers-of-three/description/

 Given an integer n, return true if it is possible to represent n as the sum of distinct powers of three. Otherwise, return false.

 An integer y is a power of three if there exists an integer x such that y == 3x.

 Example 1:
 Input: n = 12
 Output: true
 Explanation: 12 = 31 + 32

 Example 2:
 Input: n = 91
 Output: true
 Explanation: 91 = 30 + 32 + 34

 Example 3:
 Input: n = 21
 Output: false

 ## 1849. Splitting a String Into Descending Consecutive Values
 https://leetcode.com/problems/splitting-a-string-into-descending-consecutive-values/description/

 You are given a string s that consists of only digits.

 Check if we can split s into two or more non-empty substrings such that the numerical values of the substrings are in descending order and the difference between numerical values of every two adjacent substrings is equal to 1.

 For example, the string s = "0090089" can be split into ["0090", "089"] with numerical values [90,89]. The values are in descending order and adjacent values differ by 1, so this way is valid.
 Another example, the string s = "001" can be split into ["0", "01"], ["00", "1"], or ["0", "0", "1"]. However all the ways are invalid because they have numerical values [0,1], [0,1], and [0,0,1] respectively, all of which are not in descending order.
 Return true if it is possible to split s​​​​​​ as described above, or false otherwise.

 A substring is a contiguous sequence of characters in a string.

 Example 1:
 Input: s = "1234"
 Output: false
 Explanation: There is no valid way to split s.

 Example 2:
 Input: s = "050043"
 Output: true
 Explanation: s can be split into ["05", "004", "3"] with numerical values [5,4,3].
 The values are in descending order with adjacent values differing by 1.

 Example 3:
 Input: s = "9080701"
 Output: false
 Explanation: There is no valid way to split s.

# LeetcodeCollection: Neetcode 150
Algorithms of the Neetcode 150 not covered elsewhere

 ## 36. Valid Sudoku
 https://leetcode.com/problems/valid-sudoku/description/

 Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:

 Each row must contain the digits 1-9 without repetition.
 Each column must contain the digits 1-9 without repetition.
 Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
 Note:

 A Sudoku board (partially filled) could be valid but is not necessarily solvable.
 Only the filled cells need to be validated according to the mentioned rules.

 Example 1:
 Input: board =
 [["5","3",".",".","7",".",".",".","."]
 ,["6",".",".","1","9","5",".",".","."]
 ,[".","9","8",".",".",".",".","6","."]
 ,["8",".",".",".","6",".",".",".","3"]
 ,["4",".",".","8",".","3",".",".","1"]
 ,["7",".",".",".","2",".",".",".","6"]
 ,[".","6",".",".",".",".","2","8","."]
 ,[".",".",".","4","1","9",".",".","5"]
 ,[".",".",".",".","8",".",".","7","9"]]
 Output: true

 Example 2:
 Input: board =
 [["8","3",".",".","7",".",".",".","."]
 ,["6",".",".","1","9","5",".",".","."]
 ,[".","9","8",".",".",".",".","6","."]
 ,["8",".",".",".","6",".",".",".","3"]
 ,["4",".",".","8",".","3",".",".","1"]
 ,["7",".",".",".","2",".",".",".","6"]
 ,[".","6",".",".",".",".","2","8","."]
 ,[".",".",".","4","1","9",".",".","5"]
 ,[".",".",".",".","8",".",".","7","9"]]
 Output: false
 Explanation: Same as Example 1, except with the 5 in the top left corner being modified to 8. Since there are two 8's in the top left 3x3 sub-box, it is invalid.

 ## 42. Trapping Rain Water
 https://leetcode.com/problems/trapping-rain-water/description/

 Given n non-negative integers representing an elevation map where the width of each bar is 1, compute how much water it can trap after raining.

 Example 1:
 Input: height = [0,1,0,2,1,0,1,3,2,1,2,1]
 Output: 6
 Explanation: The above elevation map (black section) is represented by array [0,1,0,2,1,0,1,3,2,1,2,1]. In this case, 6 units of rain water (blue section) are being trapped.

 Example 2:
 Input: height = [4,2,0,3,2,5]
 Output: 9

 ## 567. Permutation in String
 https://leetcode.com/problems/permutation-in-string/description/

 Given two strings s1 and s2, return true if s2 contains a
 permutation
  of s1, or false otherwise.

 In other words, return true if one of s1's permutations is the substring of s2.

 Example 1:
 Input: s1 = "ab", s2 = "eidbaooo"
 Output: true
 Explanation: s2 contains one permutation of s1 ("ba").

 Example 2:
 Input: s1 = "ab", s2 = "eidboaoo"
 Output: false

 ## 239. Sliding Window Maximum
 https://leetcode.com/problems/sliding-window-maximum/description/

 You are given an array of integers nums, there is a sliding window of size k which is moving from the very left of the array to the very right. You can only see the k numbers in the window. Each time the sliding window moves right by one position.

 Return the max sliding window.

 Example 1:
 Input: nums = [1,3,-1,-3,5,3,6,7], k = 3
 Output: [3,3,5,5,6,7]
 Explanation:
 Window position                Max
 ---------------               -----
 [1  3  -1] -3  5  3  6  7       3
  1 [3  -1  -3] 5  3  6  7       3
  1  3 [-1  -3  5] 3  6  7       5
  1  3  -1 [-3  5  3] 6  7       5
  1  3  -1  -3 [5  3  6] 7       6
  1  3  -1  -3  5 [3  6  7]      7

 Example 2:
 Input: nums = [1], k = 1
 Output: [1]

 ## 74. Search a 2D Matrix
 https://leetcode.com/problems/search-a-2d-matrix/description/

 You are given an m x n integer matrix matrix with the following two properties:

 Each row is sorted in non-decreasing order.
 The first integer of each row is greater than the last integer of the previous row.
 Given an integer target, return true if target is in matrix or false otherwise.

 You must write a solution in O(log(m * n)) time complexity.

 Example 1:
 Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
 Output: true

 Example 2:
 Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 13
 Output: false

 ## 875. Koko Eating Bananas
 https://leetcode.com/problems/koko-eating-bananas/description/

 Koko loves to eat bananas. There are n piles of bananas, the ith pile has piles[i] bananas. The guards have gone and will come back in h hours.

 Koko can decide her bananas-per-hour eating speed of k. Each hour, she chooses some pile of bananas and eats k bananas from that pile. If the pile has less than k bananas, she eats all of them instead and will not eat any more bananas during this hour.

 Koko likes to eat slowly but still wants to finish eating all the bananas before the guards return.

 Return the minimum integer k such that she can eat all the bananas within h hours.

 Example 1:
 Input: piles = [3,6,7,11], h = 8
 Output: 4

 Example 2:
 Input: piles = [30,11,23,4,20], h = 5
 Output: 30

 Example 3:
 Input: piles = [30,11,23,4,20], h = 6
 Output: 23

 ## 981. Time Based Key-Value Store
 https://leetcode.com/problems/time-based-key-value-store/description/

 Design a time-based key-value data structure that can store multiple values for the same key at different time stamps and retrieve the key's value at a certain timestamp.

 Implement the TimeMap class:

 TimeMap() Initializes the object of the data structure.
 void set(String key, String value, int timestamp) Stores the key key with the value value at the given time timestamp.
 String get(String key, int timestamp) Returns a value such that set was called previously, with timestamp_prev <= timestamp. If there are multiple such values, it returns the value associated with the largest timestamp_prev. If there are no values, it returns "".


 Example 1:
 Input
 ["TimeMap", "set", "get", "get", "set", "get", "get"]
 [[], ["foo", "bar", 1], ["foo", 1], ["foo", 3], ["foo", "bar2", 4], ["foo", 4], ["foo", 5]]
 Output
 [null, null, "bar", "bar", null, "bar2", "bar2"]

 Explanation
 TimeMap timeMap = new TimeMap();
 timeMap.set("foo", "bar", 1);  // store the key "foo" and value "bar" along with timestamp = 1.
 timeMap.get("foo", 1);         // return "bar"
 timeMap.get("foo", 3);         // return "bar", since there is no value corresponding to foo at timestamp 3 and timestamp 2, then the only value is at timestamp 1 is "bar".
 timeMap.set("foo", "bar2", 4); // store the key "foo" and value "bar2" along with timestamp = 4.
 timeMap.get("foo", 4);         // return "bar2"
 timeMap.get("foo", 5);         // return "bar2"

 NOTE!!: - All the timestamps timestamp of set are strictly increasing.

 ## 4. Median of Two Sorted Arrays
 https://leetcode.com/problems/median-of-two-sorted-arrays/description/

 NOTE: binary search didn't work, but O(m + n) works

 Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

 The overall run time complexity should be O(log (m+n)).

 Example 1:
 Input: nums1 = [1,3], nums2 = [2]
 Output: 2.00000
 Explanation: merged array = [1,2,3] and median is 2.

 Example 2:
 Input: nums1 = [1,2], nums2 = [3,4]
 Output: 2.50000
 Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.

 ## 138. Copy List with Random Pointer
 https://leetcode.com/problems/copy-list-with-random-pointer/description/

 NOTE: Can be solved in two passes or using func cloneGraph with dfs

 A linked list of length n is given such that each node contains an additional random pointer, which could point to any node in the list, or null.

 Construct a deep copy of the list. The deep copy should consist of exactly n brand new nodes, where each new node has its value set to the value of its corresponding original node. Both the next and random pointer of the new nodes should point to new nodes in the copied list such that the pointers in the original list and copied list represent the same list state. None of the pointers in the new list should point to nodes in the original list.

 For example, if there are two nodes X and Y in the original list, where X.random --> Y, then for the corresponding two nodes x and y in the copied list, x.random --> y.

 Return the head of the copied linked list.

 The linked list is represented in the input/output as a list of n nodes. Each node is represented as a pair of [val, random_index] where:

 val: an integer representing Node.val
 random_index: the index of the node (range from 0 to n-1) that the random pointer points to, or null if it does not point to any node.
 Your code will only be given the head of the original linked list.

 Example 1:
 Input: head = [[7,null],[13,0],[11,4],[10,2],[1,0]]
 Output: [[7,null],[13,0],[11,4],[10,2],[1,0]]

 Example 2:
 Input: head = [[1,1],[2,1]]
 Output: [[1,1],[2,1]]

 Example 3:
 Input: head = [[3,null],[3,0],[3,null]]
 Output: [[3,null],[3,0],[3,null]]

 ## 2. Add Two Numbers
 https://leetcode.com/problems/add-two-numbers/description/

 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

 You may assume the two numbers do not contain any leading zero, except the number 0 itself.

 Example 1:
 Input: l1 = [2,4,3], l2 = [5,6,4]
 Output: [7,0,8]
 Explanation: 342 + 465 = 807.

 Example 2:
 Input: l1 = [0], l2 = [0]
 Output: [0]

 Example 3:
 Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
 Output: [8,9,9,9,0,0,0,1]

 ## 146. LRU Cache
 https://leetcode.com/problems/lru-cache/description/

 Design a data structure that follows the constraints of a Least Recently Used (LRU) cache.

 Implement the LRUCache class:

 LRUCache(int capacity) Initialize the LRU cache with positive size capacity.
 int get(int key) Return the value of the key if the key exists, otherwise return -1.
 void put(int key, int value) Update the value of the key if the key exists. Otherwise, add the key-value pair to the cache. If the number of keys exceeds the capacity from this operation, evict the least recently used key.
 The functions get and put must each run in O(1) average time complexity.

 Example 1:
 Input
 ["LRUCache", "put", "put", "get", "put", "get", "put", "get", "get", "get"]
 [[2], [1, 1], [2, 2], [1], [3, 3], [2], [4, 4], [1], [3], [4]]
 Output
 [null, null, null, 1, null, -1, null, -1, 3, 4]

 Explanation
 LRUCache lRUCache = new LRUCache(2);
 lRUCache.put(1, 1); // cache is {1=1}
 lRUCache.put(2, 2); // cache is {1=1, 2=2}
 lRUCache.get(1);    // return 1
 lRUCache.put(3, 3); // LRU key was 2, evicts key 2, cache is {1=1, 3=3}
 lRUCache.get(2);    // returns -1 (not found)
 lRUCache.put(4, 4); // LRU key was 1, evicts key 1, cache is {4=4, 3=3}
 lRUCache.get(1);    // return -1 (not found)
 lRUCache.get(3);    // return 3
 lRUCache.get(4);    // return 4

 ## 25. Reverse Nodes in k-Group
 https://leetcode.com/problems/reverse-nodes-in-k-group/description/

 Given the head of a linked list, reverse the nodes of the list k at a time, and return the modified list.

 k is a positive integer and is less than or equal to the length of the linked list. If the number of nodes is not a multiple of k then left-out nodes, in the end, should remain as it is.

 You may not alter the values in the list's nodes, only nodes themselves may be changed.

 Example 1:
 Input: head = [1,2,3,4,5], k = 2
 Output: [2,1,4,3,5]

 Example 2:
 Input: head = [1,2,3,4,5], k = 3
 Output: [3,2,1,4,5]

 ## 543. Diameter of Binary Tree
 https://leetcode.com/problems/diameter-of-binary-tree/description/

 Given the root of a binary tree, return the length of the diameter of the tree.

 The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.

 The length of a path between two nodes is represented by the number of edges between them.

 Example 1:
 Input: root = [1,2,3,4,5]
 Output: 3
 Explanation: 3 is the length of the path [4,2,1,3] or [5,2,1,3].

 Example 2:
 Input: root = [1,2]
 Output: 1

 ## 110. Balanced Binary Tree
 https://leetcode.com/problems/balanced-binary-tree/description/

 Given a binary tree, determine if it is height-balanced.

 Example 1:
 Input: root = [3,9,20,null,null,15,7]
 Output: true

 Example 2:
 Input: root = [1,2,2,3,3,null,null,4,4]
 Output: false

 Example 3:
 Input: root = []
 Output: true

 ## 199. Binary Tree Right Side View
 Given the root of a binary tree, imagine yourself standing on the right side of it, return the values of the nodes you can see ordered from top to bottom.

 Example 1:
 Input: root = [1,2,3,null,5,null,4]
 Output: [1,3,4]
 Explanation:

 Example 2:
 Input: root = [1,2,3,4,null,null,null,5]
 Output: [1,3,4,5]
 Explanation:

 Example 3:
 Input: root = [1,null,3]
 Output: [1,3]

 Example 4:
 Input: root = []
 Output: []

 ## 1448. Count Good Nodes in Binary Tree
 https://leetcode.com/problems/count-good-nodes-in-binary-tree/description/

 Given a binary tree root, a node X in the tree is named good if in the path from root to X there are no nodes with a value greater than X.

 Return the number of good nodes in the binary tree.

 Example 1:
 Input: root = [3,1,4,3,null,1,5]
 Output: 4
 Explanation: Nodes in blue are good.
 Root Node (3) is always a good node.
 Node 4 -> (3,4) is the maximum value in the path starting from the root.
 Node 5 -> (3,4,5) is the maximum value in the path
 Node 3 -> (3,1,3) is the maximum value in the path.

 Example 2:
 Input: root = [3,3,null,4,2]
 Output: 3
 Explanation: Node 2 -> (3, 3, 2) is not good, because "3" is higher than it.

 Example 3:
 Input: root = [1]
 Output: 1
 Explanation: Root is considered as good.

 ## 703. Kth Largest Element in a Stream
 https://leetcode.com/problems/kth-largest-element-in-a-stream/description/

 You are part of a university admissions office and need to keep track of the kth highest test score from applicants in real-time. This helps to determine cut-off marks for interviews and admissions dynamically as new applicants submit their scores.

 You are tasked to implement a class which, for a given integer k, maintains a stream of test scores and continuously returns the kth highest test score after a new score has been submitted. More specifically, we are looking for the kth highest score in the sorted list of all scores.

 Implement the KthLargest class:

 KthLargest(int k, int[] nums) Initializes the object with the integer k and the stream of test scores nums.
 int add(int val) Adds a new test score val to the stream and returns the element representing the kth largest element in the pool of test scores so far.

 Example 1:
 Input:
 ["KthLargest", "add", "add", "add", "add", "add"]
 [[3, [4, 5, 8, 2]], [3], [5], [10], [9], [4]]

 Output: [null, 4, 5, 5, 8, 8]

 Explanation:
 KthLargest kthLargest = new KthLargest(3, [4, 5, 8, 2]);
 kthLargest.add(3); // return 4
 kthLargest.add(5); // return 5
 kthLargest.add(10); // return 5
 kthLargest.add(9); // return 8
 kthLargest.add(4); // return 8

 Example 2:
 Input:
 ["KthLargest", "add", "add", "add", "add"]
 [[4, [7, 7, 7, 7, 8, 3]], [2], [10], [9], [9]]

 Output: [null, 7, 7, 7, 8]

 Explanation:

 KthLargest kthLargest = new KthLargest(4, [7, 7, 7, 7, 8, 3]);
 kthLargest.add(2); // return 7
 kthLargest.add(10); // return 7
 kthLargest.add(9); // return 7
 kthLargest.add(9); // return 8

 ## 1046. Last Stone Weight
 https://leetcode.com/problems/last-stone-weight/description/

 You are given an array of integers stones where stones[i] is the weight of the ith stone.

 We are playing a game with the stones. On each turn, we choose the heaviest two stones and smash them together. Suppose the heaviest two stones have weights x and y with x <= y. The result of this smash is:

 If x == y, both stones are destroyed, and
 If x != y, the stone of weight x is destroyed, and the stone of weight y has new weight y - x.
 At the end of the game, there is at most one stone left.

 Return the weight of the last remaining stone. If there are no stones left, return 0.

 Example 1:
 Input: stones = [2,7,4,1,8,1]
 Output: 1
 Explanation:
 We combine 7 and 8 to get 1 so the array converts to [2,4,1,1,1] then,
 we combine 2 and 4 to get 2 so the array converts to [2,1,1,1] then,
 we combine 2 and 1 to get 1 so the array converts to [1,1,1] then,
 we combine 1 and 1 to get 0 so the array converts to [1] then that's the value of the last stone.

 Example 2:
 Input: stones = [1]
 Output: 1

 ## 973. K Closest Points to Origin
 https://leetcode.com/problems/k-closest-points-to-origin/description/

 Given an array of points where points[i] = [xi, yi] represents a point on the X-Y plane and an integer k, return the k closest points to the origin (0, 0).

 The distance between two points on the X-Y plane is the Euclidean distance (i.e., √(x1 - x2)2 + (y1 - y2)2).

 You may return the answer in any order. The answer is guaranteed to be unique (except for the order that it is in).

 Example 1:
 Input: points = [[1,3],[-2,2]], k = 1
 Output: [[-2,2]]
 Explanation:
 The distance between (1, 3) and the origin is sqrt(10).
 The distance between (-2, 2) and the origin is sqrt(8).
 Since sqrt(8) < sqrt(10), (-2, 2) is closer to the origin.
 We only want the closest k = 1 points from the origin, so the answer is just [[-2,2]].

 Example 2:
 Input: points = [[3,3],[5,-1],[-2,4]], k = 2
 Output: [[3,3],[-2,4]]
 Explanation: The answer [[-2,4],[3,3]] would also be accepted.

 ## 621. Task Scheduler
 https://leetcode.com/problems/task-scheduler/description/

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

 ## 355. Design Twitter
 https://leetcode.com/problems/design-twitter/description/

 Design a simplified version of Twitter where users can post tweets, follow/unfollow another user, and is able to see the 10 most recent tweets in the user's news feed.

 Implement the Twitter class:

 Twitter() Initializes your twitter object.
 void postTweet(int userId, int tweetId) Composes a new tweet with ID tweetId by the user userId. Each call to this function will be made with a unique tweetId.
 List<Integer> getNewsFeed(int userId) Retrieves the 10 most recent tweet IDs in the user's news feed. Each item in the news feed must be posted by users who the user followed or by the user themself. Tweets must be ordered from most recent to least recent.
 void follow(int followerId, int followeeId) The user with ID followerId started following the user with ID followeeId.
 void unfollow(int followerId, int followeeId) The user with ID followerId started unfollowing the user with ID followeeId.

 Example 1:
 Input
 ["Twitter", "postTweet", "getNewsFeed", "follow", "postTweet", "getNewsFeed", "unfollow", "getNewsFeed"]
 [[], [1, 5], [1], [1, 2], [2, 6], [1], [1, 2], [1]]
 Output
 [null, null, [5], null, null, [6, 5], null, [5]]

 Explanation
 Twitter twitter = new Twitter();
 twitter.postTweet(1, 5); // User 1 posts a new tweet (id = 5).
 twitter.getNewsFeed(1);  // User 1's news feed should return a list with 1 tweet id -> [5]. return [5]
 twitter.follow(1, 2);    // User 1 follows user 2.
 twitter.postTweet(2, 6); // User 2 posts a new tweet (id = 6).
 twitter.getNewsFeed(1);  // User 1's news feed should return a list with 2 tweet ids -> [6, 5]. Tweet id 6 should precede tweet id 5 because it is posted after tweet id 5.
 twitter.unfollow(1, 2);  // User 1 unfollows user 2.
 twitter.getNewsFeed(1);  // User 1's news feed should return a list with 1 tweet id -> [5], since user 1 is no longer following user 2.

 ## 286. Walls and Gates or lintCode 663. Walls and Gates
 Leetcode requires subscription for this
 https://www.lintcode.com/problem/663/

 You are given a m x n 2D grid initialized with these three possible values.
 -1 = A wall or an obstacle.
 0 = A gate.
 INF = Infinity means an empty room. We use the value 2^31 - 1 = 2147483647 to represent INF as you may assume that the distance to a gate is less than 2147483647.
 Fill each empty room with the distance to its nearest gate. If it is impossible to reach a Gate, that room should remain filled with INF

 Example1:
 Input:
 [
 [2147483647,-1,0,2147483647],
 [2147483647,2147483647,2147483647,-1],
 [2147483647,-1,2147483647,-1],
 [0,-1,2147483647,2147483647]
 ]
 Output:
 [
 [3,-1,0,1],
 [2,2,1,-1],
 [1,-1,2,-1],
 [0,-1,3,4]
 ]

 Explanation:
 the 2D grid is:

 INF -1 0 INF
 INF INF INF -1
 INF -1 INF -1
 0 -1 INF INF

 the answer is:
 3 -1 0 1
 2 2 1 -1
 1 -1 2 -1
 0 -1 3 4

 Example2
 Input:
 [
 [0,-1],
 [2147483647,2147483647]
 ]
 Output:
 [
 [0,-1],
 [1,2]
 ]

 ## 178. Graph Valid Tree
 Leetcode requires subscription for it so the link is to Neetcode page
 https://neetcode.io/problems/valid-tree

 Given n nodes labeled from 0 to n - 1 and a list of undirected edges (each edge is a pair of nodes), write a function to check whether these edges make up a valid tree.

 Example 1:
 Input:
 n = 5
 edges = [[0, 1], [0, 2], [0, 3], [1, 4]]
 Output:
 true

 Example 2:
 Input:
 n = 5
 edges = [[0, 1], [1, 2], [2, 3], [1, 3], [1, 4]]
 Output:
 false

 Note:
 You can assume that no duplicate edges will appear in edges. Since all edges are undirected, [0, 1] is the same as [1, 0] and thus will not appear together in edges.

 ## 323. Number of Connected Components in an Undirected Graph
 Leetcode requires subscription for this so link is to NeetCode
 https://neetcode.io/problems/count-connected-components

 There is an undirected graph with n nodes. There is also an edges array, where edges[i] = [a, b] means that there is an edge between node a and node b in the graph.

 The nodes are numbered from 0 to n - 1.

 Return the total number of connected components in that graph.

 Example 1:
 Input:
 n=3
 edges=[[0,1], [0,2]]
 Output: 1

 Example 2:
 Input:
 n=6
 edges=[[0,1], [1,2], [2,3], [4,5]]
 Output: 2

 ## 684. Redundant Connection
 https://leetcode.com/problems/redundant-connection/description/

 In this problem, a tree is an undirected graph that is connected and has no cycles.

 You are given a graph that started as a tree with n nodes labeled from 1 to n, with one additional edge added. The added edge has two different vertices chosen from 1 to n, and was not an edge that already existed. The graph is represented as an array edges of length n where edges[i] = [ai, bi] indicates that there is an edge between nodes ai and bi in the graph.

 Return an edge that can be removed so that the resulting graph is a tree of n nodes. If there are multiple answers, return the answer that occurs last in the input.

 Example 1:
 Input: edges = [[1,2],[1,3],[2,3]]
 Output: [2,3]

 Example 2:
 Input: edges = [[1,2],[2,3],[3,4],[1,4],[1,5]]
 Output: [1,4]

 ## 743. Network Delay Time
 https://leetcode.com/problems/network-delay-time/description/
 NOTE: Doesn't use neetcode Dijkstra's Algorithm,
    Uses Bellman-Ford Algorithm

 You are given a network of n nodes, labeled from 1 to n. You are also given times, a list of travel times as directed edges times[i] = (ui, vi, wi), where ui is the source node, vi is the target node, and wi is the time it takes for a signal to travel from source to target.

 We will send a signal from a given node k. Return the minimum time it takes for all the n nodes to receive the signal. If it is impossible for all the n nodes to receive the signal, return -1.

 Example 1:
 Input: times = [[2,1,1],[2,3,1],[3,4,1]], n = 4, k = 2
 Output: 2

 Example 2:
 Input: times = [[1,2,1]], n = 2, k = 1
 Output: 1

 Example 3:
 Input: times = [[1,2,1]], n = 2, k = 2
 Output: -1

 ## 1584. Min Cost to Connect All Points
 https://leetcode.com/problems/min-cost-to-connect-all-points/description/
 NOTE: Uses a modified Prim's algorithm
 MST = Minimum Spanning Tree

 You are given an array points representing integer coordinates of some points on a 2D-plane, where points[i] = [xi, yi].

 The cost of connecting two points [xi, yi] and [xj, yj] is the manhattan distance between them: |xi - xj| + |yi - yj|, where |val| denotes the absolute value of val.

 Return the minimum cost to make all points connected. All points are connected if there is exactly one simple path between any two points.

 Example 1:
 Input: points = [[0,0],[2,2],[3,10],[5,2],[7,0]]
 Output: 20
 Explanation:
 We can connect the points as shown above to get the minimum cost of 20.
 Notice that there is a unique path between every pair of points.

 Example 2:
 Input: points = [[3,12],[-2,5],[-4,1]]
 Output: 18

 ## 778. Swim in Rising Water
 https://leetcode.com/problems/swim-in-rising-water/description/

 You are given an n x n integer matrix grid where each value grid[i][j] represents the elevation at that point (i, j).

 The rain starts to fall. At time t, the depth of the water everywhere is t. You can swim from a square to another 4-directionally adjacent square if and only if the elevation of both squares individually are at most t. You can swim infinite distances in zero time. Of course, you must stay within the boundaries of the grid during your swim.

 Return the least time until you can reach the bottom right square (n - 1, n - 1) if you start at the top left square (0, 0).

 Example 1:
 Input: grid = [[0,2],[1,3]]
 Output: 3
 Explanation:
 At time 0, you are in grid location (0, 0).
 You cannot go anywhere else because 4-directionally adjacent neighbors have a higher elevation than t = 0.
 You cannot reach point (1, 1) until time 3.
 When the depth of water is 3, we can swim anywhere inside the grid.

 Example 2:
 Input: grid = [[0,1,2,3,4],[24,23,22,21,5],[12,13,14,15,16],[11,17,18,19,20],[10,9,8,7,6]]
 Output: 16
 Explanation: The final route is shown.
 We need to wait until time 16 so that (0, 0) and (4, 4) are connected.

 ## 269. Alien Dictionary
 https://neetcode.io/problems/foreign-dictionary
 NOTE: Leetcode requires subscription so this links to Neetcode website
 Topological Sort

 There is a foreign language which uses the latin alphabet, but the order among letters is not "a", "b", "c" ... "z" as in English.

 You receive a list of non-empty strings words from the dictionary, where the words are sorted lexicographically based on the rules of this new language.

 Derive the order of letters in this language. If the order is invalid, return an empty string. If there are multiple valid order of letters, return any of them.

 A string a is lexicographically smaller than a string b if either of the following is true:

 The first letter where they differ is smaller in a than in b.
 There is no index i such that a[i] != b[i] and a.length < b.length.

 Example 1:
 Input: ["z","o"]
 Output: "zo"
 Explanation:
 From "z" and "o", we know 'z' < 'o', so return "zo".

 Example 2:
 Input: ["hrn","hrf","er","enn","rfnn"]
 Output: "hernf"
 Explanation:
 from "hrn" and "hrf", we know 'n' < 'f'
 from "hrf" and "er", we know 'h' < 'e'
 from "er" and "enn", we know get 'r' < 'n'
 from "enn" and "rfnn" we know 'e'<'r'
 so one possibile solution is "hernf"

 ## 787. Cheapest Flights Within K Stops
 https://leetcode.com/problems/cheapest-flights-within-k-stops/description/

 There are n cities connected by some number of flights. You are given an array flights where flights[i] = [fromi, toi, pricei] indicates that there is a flight from city fromi to city toi with cost pricei.

 You are also given three integers src, dst, and k, return the cheapest price from src to dst with at most k stops. If there is no such route, return -1.

 Example 1:
 Input: n = 4, flights = [[0,1,100],[1,2,100],[2,0,100],[1,3,600],[2,3,200]], src = 0, dst = 3, k = 1
 Output: 700
 Explanation:
 The graph is shown above.
 The optimal path with at most 1 stop from city 0 to 3 is marked in red and has cost 100 + 600 = 700.
 Note that the path through cities [0,1,2,3] is cheaper but is invalid because it uses 2 stops.

 Example 2:
 Input: n = 3, flights = [[0,1,100],[1,2,100],[0,2,500]], src = 0, dst = 2, k = 1
 Output: 200
 Explanation:
 The graph is shown above.
 The optimal path with at most 1 stop from city 0 to 2 is marked in red and has cost 100 + 100 = 200.

 Example 3:
 Input: n = 3, flights = [[0,1,100],[1,2,100],[0,2,500]], src = 0, dst = 2, k = 0
 Output: 500
 Explanation:
 The graph is shown above.
 The optimal path with no stops from city 0 to 2 is marked in red and has cost 500.

 ## 115. Distinct Subsequences
 https://leetcode.com/problems/distinct-subsequences/description/

 Given two strings s and t, return the number of distinct subsequences of s which equals t.

 The test cases are generated so that the answer fits on a 32-bit signed integer.

 Example 1:
 Input: s = "rabbbit", t = "rabbit"
 Output: 3
 Explanation:
 As shown below, there are 3 ways you can generate "rabbit" from s.
 rabbbit
 rabbbit
 rabbbit

 Example 2:
 Input: s = "babgbag", t = "bag"
 Output: 5
 Explanation:
 As shown below, there are 5 ways you can generate "bag" from s.
 babgbag
 babgbag
 babgbag
 babgbag
 babgbag

 ## 329. Longest Increasing Path in a Matrix
 https://leetcode.com/problems/longest-increasing-path-in-a-matrix/description/

 Given an m x n integers matrix, return the length of the longest increasing path in matrix.

 From each cell, you can either move in four directions: left, right, up, or down. You may not move diagonally or move outside the boundary (i.e., wrap-around is not allowed).

 Example 1:
 Input: matrix = [[9,9,4],[6,6,8],[2,1,1]]
 Output: 4
 Explanation: The longest increasing path is [1, 2, 6, 9].

 Example 2:
 Input: matrix = [[3,4,5],[3,2,6],[2,2,1]]
 Output: 4
 Explanation: The longest increasing path is [3, 4, 5, 6]. Moving diagonally is not allowed.

 Example 3:
 Input: matrix = [[1]]
 Output: 1

 ## 72. Edit Distance
 https://leetcode.com/problems/edit-distance/description/

 Given two strings word1 and word2, return the minimum number of operations required to convert word1 to word2.

 You have the following three operations permitted on a word:

 Insert a character
 Delete a character
 Replace a character

 Example 1:
 Input: word1 = "horse", word2 = "ros"
 Output: 3
 Explanation:
 horse -> rorse (replace 'h' with 'r')
 rorse -> rose (remove 'r')
 rose -> ros (remove 'e')

 Example 2:
 Input: word1 = "intention", word2 = "execution"
 Output: 5
 Explanation:
 intention -> inention (remove 't')
 inention -> enention (replace 'i' with 'e')
 enention -> exention (replace 'n' with 'x')
 exention -> exection (replace 'n' with 'c')
 exection -> execution (insert 'u')

 ## 134. Gas Station
 https://leetcode.com/problems/gas-station/description/

 There are n gas stations along a circular route, where the amount of gas at the ith station is gas[i].

 You have a car with an unlimited gas tank and it costs cost[i] of gas to travel from the ith station to its next (i + 1)th station. You begin the journey with an empty tank at one of the gas stations.

 Given two integer arrays gas and cost, return the starting gas station's index if you can travel around the circuit once in the clockwise direction, otherwise return -1. If there exists a solution, it is guaranteed to be unique.

 Example 1:
 Input: gas = [1,2,3,4,5], cost = [3,4,5,1,2]
 Output: 3
 Explanation:
 Start at station 3 (index 3) and fill up with 4 unit of gas. Your tank = 0 + 4 = 4
 Travel to station 4. Your tank = 4 - 1 + 5 = 8
 Travel to station 0. Your tank = 8 - 2 + 1 = 7
 Travel to station 1. Your tank = 7 - 3 + 2 = 6
 Travel to station 2. Your tank = 6 - 4 + 3 = 5
 Travel to station 3. The cost is 5. Your gas is just enough to travel back to station 3.
 Therefore, return 3 as the starting index.

 Example 2:
 Input: gas = [2,3,4], cost = [3,4,3]
 Output: -1
 Explanation:
 You can't start at station 0 or 1, as there is not enough gas to travel to the next station.
 Let's start at station 2 and fill up with 4 unit of gas. Your tank = 0 + 4 = 4
 Travel to station 0. Your tank = 4 - 3 + 2 = 3
 Travel to station 1. Your tank = 3 - 3 + 3 = 3
 You cannot travel back to station 2, as it requires 4 unit of gas but you only have 3.
 Therefore, you can't travel around the circuit once no matter where you start.

 ## 846. Hand of Straights
 https://leetcode.com/problems/hand-of-straights/description/

 Alice has some number of cards and she wants to rearrange the cards into groups so that each group is of size groupSize, and consists of groupSize consecutive cards.

 Given an integer array hand where hand[i] is the value written on the ith card and an integer groupSize, return true if she can rearrange the cards, or false otherwise.

 Example 1:
 Input: hand = [1,2,3,6,2,3,4,7,8], groupSize = 3
 Output: true
 Explanation: Alice's hand can be rearranged as [1,2,3],[2,3,4],[6,7,8]

 Example 2:
 Input: hand = [1,2,3,4,5], groupSize = 4
 Output: false
 Explanation: Alice's hand can not be rearranged into groups of 4.

 ## 1899. Merge Triplets to Form Target Triplet
 https://leetcode.com/problems/merge-triplets-to-form-target-triplet/description/

 A triplet is an array of three integers. You are given a 2D integer array triplets, where triplets[i] = [ai, bi, ci] describes the ith triplet. You are also given an integer array target = [x, y, z] that describes the triplet you want to obtain.

 To obtain target, you may apply the following operation on triplets any number of times (possibly zero):

 Choose two indices (0-indexed) i and j (i != j) and update triplets[j] to become [max(ai, aj), max(bi, bj), max(ci, cj)].
 For example, if triplets[i] = [2, 5, 3] and triplets[j] = [1, 7, 5], triplets[j] will be updated to [max(2, 1), max(5, 7), max(3, 5)] = [2, 7, 5].
 Return true if it is possible to obtain the target triplet [x, y, z] as an element of triplets, or false otherwise.

 Example 1:
 Input: triplets = [[2,5,3],[1,8,4],[1,7,5]], target = [2,7,5]
 Output: true
 Explanation: Perform the following operations:
 - Choose the first and last triplets [[2,5,3],[1,8,4],[1,7,5]]. Update the last triplet to be [max(2,1), max(5,7), max(3,5)] = [2,7,5]. triplets = [[2,5,3],[1,8,4],[2,7,5]]
 The target triplet [2,7,5] is now an element of triplets.

 Example 2:
 Input: triplets = [[3,4,5],[4,5,6]], target = [3,2,5]
 Output: false
 Explanation: It is impossible to have [3,2,5] as an element because there is no 2 in any of the triplets.

 Example 3:
 Input: triplets = [[2,5,3],[2,3,4],[1,2,5],[5,2,3]], target = [5,5,5]
 Output: true
 Explanation: Perform the following operations:
 - Choose the first and third triplets [[2,5,3],[2,3,4],[1,2,5],[5,2,3]]. Update the third triplet to be [max(2,1), max(5,2), max(3,5)] = [2,5,5]. triplets = [[2,5,3],[2,3,4],[2,5,5],[5,2,3]].
 - Choose the third and fourth triplets [[2,5,3],[2,3,4],[2,5,5],[5,2,3]]. Update the fourth triplet to be [max(2,5), max(5,2), max(5,3)] = [5,5,5]. triplets = [[2,5,3],[2,3,4],[2,5,5],[5,5,5]].
 The target triplet [5,5,5] is now an element of triplets.

 ## 763. Partition Labels
 https://leetcode.com/problems/partition-labels/description/

 You are given a string s. We want to partition the string into as many parts as possible so that each letter appears in at most one part. For example, the string "ababcc" can be partitioned into ["abab", "cc"], but partitions such as ["aba", "bcc"] or ["ab", "ab", "cc"] are invalid.

 Note that the partition is done so that after concatenating all the parts in order, the resultant string should be s.

 Return a list of integers representing the size of these parts.

 Example 1:
 Input: s = "ababcbacadefegdehijhklij"
 Output: [9,7,8]
 Explanation:
 The partition is "ababcbaca", "defegde", "hijhklij".
 This is a partition so that each letter appears in at most one part.
 A partition like "ababcbacadefegde", "hijhklij" is incorrect, because it splits s into less parts.

 Example 2:
 Input: s = "eccbbbbdec"
 Output: [10]

 ## 678. Valid Parenthesis String
 https://leetcode.com/problems/valid-parenthesis-string/description/

 Given a string s containing only three types of characters: '(', ')' and '*', return true if s is valid.

 The following rules define a valid string:

 Any left parenthesis '(' must have a corresponding right parenthesis ')'.
 Any right parenthesis ')' must have a corresponding left parenthesis '('.
 Left parenthesis '(' must go before the corresponding right parenthesis ')'.
 '*' could be treated as a single right parenthesis ')' or a single left parenthesis '(' or an empty string "".

 Example 1:
 Input: s = "()"
 Output: true

 Example 2:
 Input: s = "(*)"
 Output: true

 Example 3:
 Input: s = "(*))"
 Output: true

 ## 1851. Minimum Interval to Include Each Query
 https://leetcode.com/problems/minimum-interval-to-include-each-query/description/

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

 ## 66. Plus One
 https://leetcode.com/problems/plus-one/description/

 You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.

 Increment the large integer by one and return the resulting array of digits.

 Example 1:
 Input: digits = [1,2,3]
 Output: [1,2,4]
 Explanation: The array represents the integer 123.
 Incrementing by one gives 123 + 1 = 124.
 Thus, the result should be [1,2,4].

 Example 2:
 Input: digits = [4,3,2,1]
 Output: [4,3,2,2]
 Explanation: The array represents the integer 4321.
 Incrementing by one gives 4321 + 1 = 4322.
 Thus, the result should be [4,3,2,2].

 Example 3:
 Input: digits = [9]
 Output: [1,0]
 Explanation: The array represents the integer 9.
 Incrementing by one gives 9 + 1 = 10.
 Thus, the result should be [1,0].

 ## 43. Multiply Strings
 https://leetcode.com/problems/multiply-strings/description/

 Given two non-negative integers num1 and num2 represented as strings, return the product of num1 and num2, also represented as a string.

 Note: You must not use any built-in BigInteger library or convert the inputs to integer directly.

 Example 1:
 Input: num1 = "2", num2 = "3"
 Output: "6"

 Example 2:
 Input: num1 = "123", num2 = "456"
 Output: "56088"

 ## 2013. Detect Squares
 https://leetcode.com/problems/detect-squares/description/

 You are given a stream of points on the X-Y plane. Design an algorithm that:

 Adds new points from the stream into a data structure. Duplicate points are allowed and should be treated as different points.
 Given a query point, counts the number of ways to choose three points from the data structure such that the three points and the query point form an axis-aligned square with positive area.
 An axis-aligned square is a square whose edges are all the same length and are either parallel or perpendicular to the x-axis and y-axis.

 Implement the DetectSquares class:

 DetectSquares() Initializes the object with an empty data structure.
 void add(int[] point) Adds a new point point = [x, y] to the data structure.
 int count(int[] point) Counts the number of ways to form axis-aligned squares with point point = [x, y] as described above.

 Example 1:
 Input
 ["DetectSquares", "add", "add", "add", "count", "count", "add", "count"]
 [[], [[3, 10]], [[11, 2]], [[3, 2]], [[11, 10]], [[14, 8]], [[11, 2]], [[11, 10]]]
 Output
 [null, null, null, null, 1, 0, null, 2]

 Explanation
 DetectSquares detectSquares = new DetectSquares();
 detectSquares.add([3, 10]);
 detectSquares.add([11, 2]);
 detectSquares.add([3, 2]);
 detectSquares.count([11, 10]); // return 1. You can choose:
                                //   - The first, second, and third points
 detectSquares.count([14, 8]);  // return 0. The query point cannot form a square with any points in the data structure.
 detectSquares.add([11, 2]);    // Adding duplicate points is allowed.
 detectSquares.count([11, 10]); // return 2. You can choose:
                                //   - The first, second, and third points
                                //   - The first, third, and fourth points

 ## 7. Reverse Integer
 https://leetcode.com/problems/reverse-integer/description/

 Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

 Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

 Example 1:
 Input: x = 123
 Output: 321

 Example 2:
 Input: x = -123
 Output: -321

 Example 3:
 Input: x = 120
 Output: 21

# Leetcode 150

 ## 274. H-Index
 https://leetcode.com/problems/h-index/description/

 Given an array of integers citations where citations[i] is the number of citations a researcher received for their ith paper, return the researcher's h-index.

 According to the definition of h-index on Wikipedia: The h-index is defined as the maximum value of h such that the given researcher has published at least h papers that have each been cited at least h times.

 Example 1:
 Input: citations = [3,0,6,1,5]
 Output: 3
 Explanation: [3,0,6,1,5] means the researcher has 5 papers in total and each of them had received 3, 0, 6, 1, 5 citations respectively.
 Since the researcher has 3 papers with at least 3 citations each and the remaining two with no more than 3 citations each, their h-index is 3.

 Example 2:
 Input: citations = [1,3,1]
 Output: 1
