import Foundation

/*
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
 */

func binarySearch(_ nums: [Int], _ target: Int) -> Int {
    var l = 0
    var r = nums.count - 1
    while l <= r {
        let m = ((r - l) / 2) + l
        if nums[m] < target {
            l = m + 1
        } else if nums[m] > target {
            r = m - 1
        } else {
            return m
        }
    }
    return -1
}

let result = binarySearch([-1,0,3,5,9,12], 9) // 4
print(result)

let result1 = binarySearch( [-1,0,3,5,9,12], 2) // -1
print(result1)
