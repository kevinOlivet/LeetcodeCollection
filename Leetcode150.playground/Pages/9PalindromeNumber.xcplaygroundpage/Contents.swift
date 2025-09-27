import Foundation

/*
 ## 9. Palindrome Number
 https://leetcode.com/problems/palindrome-number/description/?envType=study-plan-v2&envId=top-interview-150

 Given an integer x, return true if x is a palindrome, and false otherwise.
 Follow up: Could you solve it without converting the integer to a string?

 Example 1:
 Input: x = 121
 Output: true
 Explanation: 121 reads as 121 from left to right and from right to left.

 Example 2:
 Input: x = -121
 Output: false
 Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.

 Example 3:
 Input: x = 10
 Output: false
 Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 */

func isPalindrome(_ x: Int) -> Bool {
    if x < 0 { return false }
    var num = x
    var result = 0
    while num != 0 {
        let digit = num % 10
        result = result * 10 + digit
        num /= 10
    }
    return result == x
}

let result = isPalindrome(121) // true
print(result)

let result1 = isPalindrome(-121) // false
print(result1)

let result2 = isPalindrome(10) // false
print(result2)
