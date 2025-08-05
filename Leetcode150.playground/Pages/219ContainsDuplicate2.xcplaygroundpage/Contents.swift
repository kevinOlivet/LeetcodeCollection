import Foundation

/*
 ## 219. Contains Duplicate II, 219. Contains Duplicate 2
 https://leetcode.com/problems/contains-duplicate-ii/description/?envType=study-plan-v2&envId=top-interview-150

 Given an integer array nums and an integer k, return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.

 Example 1:
 Input: nums = [1,2,3,1], k = 3
 Output: true

 Example 2:
 Input: nums = [1,0,1,1], k = 1
 Output: true

 Example 3:
 Input: nums = [1,2,3,1,2,3], k = 2
 Output: false
 */

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    var set = Set<Int>()
    var l = 0
    for r in 0..<nums.count {
        if r - l > k {
            set.remove(nums[l])
            l += 1
        }
        if set.contains(nums[r]) {
            return true
        }
        set.insert(nums[r])
    }
    return false
}

let result = containsNearbyDuplicate([1,2,3,1], 3) // true
print(result)

let result1 = containsNearbyDuplicate([1,0,1,1], 1) // true
print(result1)

let result2 = containsNearbyDuplicate([1,2,3,1,2,3], 2) // false
print(result2)
