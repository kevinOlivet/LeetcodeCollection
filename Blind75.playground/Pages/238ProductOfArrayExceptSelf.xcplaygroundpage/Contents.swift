import Foundation

/*
 238. Product of Array Except Self
 https://leetcode.com/problems/product-of-array-except-self/

 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

 You must write an algorithm that runs in O(n) time and without using the division operation.

 Example 1:
 Input: nums = [1,2,3,4]
 Output: [24,12,8,6]

 Example 2:
 Input: nums = [-1,1,0,-3,3]
 Output: [0,0,9,0,0]
 */

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var result = Array(repeating: 1, count: nums.count)
    var prefix = 1

    for i in 0..<nums.count {
        result[i] = prefix
        prefix *= nums[i]
    }
    var postfix = 1
    for i in (0..<nums.count).reversed() {
        result[i] *= postfix
        postfix *= nums[i]
    }
    return result
}

let result = productExceptSelf([1,2,3,4]) // [24,12,8,6]
print(result)

let result1 = productExceptSelf([-1,1,0,-3,3]) // [0,0,9,0,0]
print(result1)
