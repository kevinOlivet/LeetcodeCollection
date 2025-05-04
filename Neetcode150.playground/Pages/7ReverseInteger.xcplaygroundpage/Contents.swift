import Foundation

/*
 ## 7. Reverse Integer
 https://leetcode.com/problems/reverse-integer/description/

 Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

 Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

 Example 1:
 Input: x = 123
 Output: 321

 Example 2:
 Input: x = -123
 Output: -321

 Example 3:
 Input: x = 120
 Output: 21
 */

func reverse(_ x: Int) -> Int {

    var x = x
    var result: Int = 0

    while x != 0 {
        let digit = x % 10
        x /= 10

        if result > Int32.max / 10 ||
            result == Int32.max / 10 && digit >= Int32.max % 10 {
                return 0
        }
        if result < Int32.min / 10 ||
            result == Int32.min / 10 && digit <= Int32.min % 10 {
                return 0
        }

        result = result * 10 + digit

    }

    return result
}

let result = reverse(123) // 321
print(result)

let result1 = reverse(-123) // -321
print(result1)

let result2 = reverse(120) // 21
print(result2)
