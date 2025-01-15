import Foundation

/*
 55. Jump Game
 https://leetcode.com/problems/jump-game/description/

 You are given an integer array nums. You are initially positioned at the array's first index, and each element in the array represents your maximum jump length at that position.

 Return true if you can reach the last index, or false otherwise.

 Example 1:
 Input: nums = [2,3,1,1,4]
 Output: true
 Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.

 Example 2:
 Input: nums = [3,2,1,0,4]
 Output: false
 Explanation: You will always arrive at index 3 no matter what. Its maximum jump length is 0, which makes it impossible to reach the last index.
 */

// Dynamic Programming Solution
func canJump(_ nums: [Int]) -> Bool {
    var dp = Array(repeating: false, count: nums.count)
    dp[dp.count - 1] = true
    for i in (0..<nums.count).reversed() {
        let n = nums[i]
        let bound = min(dp.count-1, i+n)
        if dp[i...bound].contains(true) {
            dp[i] = true
        }
    }
    return dp[0]
}

// Greedy Solution
//func canJump(_ nums: [Int]) -> Bool {
//    var goal = nums.count - 1
//
//    for i in (0..<nums.count).reversed() {
//        if i + nums[i] >= goal {
//            goal = i
//        }
//    }
//    return goal == 0
//}


let result = canJump([2,3,1,1,4]) // true
print(result)

let result1 = canJump([3,2,1,0,4]) // false
print(result1)

let result2 = canJump([2,0,0]) // true
print(result2)

let result3 = canJump([0]) // true
print(result3)
