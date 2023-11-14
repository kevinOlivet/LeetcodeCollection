import Foundation

/*
 268. Missing Number

 https://leetcode.com/problems/missing-number/description/

 Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

 Example 1:
 Input: nums = [3,0,1]
 Output: 2
 Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.

 Example 2:
 Input: nums = [0,1]
 Output: 2
 Explanation: n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.

 Example 3:
 Input: nums = [9,6,4,2,3,5,7,0,1]
 Output: 8
 Explanation: n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.
 */

func missingNumber(_ nums: [Int]) -> Int {

//    // Uses O(n) space complexity
//    let nums = Set(nums)
//    for i in 0...nums.count {
//        if !nums.contains(i) {
//            return i
//        }
//    }
//    return 0

    // Uses O(1) space and O(2n) time
    var correctTotal = 0
    for i in 0...nums.count {
        correctTotal += i
    }
    let numsTotal = nums.reduce(0, +)
    return correctTotal - numsTotal

    // Tricky
//    var result = nums.count
//    for i in 0..<nums.count {
//        result += (i - nums[i])
//    }
//    return result
}

let result = missingNumber([3,0,1]) // 2
print(result)

let result1 = missingNumber([0,1]) // 2
print(result1)

let result2 = missingNumber([9,6,4,2,3,5,7,0,1]) // 8
print(result2)
