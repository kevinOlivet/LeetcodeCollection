import Foundation

/*
 ## 189. Rotate Array
 https://leetcode.com/problems/rotate-array/description/?envType=study-plan-v2&envId=top-interview-150

 Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.

 Example 1:
 Input: nums = [1,2,3,4,5,6,7], k = 3
 Output: [5,6,7,1,2,3,4]
 Explanation:
 rotate 1 steps to the right: [7,1,2,3,4,5,6]
 rotate 2 steps to the right: [6,7,1,2,3,4,5]
 rotate 3 steps to the right: [5,6,7,1,2,3,4]

 Example 2:
 Input: nums = [-1,-100,3,99], k = 2
 Output: [3,99,-1,-100]
 Explanation:
 rotate 1 steps to the right: [99,-1,-100,3]
 rotate 2 steps to the right: [3,99,-1,-100]

 Constraints:
 1 <= nums.length <= 105
 -231 <= nums[i] <= 231 - 1
 0 <= k <= 105

 Follow up:

 Try to come up with as many solutions as you can. There are at least three different ways to solve this problem.
 Could you do it in-place with O(1) extra space?
 */

func rotate(_ nums: inout [Int], _ k: Int) {
    var result = Array(repeating: 0,
                       count: nums.count)

    for (i, n) in nums.enumerated() {
        let new = (i + k) % nums.count
        result[new] = n
    }
    nums = result

//    let k = k % nums.count
//    nums.reverse()
//    nums[..<k].reverse()
//    nums[k...].reverse()
}

var nums = [1,2,3,4,5,6,7]
rotate(&nums, 3) // [5,6,7,1,2,3,4]
print(nums)

var nums1 = [-1,-100,3,99]
rotate(&nums1, 2) // [3,99,-1,-100]
print(nums1)
