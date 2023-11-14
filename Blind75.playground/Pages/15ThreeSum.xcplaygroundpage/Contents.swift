import Foundation

/*
 15. 3Sum

 https://leetcode.com/problems/3sum/description/

 Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

 Notice that the solution set must not contain duplicate triplets.

 Example 1:
 Input: nums = [-1,0,1,2,-1,-4]
 Output: [[-1,-1,2],[-1,0,1]]
 Explanation:
 nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
 nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
 nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
 The distinct triplets are [-1,0,1] and [-1,-1,2].
 Notice that the order of the output and the order of the triplets does not matter.

 Example 2:
 Input: nums = [0,1,1]
 Output: []
 Explanation: The only possible triplet does not sum up to 0.

 Example 3:
 Input: nums = [0,0,0]
 Output: [[0,0,0]]
 Explanation: The only possible triplet sums up to 0.
 */

func threeSum(_ nums: [Int]) -> [[Int]] {

    let nums = nums.sorted()
    var result = [[Int]]()

    for i in 0..<nums.count {

        if i > 0 && nums[i] == nums[i - 1] { continue }

        var l = i + 1
        var r = nums.count - 1

        while l < r {
            let sum = nums[i] + nums[l] + nums[r]

            if sum > 0 {
                r -= 1
            } else if sum < 0 {
                l += 1
            } else {
                result.append([nums[i], nums[l], nums[r]])
                l += 1
                while nums[l] == nums[l - 1] && l < r {
                    l += 1
                }
            }
        }
    }
    return result
}

let result = threeSum([-1,0,1,2,-1,-4]) // [[-1,-1,2],[-1,0,1]]
print(result)

let result1 = threeSum([0,1,1]) // []
print(result1)

let result2 = threeSum([0,0,0]) // [[0,0,0]]
print(result2)
