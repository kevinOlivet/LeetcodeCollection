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
