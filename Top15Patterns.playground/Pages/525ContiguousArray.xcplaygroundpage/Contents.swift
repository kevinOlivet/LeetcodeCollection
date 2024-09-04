import Foundation

/*
 ## 525. Contiguous Array
 https://leetcode.com/problems/contiguous-array/description/

 Given a binary array nums, return the maximum length of a contiguous subarray with an equal number of 0 and 1.

 Example 1:
 Input: nums = [0,1]
 Output: 2
 Explanation: [0, 1] is the longest contiguous subarray with an equal number of 0 and 1.

 Example 2:
 Input: nums = [0,1,0]
 Output: 2
 Explanation: [0, 1] (or [1, 0]) is a longest contiguous subarray with equal number of 0 and 1.
 */

func findMaxLength(_ nums: [Int]) -> Int {
    var zero = 0
    var one = 0
    var result = 0

    var diffIndex = [Int: Int]()

    for i in 0..<nums.count {
        if nums[i] == 0 {
            zero += 1
        } else {
            one += 1
        }

        if diffIndex[one - zero] == nil {
            diffIndex[one - zero] = i
        }

        if one == zero {
            result = one + zero
        } else {
            let idx = diffIndex[one - zero]!
            result = max(result, i - idx)
        }
    }
    return result
}

let result = findMaxLength([0,1]) // 2
print(result)

let result1 = findMaxLength([0,1,0]) // 2
print(result1)
