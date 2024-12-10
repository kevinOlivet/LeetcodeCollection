import Foundation

/*
 ## 416. Partition Equal Subset Sum
 https://leetcode.com/problems/partition-equal-subset-sum/description/
 15 Dynamic Programming Pattern

 Given an integer array nums, return true if you can partition the array into two subsets such that the sum of the elements in both subsets is equal or false otherwise.

 Example 1:
 Input: nums = [1,5,11,5]
 Output: true
 Explanation: The array can be partitioned as [1, 5, 5] and [11].

 Example 2:
 Input: nums = [1,2,3,5]
 Output: false
 Explanation: The array cannot be partitioned into equal sum subsets.
 */

func canPartition(_ nums: [Int]) -> Bool {
    if nums.reduce(0, +) % 2 == 1 { return false }
    var dp = Set<Int>()
    dp.insert(0)
    let target = nums.reduce(0, +)/2

    for i in 0..<nums.count {
        var tempDP = dp
        for t in dp {
            if (t + nums[i]) == target {
                return true
            }
            tempDP.insert(t + nums[i])
        }
        dp = tempDP
    }
    return dp.contains(target)
}

let result = canPartition([1,5,11,5]) // true
print(result)

let result1 = canPartition([1,2,3,5]) // false
print(result1)
