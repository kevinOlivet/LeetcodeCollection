import Foundation

/*
 217. Contains Duplicate

 https://leetcode.com/problems/contains-duplicate/description/

 Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

 Example 1:
 Input: nums = [1,2,3,1]
 Output: true

 Example 2:
 Input: nums = [1,2,3,4]
 Output: false

 Example 3:
 Input: nums = [1,1,1,3,3,4,3,2,4,2]
 Output: true
 */

func containsDuplicate(_ nums: [Int]) -> Bool {
    var numsSet = Set<Int>()

    for i in nums {
        if numsSet.contains(i) {
            return true
        } else {
            numsSet.insert(i)
        }
    }
    return false
}

let result = containsDuplicate([1,2,3,1]) // true
print(result)

let result1 = containsDuplicate([1,2,3,4]) // false
print(result1)

let result2 = containsDuplicate([1,1,1,3,3,4,3,2,4,2]) // true
print(result2)
