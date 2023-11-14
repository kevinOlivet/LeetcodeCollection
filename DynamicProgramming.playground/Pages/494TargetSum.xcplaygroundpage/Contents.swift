import Foundation

/*
 https://leetcode.com/problems/target-sum/
 494. Target Sum

 You are given an integer array nums and an integer target.

 You want to build an expression out of nums by adding one of the symbols '+' and '-' before each integer in nums and then concatenate all the integers.

 For example, if nums = [2, 1], you can add a '+' before 2 and a '-' before 1 and concatenate them to build the expression "+2-1".
 Return the number of different expressions that you can build, which evaluates to target.

 Example 1:
 Input: nums = [1,1,1,1,1], target = 3
 Output: 5
 Explanation: There are 5 ways to assign symbols to make the sum of nums be target 3.
 -1 + 1 + 1 + 1 + 1 = 3
 +1 - 1 + 1 + 1 + 1 = 3
 +1 + 1 - 1 + 1 + 1 = 3
 +1 + 1 + 1 - 1 + 1 = 3
 +1 + 1 + 1 + 1 - 1 = 3

 Example 2:
 Input: nums = [1], target = 1
 Output: 1
 */

func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
    var dp = [[Int]: Int]()

    func backtrack(index: Int, total: Int) -> Int {
        // Base case
        if index == nums.count {
            return total == target ? 1 : 0
        }

        // found in dp dict so no need to look again (caching)
        if dp.keys.contains([index, total]) {
            return dp[[index, total]]!
        }

        // recursion
        dp[[index, total]] = (backtrack(index: index + 1, total: total + nums[index])) +
                             (backtrack(index: index + 1, total: total - nums[index]))
//        print(dp)
        return dp[[index, total]]!
    }

    return backtrack(index: 0, total: 0)
}

let result = findTargetSumWays([1,1,1,1,1], 3) // 5
print(result)

let result2 = findTargetSumWays([1], 1) // 1
print(result2)
