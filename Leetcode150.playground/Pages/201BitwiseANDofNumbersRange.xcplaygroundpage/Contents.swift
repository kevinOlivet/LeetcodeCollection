import Foundation

/*
 ## 201. Bitwise AND of Numbers Range
 https://leetcode.com/problems/bitwise-and-of-numbers-range/description/?envType=study-plan-v2&envId=top-interview-150

 Given two integers left and right that represent the range [left, right], return the bitwise AND of all numbers in this range, inclusive.

 Example 1:
 Input: left = 5, right = 7
 Output: 4

 Example 2:
 Input: left = 0, right = 0
 Output: 0

 Example 3:
 Input: left = 1, right = 2147483647
 Output: 0
 */

func rangeBitwiseAnd(_ left: Int, _ right: Int) -> Int {
    var left = left
    var right = right
    var i = 0
    while left != right {
        left = left >> 1
        right = right >> 1
        i += 1
    }
    return left << i
}

let result = rangeBitwiseAnd(5, 7) // 4
print(result)

let result1 = rangeBitwiseAnd(0, 0) // 0
print(result1)

let result2 = rangeBitwiseAnd(1, 2147483647) // 0
print(result2)
