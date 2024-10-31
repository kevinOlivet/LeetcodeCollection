import Foundation

/*
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
 */

func search(_ nums: [Int], _ target: Int) -> Int {
    var l = 0
    var r = nums.count - 1

    while l <= r {
        let m = ((r - l) / 2) + l

        if target == nums[m] {
            return m
        }

        if nums[l] <= nums[m] { // left sorted portion
//            if target > nums[m] || target < nums[l] {
//                l = m + 1
//            } else {
//                r = m - 1
//            }
            if target <= nums[m] && target >= nums[l] {
                r = m - 1
            } else {
                l = m + 1
            }
        } else { // right sorted portion
//            if target < nums[m] || target > nums[r] {
//                r = m - 1
//            } else {
//                l = m + 1
//            }
            if target > nums[m] && target < nums[r] {
                l = m + 1
            } else {
                r = m - 1
            }

        }
    }
    return -1
}

let result = search([4,5,6,7,0,1,2], 0) // 4
print(result)

let result1 = search([4,5,6,7,0,1,2], 3) // -1
print(result1)

let result2 = search([1], 0) // -1
print(result2)
