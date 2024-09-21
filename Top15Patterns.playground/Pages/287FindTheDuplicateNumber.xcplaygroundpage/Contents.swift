import Foundation

/*
 ## 287. Find the Duplicate Number
 https://leetcode.com/problems/find-the-duplicate-number/description/

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
 */

func findDuplicate(_ nums: [Int]) -> Int {
    var slow = 0
    var fast = 0
    while true {
        slow = nums[slow]
        fast = nums[nums[fast]]
        if slow == fast {
            break
        }
    }

    var slow2 = 0
    while true {
        slow = nums[slow]
        slow2 = nums[slow2]
        if slow == slow2 {
            return slow
        }
    }
}

let result = findDuplicate([1,3,4,2,2]) // 2
print(result)

let result1 = findDuplicate([3,1,3,4,2]) // 3
print(result1)

let result2 = findDuplicate([3,3,3,3,3]) // 3
print(result2)
