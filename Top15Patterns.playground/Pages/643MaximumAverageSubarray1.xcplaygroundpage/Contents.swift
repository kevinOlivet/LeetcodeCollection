import Foundation

/*
 ## 643. Maximum Average Subarray I
 https://leetcode.com/problems/maximum-average-subarray-i/description/

 You are given an integer array nums consisting of n elements, and an integer k.

 Find a contiguous subarray whose length is equal to k that has the maximum average value and return this value. Any answer with a calculation error less than 10-5 will be accepted.

 Example 1:
 Input: nums = [1,12,-5,-6,50,3], k = 4
 Output: 12.75000
 Explanation: Maximum average is (12 - 5 - 6 + 50) / 4 = 51 / 4 = 12.75

 Example 2:
 Input: nums = [5], k = 1
 Output: 5.00000
 */

func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
    var currentSum = 0
    for i in 0..<k {
        currentSum += nums[i]
    }
    var maxAverage = Double(currentSum)/Double(k)
    var l = 0
    var r = k - 1
    while r < nums.count - 1 {
        r += 1
        l += 1
        currentSum += nums[r]
        currentSum -= nums[l - 1]
        let average = Double(currentSum)/Double(k)

        maxAverage = max(maxAverage, average)
    }
    return maxAverage
}

let result = findMaxAverage([1,12,-5,-6,50,3], 4) // 12.75000
print(result)

let result1 = findMaxAverage([5], 1) // 5.0000
print(result1)

let result2 = findMaxAverage([0,4,0,3,2], 1) // 4.000
print(result2)
