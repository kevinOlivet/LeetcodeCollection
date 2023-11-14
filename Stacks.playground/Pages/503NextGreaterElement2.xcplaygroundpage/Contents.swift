import Foundation // NO STACK

/*
 https://leetcode.com/problems/next-greater-element-ii/description/

 503. Next Greater Element II

 Given a circular integer array nums (i.e., the next element of nums[nums.length - 1] is nums[0]), return the next greater number for every element in nums.

 The next greater number of a number x is the first greater number to its traversing-order next in the array, which means you could search circularly to find its next greater number. If it doesn't exist, return -1 for this number.

 Example 1:
 Input: nums = [1,2,1]
 Output: [2,-1,2]
 Explanation: The first 1's next greater number is 2;
 The number 2 can't find next greater number.
 The second 1's next greater number needs to search circularly, which is also 2.

 Example 2:
 Input: nums = [1,2,3,4,3]
 Output: [2,3,4,-1,4]
 */

func nextGreaterElements(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    outer: for (ind, n) in nums.enumerated() {
        var found: Int!
        inner: for i in ind..<nums.count {
            if nums[i] > n {
                found = nums[i]
                break inner
            }
        }
        if found == nil {
            inner: for i in 0..<ind {
                if nums[i] > n {
                    found = nums[i]
                    break inner
                }
            }
        }
        if found == nil { found = -1 }
        result.append(found)
    }
return result
}

let result = nextGreaterElements([1,2,1]) // [2,-1,2]
print(result)

let result2 = nextGreaterElements([1,2,3,4,3]) // [2,3,4,-1,4]
print(result2)

let result3 = nextGreaterElements([5,4,3,2,1]) // [-1,5,5,5,5]
print(result3)

let result4 = nextGreaterElements([1,5,3,6,8]) // [5,6,6,8,-1]
print(result4)

let result5 = nextGreaterElements([100,1,11,1,120,111,123,1,-1,-100]) // [120,11,120,120,123,123,-1,100,100,100]
print(result5)
