import Foundation

/*
 152. Maximum Product Subarray

 https://leetcode.com/problems/maximum-product-subarray/description/

 Given an integer array nums, find a
 subarray
  that has the largest product, and return the product.

 The test cases are generated so that the answer will fit in a 32-bit integer.

 Example 1:
 Input: nums = [2,3,-2,4]
 Output: 6
 Explanation: [2,3] has the largest product 6.

 Example 2:
 Input: nums = [-2,0,-1]
 Output: 0
 Explanation: The result cannot be 2, because [-2,-1] is not a subarray.
 */

func maxProduct(_ nums: [Int]) -> Int {
    var result = nums.max()!
    var curMax = 1
    var curMin = 1

    for n in nums {
        if n == 0 {
            curMax = 1
            curMin = 1
            continue
        }
        let tempCurMax = curMax
        curMax = max(n * curMax, n * curMin, n)
        curMin = min(n * tempCurMax, n * curMin, n)
        result = max(result, curMax)
    }
    return result
}

let result = maxProduct([2,3,-2,4]) // 6
print(result)

let result1 = maxProduct([-2,0,-1]) // 0
print(result1)
