import Foundation

/*
 300. Longest Increasing Subsequence
 https://leetcode.com/problems/longest-increasing-subsequence/description/

 // DYNAMIC PROGRAMMING

 Given an integer array nums, return the length of the longest strictly increasing
 subsequence

 Example 1:
 Input: nums = [10,9,2,5,3,7,101,18]
 Output: 4
 Explanation: The longest increasing subsequence is [2,3,7,101], therefore the length is 4.

 Example 2:
 Input: nums = [0,1,0,3,2,3]
 Output: 4

 Example 3:
 Input: nums = [7,7,7,7,7,7,7]
 Output: 1
 */

func lengthOfLIS(_ nums: [Int]) -> Int {
    var dp = Array(repeating: 1, count: nums.count)

    for i in (0..<nums.count).reversed() {
        for j in i+1..<nums.count {
            if nums[i] < nums[j] {
                dp[i] = max(dp[i], 1 + dp[j])
            }
        }
    }
    return dp.max()!
}

let result = lengthOfLIS( [10,9,2,5,3,7,101,18]) // 4
print(result)

let result1 = lengthOfLIS([0,1,0,3,2,3]) // 4
print(result1)

let result2 = lengthOfLIS([7,7,7,7,7,7,7]) // 1
print(result2)
