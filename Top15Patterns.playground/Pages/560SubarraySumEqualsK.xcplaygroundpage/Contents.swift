import Foundation

/*
 ## 560. Subarray Sum Equals K
 https://leetcode.com/problems/subarray-sum-equals-k/description/

 Given an array of integers nums and an integer k, return the total number of subarrays whose sum equals to k.

 A subarray is a contiguous non-empty sequence of elements within an array.

 Example 1:
 Input: nums = [1,1,1], k = 2
 Output: 2

 Example 2:
 Input: nums = [1,2,3], k = 3
 Output: 2
 */

func subarraySum(_ nums: [Int], _ k: Int) -> Int {
    var result = 0
    var currentsum = 0
    var prefixSums: [Int: Int] = [0: 1]

    for n in nums {
        currentsum += n
        var diff = currentsum - k

        result += prefixSums[diff, default: 0]
        prefixSums[currentsum, default: 0] += 1
    }
    return result
}

let result = subarraySum([1,1,1], 2) // 2
print(result)

let result1 = subarraySum([1,2,3], 3) // 2
print(result1)
