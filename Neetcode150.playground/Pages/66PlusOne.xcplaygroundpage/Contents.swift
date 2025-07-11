import Foundation

/*
 ## 66. Plus One
 https://leetcode.com/problems/plus-one/description/

 You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.

 Increment the large integer by one and return the resulting array of digits.

 Example 1:
 Input: digits = [1,2,3]
 Output: [1,2,4]
 Explanation: The array represents the integer 123.
 Incrementing by one gives 123 + 1 = 124.
 Thus, the result should be [1,2,4].

 Example 2:
 Input: digits = [4,3,2,1]
 Output: [4,3,2,2]
 Explanation: The array represents the integer 4321.
 Incrementing by one gives 4321 + 1 = 4322.
 Thus, the result should be [4,3,2,2].

 Example 3:
 Input: digits = [9]
 Output: [1,0]
 Explanation: The array represents the integer 9.
 Incrementing by one gives 9 + 1 = 10.
 Thus, the result should be [1,0].
 */

func plusOne(_ digits: [Int]) -> [Int] {

    var digits = Array(digits.reversed())
    var carry = 1
    var i = 0

    while carry != 0 {
        if i < digits.count {
            if digits[i] == 9 {
                digits[i] = 0
            } else {
                digits[i] += 1
                carry = 0
            }
        } else {
            digits.append(1)
            carry = 0
        }
        i += 1
    }
    return Array(digits.reversed())
}


let result = plusOne([1,2,3]) // [1,2,4]
print(result)

let result1 = plusOne([4,3,2,1]) // [4,3,2,2]
print(result1)

let result2 = plusOne([9]) // [1,0]
print(result2)
