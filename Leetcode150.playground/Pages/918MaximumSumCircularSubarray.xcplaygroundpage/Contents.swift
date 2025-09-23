import Foundation

/*
 ## 918. Maximum Sum Circular Subarray
 https://leetcode.com/problems/maximum-sum-circular-subarray/description/?envType=study-plan-v2&envId=top-interview-150

 Given a circular integer array nums of length n, return the maximum possible sum of a non-empty subarray of nums.

 A circular array means the end of the array connects to the beginning of the array. Formally, the next element of nums[i] is nums[(i + 1) % n] and the previous element of nums[i] is nums[(i - 1 + n) % n].

 A subarray may only include each element of the fixed buffer nums at most once. Formally, for a subarray nums[i], nums[i + 1], ..., nums[j], there does not exist i <= k1, k2 <= j with k1 % n == k2 % n.

 Example 1:
 Input: nums = [1,-2,3,-2]
 Output: 3
 Explanation: Subarray [3] has maximum sum 3.

 Example 2:
 Input: nums = [5,-3,5]
 Output: 10
 Explanation: Subarray [5,5] has maximum sum 5 + 5 = 10.

 Example 3:
 Input: nums = [-3,-2,-3]
 Output: -2
 Explanation: Subarray [-2] has maximum sum -2.
 */

func maxSubarraySumCircular(_ nums: [Int]) -> Int {
    var curMax = 0
    var curMin = 0
    var globMax = nums[0]
    var globMin = nums[0]
    var total = 0
    for n in nums {
        curMax = max(curMax + n, n)
        curMin = min(curMin + n, n)
        globMax = max(globMax, curMax)
        globMin = min(globMin, curMin)
        total += n
    }
    return globMax > 0 ? max(globMax, total - globMin) : globMax
}

let result = maxSubarraySumCircular([1,-2,3,-2]) // 3
print(result)

let result1 = maxSubarraySumCircular([5,-3,5]) // 10
print(result1)

let result2 = maxSubarraySumCircular([-3,-2,-3]) // -2
print(result2)
