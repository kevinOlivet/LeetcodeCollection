import Foundation

/*
 ## 209. Minimum Size Subarray Sum
 https://leetcode.com/problems/minimum-size-subarray-sum/description/?envType=study-plan-v2&envId=top-interview-150

 Given an array of positive integers nums and a positive integer target, return the minimal length of a subarray whose sum is greater than or equal to target. If there is no such subarray, return 0 instead.

 Example 1:
 Input: target = 7, nums = [2,3,1,2,4,3]
 Output: 2
 Explanation: The subarray [4,3] has the minimal length under the problem constraint.

 Example 2:
 Input: target = 4, nums = [1,4,4]
 Output: 1

 Example 3:
 Input: target = 11, nums = [1,1,1,1,1,1,1,1]
 Output: 0
 */

func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
    var l = 0
    var total = 0
    var result = Int.max
    for r in 0..<nums.count {
        total += nums[r]
        while total >= target {
            result = min(result, r - l + 1)
            total -= nums[l]
            l += 1
        }
    }
    return result == Int.max ? 0 : result
}

let result = minSubArrayLen(7, [2,3,1,2,4,3]) // 2
print(result)

let result1 = minSubArrayLen(4, [1,4,4]) // 1
print(result1)

let result2 = minSubArrayLen(11, [1,1,1,1,1,1,1,1]) // 0
print(result2)
