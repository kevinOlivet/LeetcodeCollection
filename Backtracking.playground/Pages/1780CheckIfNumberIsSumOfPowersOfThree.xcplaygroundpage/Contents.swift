import Foundation

// NOT RECURSION NOR BACKTRACKING

/*
 https://leetcode.com/problems/check-if-number-is-a-sum-of-powers-of-three/description/
 1780. Check if Number is a Sum of Powers of Three

 Given an integer n, return true if it is possible to represent n as the sum of distinct powers of three. Otherwise, return false.

 An integer y is a power of three if there exists an integer x such that y == 3x.

 Example 1:
 Input: n = 12
 Output: true
 Explanation: 12 = 31 + 32

 Example 2:
 Input: n = 91
 Output: true
 Explanation: 91 = 30 + 32 + 34

 Example 3:
 Input: n = 21
 Output: false
 */

func checkPowersOfThree(_ n: Int) -> Bool {

    var n = n
    while n > 0 {
        if n % 3 == 2 { return false }
        n /= 3
    }
    return true
}

let result = checkPowersOfThree(12) // true
print(result)

let result1 = checkPowersOfThree(91) // true
print(result1)

let result2 = checkPowersOfThree(21) // false
print(result2)
