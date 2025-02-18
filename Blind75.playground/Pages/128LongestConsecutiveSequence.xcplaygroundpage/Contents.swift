import Foundation

/*
 128. Longest Consecutive Sequence
 https://leetcode.com/problems/longest-consecutive-sequence/description/

 Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.
 You must write an algorithm that runs in O(n) time.

 Example 1:
 Input: nums = [100,4,200,1,3,2]
 Output: 4
 Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.

 Example 2:
 Input: nums = [0,3,7,2,5,8,4,6,0,1]
 Output: 9
 */

func longestConsecutive(_ nums: [Int]) -> Int {
    var nums = Set(nums)
    var result = 0

    for n in nums {
        if !nums.contains(n - 1) {
            var length = 0
            while nums.contains(n + length) {
                length += 1
            }
            result = max(result, length)
        }
    }
    return result
}

let result = longestConsecutive([100,4,200,1,3,2]) // 4
print(result)

let result1 = longestConsecutive([0,3,7,2,5,8,4,6,0,1]) // 9
print(result1)
