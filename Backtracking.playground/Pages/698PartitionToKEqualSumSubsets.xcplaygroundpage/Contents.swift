import Foundation

/*
https://leetcode.com/problems/partition-to-k-equal-sum-subsets/

Given an integer array nums and an integer k, return true if it is possible to divide this array into k non-empty subsets whose sums are all equal.

Example 1:

Input: nums = [4,3,2,3,5,2,1], k = 4
Output: true
Explanation: It is possible to divide it into 4 subsets (5), (1, 4), (2,3), (2,3) with equal sums.

Example 2:

Input: nums = [1,2,3,4], k = 3
Output: false
 */

func canPartitionKSubsets(_ nums: [Int], _ k: Int) -> Bool {
    let sum = nums.reduce(0, +)
    if sum % k != 0 { return false }
    let target = sum/k
    let nums = nums.sorted(by: >)

    var used = Array(repeating: false, count: nums.count)

    func backtrack(i: Int, k: Int, subsetSum: Int) -> Bool {
        // Base case SUCCESS!
        if k == 0 {
            return true
        }

        // Found a subset! Decrement k and find more
        if subsetSum == target {
            return backtrack(i: 0, k: k - 1, subsetSum: 0)
        }

        // Keep going through the numbers
        for j in i..<nums.count {
            if used[j] || subsetSum + nums[j] > target {
                continue
            }
            // Avoid checking dublicates next to each other
            if j > 0 && !used[j - 1] && nums[j] == nums[j - 1] {
                continue
            }
            used[j] = true

            if backtrack(i: j + 1, k: k, subsetSum: subsetSum + nums[j]) {
                return true
            }
            used[j] = false
        }
        return false
    }

    return backtrack(i: 0, k: k, subsetSum: 0)
}

let result = canPartitionKSubsets([4,3,2,3,5,2,1], 4) // (5), (1, 4), (2,3), (2,3) = true
print(result)

let result1 = canPartitionKSubsets([1,2,3,4], 3) // false
print(result1)

let result2 = canPartitionKSubsets([3,4,5], 3) // false
print(result2)

let result3 = canPartitionKSubsets([6,5,9,6,3,5,1,10,4,1,4,3,9,9,3,3], 9) // false
print(result3)
