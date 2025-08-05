import Foundation

/*
 ## 228. Summary Ranges
 https://leetcode.com/problems/summary-ranges/description/?envType=study-plan-v2&envId=top-interview-150

 You are given a sorted unique integer array nums.

 A range [a,b] is the set of all integers from a to b (inclusive).

 Return the smallest sorted list of ranges that cover all the numbers in the array exactly. That is, each element of nums is covered by exactly one of the ranges, and there is no integer x such that x is in one of the ranges but not in nums.

 Each range [a,b] in the list should be output as:

 "a->b" if a != b
 "a" if a == b

 Example 1:
 Input: nums = [0,1,2,4,5,7]
 Output: ["0->2","4->5","7"]
 Explanation: The ranges are:
 [0,2] --> "0->2"
 [4,5] --> "4->5"
 [7,7] --> "7"

 Example 2:
 Input: nums = [0,2,3,4,6,8,9]
 Output: ["0","2->4","6","8->9"]
 Explanation: The ranges are:
 [0,0] --> "0"
 [2,4] --> "2->4"
 [6,6] --> "6"
 [8,9] --> "8->9"
 */

func summaryRanges(_ nums: [Int]) -> [String] {

    if nums.count == 0 { return [] }

    var result = [String]()
    var l = 0
    var r = 0

    while r < nums.count {
        while r + 1 < nums.count && nums[r] + 1 == nums[r + 1] {
            r += 1
        }

        if l == r {
            result.append("\(nums[l])")
        } else {
            result.append("\(nums[l])->\(nums[r])")
        }
        r += 1
        l = r
    }

    return result
}

let result = summaryRanges([0,1,2,4,5,7]) // ["0->2","4->5","7"]
print(result)

let result1 = summaryRanges([0,2,3,4,6,8,9]) // ["0","2->4","6","8->9"]
print(result1)
