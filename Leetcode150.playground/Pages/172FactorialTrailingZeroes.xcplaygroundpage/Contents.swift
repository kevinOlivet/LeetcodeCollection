import Foundation

/*
 ## 172. Factorial Trailing Zeroes
 https://leetcode.com/problems/factorial-trailing-zeroes/description/?envType=study-plan-v2&envId=top-interview-150

 Given an integer n, return the number of trailing zeroes in n!.

 Note that n! = n * (n - 1) * (n - 2) * ... * 3 * 2 * 1.

 Example 1:
 Input: n = 3
 Output: 0
 Explanation: 3! = 6, no trailing zero.

 Example 2:
 Input: n = 5
 Output: 1
 Explanation: 5! = 120, one trailing zero.

 Example 3:
 Input: n = 0
 Output: 0

 Follow up: Could you write a solution that works in logarithmic time complexity?
 */

func trailingZeroes(_ n: Int) -> Int {
    var result = 0
    var n = n
    while n >= 5 {
        n /= 5
        result += n
    }
    return result
}

let result = trailingZeroes(3) // 0
print(result)

let result1 = trailingZeroes(5) // 1
print(result1)

let result2 = trailingZeroes(10) // 0
print(result2)
