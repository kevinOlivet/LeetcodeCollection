import Foundation

/*
 18. 4Sum, FourSum
 https://leetcode.com/problems/4sum/description/

 Given an array nums of n integers, return an array of all the unique quadruplets [nums[a], nums[b], nums[c], nums[d]] such that:

 0 <= a, b, c, d < n
 a, b, c, and d are distinct.
 nums[a] + nums[b] + nums[c] + nums[d] == target
 You may return the answer in any order.

 Example 1:
 Input: nums = [1,0,-1,0,-2,2], target = 0
 Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]

 Example 2:
 Input: nums = [2,2,2,2,2], target = 8
 Output: [[2,2,2,2]]
 */

func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {

    let nums = nums.sorted()

    var result = Set<[Int]>()

    for i in 0..<nums.count {

        for j in i+1..<nums.count {

            var l = j + 1
            var r = nums.count - 1

            while l < r {
                let sum = nums[i] + nums[j] + nums[l] + nums[r]

                if sum > target {
                    r -= 1
                } else if sum < target {
                    l += 1
                } else {
                    result.insert([nums[i], nums[j], nums[l], nums[r]])
                    l += 1
                }
            }
        }
    }
    return Array(result)
}

let result = fourSum([1,0,-1,0,-2,2], 0) // [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]
print(result)

let result1 = fourSum([2,2,2,2,2], 8) // [[2,2,2,2]]
print(result1)
