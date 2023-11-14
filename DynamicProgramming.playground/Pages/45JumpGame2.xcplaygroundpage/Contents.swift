import Foundation

/*
 https://leetcode.com/problems/jump-game-ii/description/
 45. Jump Game II

 You are given a 0-indexed array of integers nums of length n. You are initially positioned at nums[0].

 Each element nums[i] represents the maximum length of a forward jump from index i. In other words, if you are at nums[i], you can jump to any nums[i + j] where:

 0 <= j <= nums[i] and
 i + j < n
 Return the minimum number of jumps to reach nums[n - 1]. The test cases are generated such that you can reach nums[n - 1].

 Example 1:
 Input: nums = [2,3,1,1,4]
 Output: 2
 Explanation: The minimum number of jumps to reach the last index is 2. Jump 1 step from index 0 to 1, then 3 steps to the last index.

 Example 2:
 Input: nums = [2,3,0,1,4]
 Output: 2
 */

func jump(_ nums: [Int]) -> Int {
    var dp = Array(repeating: 10000, count: nums.count)
    dp[nums.count - 1] = 0

    for i in (0..<nums.count-1).reversed() {
        print(dp)
        for j in (0...nums[i]).reversed() {
            if i + j >= nums.count - 1 {
                dp[i] = 0
                break
            }
            dp[i] = min(dp[i], dp[i+j])
        }
        dp[i] += 1
    }
    return dp[0]
}

let result = jump([2,3,1,1,4]) // 2
print(result)

let result1 = jump([2,3,0,1,4]) // 2
print(result1)
