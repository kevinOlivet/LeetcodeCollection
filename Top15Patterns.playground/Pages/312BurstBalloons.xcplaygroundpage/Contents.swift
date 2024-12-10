import Foundation

/*
 ## 312. Burst Balloons
 https://leetcode.com/problems/burst-balloons/description/
 15 Dynamic Programming Pattern

 You are given n balloons, indexed from 0 to n - 1. Each balloon is painted with a number on it represented by an array nums. You are asked to burst all the balloons.

 If you burst the ith balloon, you will get nums[i - 1] * nums[i] * nums[i + 1] coins. If i - 1 or i + 1 goes out of bounds of the array, then treat it as if there is a balloon with a 1 painted on it.

 Return the maximum coins you can collect by bursting the balloons wisely.

 Example 1:
 Input: nums = [3,1,5,8]
 Output: 167
 Explanation:
 nums = [3,1,5,8] --> [3,5,8] --> [3,8] --> [8] --> []
 coins =  3*1*5    +   3*5*8   +  1*3*8  + 1*8*1 = 167

 Example 2:
 Input: nums = [1,5]
 Output: 10
 */

func maxCoins(_ nums: [Int]) -> Int {
    let nums = [1] + nums + [1] // Add buffers
    var dp = [[Int]: Int]()

    func dfs(_ l: Int, _ r: Int) -> Int {
        if l > r {
            return 0
        }
        if let found = dp[[l, r]] {
            return found
        }

        dp[[l, r]] = 0
        for i in l..<r+1 {
            var coins = nums[l - 1] * nums[i] * nums[r + 1]
            coins += dfs(l, i - 1) + dfs(i + 1, r)
            dp[[l, r]] = max(dp[[l, r]] ?? 0, coins)
        }
        return dp[[l, r]] ?? 0
    }

    return dfs(1, nums.count - 2)
}

let result = maxCoins([3,1,5,8]) // 167
print(result)

let result1 = maxCoins([1,5]) // 10
print(result1)
