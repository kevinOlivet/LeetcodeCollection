import Foundation

/*
 456. 132 Pattern
 https://leetcode.com/problems/132-pattern/description/

 Given an array of n integers nums, a 132 pattern is a subsequence of three integers nums[i], nums[j] and nums[k] such that i < j < k and nums[i] < nums[k] < nums[j].

 Return true if there is a 132 pattern in nums, otherwise, return false.

 Example 1:
 Input: nums = [1,2,3,4]
 Output: false
 Explanation: There is no 132 pattern in the sequence.

 Example 2:
 Input: nums = [3,1,4,2]
 Output: true
 Explanation: There is a 132 pattern in the sequence: [1, 4, 2].

 Example 3:
 Input: nums = [-1,3,2,0]
 Output: true
 Explanation: There are three 132 patterns in the sequence: [-1, 3, 2], [-1, 3, 0] and [-1, 2, 0].
 */

func find132pattern(_ nums: [Int]) -> Bool {
    var stack = [(Int, Int)]()
    var currentMin = nums.first!

    for n in nums[1..<nums.count] {
        while !stack.isEmpty && n >= stack.last!.0 {
            stack.popLast()
        }
        if !stack.isEmpty && n > stack.last!.1 {
            return true
        }
        stack.append((n, currentMin))
        currentMin = min(currentMin, n)
    }
    return false
}

let result = find132pattern([1,2,3,4]) // false
print(result)

let result1 = find132pattern([3,1,4,2]) // true ie [1, 4, 2]
print(result1)

let result2 = find132pattern([-1,3,2,0]) // true ie [-1, 3, 2], [-1, 3, 0] and [-1, 2, 0]
print(result2)
