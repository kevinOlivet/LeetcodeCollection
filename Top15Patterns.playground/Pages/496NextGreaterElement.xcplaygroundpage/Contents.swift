import Foundation

/*
 ## 496. Next Greater Element I
 https://leetcode.com/problems/next-greater-element-i/description/

 The next greater element of some element x in an array is the first greater element that is to the right of x in the same array.

 You are given two distinct 0-indexed integer arrays nums1 and nums2, where nums1 is a subset of nums2.

 For each 0 <= i < nums1.length, find the index j such that nums1[i] == nums2[j] and determine the next greater element of nums2[j] in nums2. If there is no next greater element, then the answer for this query is -1.

 Return an array ans of length nums1.length such that ans[i] is the next greater element as described above.

 Example 1:
 Input: nums1 = [4,1,2], nums2 = [1,3,4,2]
 Output: [-1,3,-1]
 Explanation: The next greater element for each value of nums1 is as follows:
 - 4 is underlined in nums2 = [1,3,4,2]. There is no next greater element, so the answer is -1.
 - 1 is underlined in nums2 = [1,3,4,2]. The next greater element is 3.
 - 2 is underlined in nums2 = [1,3,4,2]. There is no next greater element, so the answer is -1.

 Example 2:
 Input: nums1 = [2,4], nums2 = [1,2,3,4]
 Output: [3,-1]
 Explanation: The next greater element for each value of nums1 is as follows:
 - 2 is underlined in nums2 = [1,2,3,4]. The next greater element is 3.
 - 4 is underlined in nums2 = [1,2,3,4]. There is no next greater element, so the answer is -1.
 */

func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {

    // Hashmap to keep track of indexes of values
    var nums1Idx = [Int: Int]()
    for (i, v) in nums1.enumerated() {
        nums1Idx[v] = i
    }

    var result = Array(repeating: -1, count: nums1.count)

    var stack = [Int]()

    for i in 0..<nums2.count {
        let current = nums2[i]
        while let val = stack.last, current > val {
            let idx = nums1Idx[val]!
            result[idx] = current
            stack.popLast()
        }
        if nums1Idx.keys.contains(current) {
            stack.append(current)
        }
    }

    return result
}

let result = nextGreaterElement([4,1,2], [1,3,4,2]) // [-1,3,-1]
print(result)

let result1 = nextGreaterElement([2,4], [1,2,3,4]) // [3,-1]
print(result1)

let result2 = nextGreaterElement([4,1,2], [2,1,3,4]) // [-1,3,3]
print(result2)
