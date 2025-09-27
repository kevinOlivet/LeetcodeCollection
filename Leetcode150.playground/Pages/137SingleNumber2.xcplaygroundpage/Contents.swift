import Foundation

/*
 ## 137. Single Number II, Single Number 2
 https://leetcode.com/problems/single-number-ii/description/?envType=study-plan-v2&envId=top-interview-150

 Given an integer array nums where every element appears three times except for one, which appears exactly once. Find the single element and return it.

 You must implement a solution with a linear runtime complexity and use only constant extra space.

 Example 1:
 Input: nums = [2,2,3,2]
 Output: 3

 Example 2:
 Input: nums = [0,1,0,1,0,1,99]
 Output: 99
 */

func singleNumber(_ nums: [Int]) -> Int {
    var ones = 0
    var twos = 0
    for n in nums {
        ones = ones ^ n & ~twos
        twos = twos ^ n & ~ones
    }
    return ones
}

let result = singleNumber([2,2,3,2]) // 3
print(result)

let result1 = singleNumber([0,1,0,1,0,1,99]) // 99
print(result1)
