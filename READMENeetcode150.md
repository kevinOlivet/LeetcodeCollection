# LeetcodeCollection: Neetcode 150
Algorithms not covered elsewhere

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
 NOTE: binary search didn't work, but O(m + n) works
 https://leetcode.com/problems/median-of-two-sorted-arrays/description/

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
