import Foundation

/*
 ## 35. Search Insert Position
 https://leetcode.com/problems/search-insert-position/description/?envType=study-plan-v2&envId=top-interview-150

 Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

 You must write an algorithm with O(log n) runtime complexity.

 Example 1:
 Input: nums = [1,3,5,6], target = 5
 Output: 2

 Example 2:
 Input: nums = [1,3,5,6], target = 2
 Output: 1

 Example 3:
 Input: nums = [1,3,5,6], target = 7
 Output: 4

 Constraints:
 1 <= nums.length <= 104
 */

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var l = 0
    var r = nums.count - 1
    while l <= r {
        let m = ((r-l)/2)+l
        if target > nums[m] {
            l = m + 1
        } else if target < nums[m] {
            r = m - 1
        } else {
            return m
        }
    }
    return l
}

let result = searchInsert([1,3,5,6], 5) // 2
print(result)

let result1 = searchInsert([1,3,5,6], 2) // 1
print(result1)

let result2 = searchInsert( [1,3,5,6], 7) // 4
print(result2)
