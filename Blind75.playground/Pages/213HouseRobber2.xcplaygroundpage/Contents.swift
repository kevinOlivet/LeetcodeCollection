import Foundation

/*
 213. House Robber II
 https://leetcode.com/problems/house-robber-ii/description/

 // Dynamic Programming

 You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed. All houses at this place are arranged in a circle. That means the first house is the neighbor of the last one. Meanwhile, adjacent houses have a security system connected, and it will automatically contact the police if two adjacent houses were broken into on the same night.

 Given an integer array nums representing the amount of money of each house, return the maximum amount of money you can rob tonight without alerting the police.

 Example 1:
 Input: nums = [2,3,2]
 Output: 3
 Explanation: You cannot rob house 1 (money = 2) and then rob house 3 (money = 2), because they are adjacent houses.

 Example 2:
 Input: nums = [1,2,3,1]
 Output: 4
 Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
 Total amount you can rob = 1 + 3 = 4.

 Example 3:
 Input: nums = [1,2,3]
 Output: 3
 */

func rob(_ nums: [Int]) -> Int {
    guard nums.count > 1 else { return nums[0] }
    var prev1 = 0
    var current1 = 0

    for i in 0..<(nums.count - 1) {
//        let temp = max(nums[i] + prev1, current1)
//        prev1 = current1
//        current1 = temp
        (prev1, current1) = (current1, max(current1, nums[i] + prev1))
    }

    var prev2 = 0
    var current2 = 0

    for i in 1..<nums.count {
//        let temp = max(nums[i] + prev2, current2)
//        prev2 = current2
//        current2 = temp
        (prev2, current2) = (current2, max(current2, nums[i] + prev2))
    }

    return max(current1, current2)
}

let result = rob([2,3,2]) // 3
print(result)

let result1 = rob([1,2,3,1]) // 4
print(result1)

let result2 = rob([1,2,3]) // 3
print(result2)
