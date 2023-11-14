import Foundation

/*
 34. Find First and Last Position of Element in Sorted Array
 https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/description/

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

// doesn't work for small arrays
func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    var low = 0
    var high = nums.count - 1

    var foundIndex = -1

    while low < high {
        let middle = (high + low)/2
        let current = nums[middle]
        if target == current {
            foundIndex = middle
            break
        } else if target > nums[middle] {
            low = middle + 1
        } else {
            high = middle - 1
        }
    }

    var foundLow = foundIndex
    var foundHigh = foundIndex
    if foundIndex != -1 {

        while nums[foundLow] == target {
            foundLow -= 1
        }
        foundLow += 1
        while nums[foundHigh] == target {
            foundHigh += 1
        }
        foundHigh -= 1
    }
    return [foundLow, foundHigh]
}

searchRange([5,7,7,8,8,10], 8)
//searchRange([1,1,1], 1)
