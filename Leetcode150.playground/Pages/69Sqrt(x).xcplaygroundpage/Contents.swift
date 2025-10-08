import Foundation

/*
 ## 69. Sqrt(x)
 https://leetcode.com/problems/sqrtx/description/?envType=study-plan-v2&envId=top-interview-150

 Given a non-negative integer x, return the square root of x rounded down to the nearest integer. The returned integer should be non-negative as well.

 You must not use any built-in exponent function or operator.

 For example, do not use pow(x, 0.5) in c++ or x ** 0.5 in python.

 Example 1:
 Input: x = 4
 Output: 2
 Explanation: The square root of 4 is 2, so we return 2.

 Example 2:
 Input: x = 8
 Output: 2
 Explanation: The square root of 8 is 2.82842..., and since we round it down to the nearest integer, 2 is returned.
 */

func mySqrt(_ x: Int) -> Int {
    var l = 0
    var r = x
    var result = 0
    while l <= r {
        let m = ((r-l)/2)+l
        if m * m < x {
            result = m
            l = m + 1
        } else if m * m > x {
            r = m - 1
        } else {
            return m
        }
    }
    return result
}

let result = sqrt(4) // 2
print(result)

let result1 = sqrt(8) // 2
print(result1)
