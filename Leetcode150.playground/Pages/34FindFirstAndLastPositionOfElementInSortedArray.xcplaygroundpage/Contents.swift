import Foundation

/*
 ## 34. Find First and Last Position of Element in Sorted Array
 https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/description/?envType=study-plan-v2&envId=top-interview-150

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
 */

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    func binarySearch(_ leftBias: Bool) -> Int {
        var l = 0
        var r = nums.count - 1
        var i = -1
        while l <= r {
            let m = ((r-l)/2)+l
            if target > nums[m] {
                l = m + 1
            } else if target < nums[m] {
                r = m - 1
            } else {
                i = m
                if leftBias {
                    r = m - 1
                } else {
                    l = m + 1
                }
            }
        }
        return i
    }
    let left = binarySearch(true)
    let right = binarySearch(false)
    return [left, right]
}

let result = searchRange([5,7,7,8,8,10], 8) // [3, 4]
print(result)

let result1 = searchRange([5,7,7,8,8,10], 6) // [-1,-1]
print(result1)

let result2 = searchRange([], 0) // [-1,-1]
print(result2)
