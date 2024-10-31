import Foundation

/*
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
 */

func findMin(_ nums: [Int]) -> Int {
    var result = nums[0]
    var l = 0
    var r = nums.count - 1

    while l <= r {
        if nums[l] < nums[r] { // this portion is sorted
            result = min(result, nums[l])
            break
        }

        let m = ((r - l) / 2) + l
        result = min(result, nums[m])

        if nums[m] >= nums[l] { // search right portion
            l = m + 1
        } else {                // search left portion
            r = m - 1
        }
    }
    return result
}

let result = findMin([3,4,5,1,2]) // 1
print(result)

let result1 = findMin([4,5,6,7,0,1,2]) // 0
print(result1)

let result2 = findMin([11,13,15,17]) // 11
print(result2)
