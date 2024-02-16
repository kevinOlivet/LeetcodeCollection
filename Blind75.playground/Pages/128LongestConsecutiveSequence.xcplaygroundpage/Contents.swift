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
    var numsSet = Set(nums)
    var maxFound = 1

    for num in numsSet {
        if !numsSet.contains(num - 1) {
            var currentLength = 0
            var currentNum = num
            while numsSet.contains(currentNum) {
                currentLength += 1
                currentNum += 1
            }
            maxFound = max(currentLength, maxFound)
        }
    }
    return maxFound
}

let result = longestConsecutive([100,4,200,1,3,2]) // 4
print(result)

let result1 = longestConsecutive([0,3,7,2,5,8,4,6,0,1]) // 9
print(result1)
