import Foundation

/*
 ## 80. Remove Duplicates from Sorted Array II
 https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/description/

 Given an integer array nums sorted in non-decreasing order, remove some duplicates in-place such that each unique element appears at most twice. The relative order of the elements should be kept the same.

 Since it is impossible to change the length of the array in some languages, you must instead have the result be placed in the first part of the array nums. More formally, if there are k elements after removing the duplicates, then the first k elements of nums should hold the final result. It does not matter what you leave beyond the first k elements.

 Return k after placing the final result in the first k slots of nums.

 Do not allocate extra space for another array. You must do this by modifying the input array in-place with O(1) extra memory.

 Example 1:
 Input: nums = [1,1,1,2,2,3]
 Output: 5, nums = [1,1,2,2,3,_]
 Explanation: Your function should return k = 5, with the first five elements of nums being 1, 1, 2, 2 and 3 respectively.
 It does not matter what you leave beyond the returned k (hence they are underscores).

 Example 2:
 Input: nums = [0,0,1,1,1,1,2,3,3]
 Output: 7, nums = [0,0,1,1,2,3,3,_,_]
 Explanation: Your function should return k = 7, with the first seven elements of nums being 0, 0, 1, 1, 2, 3 and 3 respectively.
 It does not matter what you leave beyond the returned k (hence they are underscores).
 */

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var l = 1
    var r = 1
    var count = 1

    while r < nums.count {
        if nums[r] == nums[r - 1] {
            count += 1
        } else {
            count = 1
        }
        if count <= 2 {
            nums[l] = nums[r]
            l += 1
        }
        r += 1
    }
    return l
}

var nums = [1,1,1,2,2,3]
removeDuplicates(&nums) // 5, nums = [1,1,2,2,3,_]
print(nums)

var nums1 = [0,0,1,1,1,1,2,3,3]
removeDuplicates(&nums1) //  7, nums = [0,0,1,1,2,3,3,_,_]
print(nums1)
