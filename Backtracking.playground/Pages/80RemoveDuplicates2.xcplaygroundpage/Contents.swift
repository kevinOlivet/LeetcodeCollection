import Foundation

/*
 80. Remove Duplicates from Sorted Array II
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

    var result = 0

    var aPointer = 0
    var bPointer = 0

    var currentNumber = nums[0]
    var currentCount = 0

    while bPointer < nums.count {

        currentNumber = nums[aPointer]

        if nums[bPointer] == currentNumber {
            if currentCount < 2 {

            } else {
                nums[bPointer] = Int.max
            }
            currentCount += 1
            bPointer += 1

        } else {
            currentCount = 0
            aPointer = bPointer
        }
    }

    nums.sort()

    for i in nums where i < Int.max {
        result += 1
    }

    return result
}

var testArray = [1,1,1,2,2,3]

removeDuplicates(&testArray)

print(testArray)
