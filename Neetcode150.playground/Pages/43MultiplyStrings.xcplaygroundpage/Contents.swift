import Foundation

/*
 ## 43. Multiply Strings
 https://leetcode.com/problems/multiply-strings/description/

 Given two non-negative integers num1 and num2 represented as strings, return the product of num1 and num2, also represented as a string.

 Note: You must not use any built-in BigInteger library or convert the inputs to integer directly.

 Example 1:
 Input: num1 = "2", num2 = "3"
 Output: "6"

 Example 2:
 Input: num1 = "123", num2 = "456"
 Output: "56088"
 */

func multiply(_ num1: String, _ num2: String) -> String {

    if [num1, num2].contains("0") { return "0" }

    var result = Array(repeating: 0,
                       count: num1.count + num2.count)

    let num1 = Array(num1.reversed())
    let num2 = Array(num2.reversed())

    for i1 in 0..<num1.count {
        for i2 in 0..<num2.count {
            let digit = Int(String(num1[i1]))! *
                        Int(String(num2[i2]))!

            result[i1 + i2] += digit
            result[i1 + i2 + 1] += (result[i1 + i2] / 10)
            result[i1 + i2] = result[i1 + i2] % 10
        }
    }

    result.reverse()
    var begin = 0
    while begin < result.count && result[begin] == 0 {
        begin += 1
    }

    return result[begin...].map { String($0) }.joined()
}

let result1 = multiply("2", "3") // "6"
print(result1)

let result2 = multiply("123", "456") // "56088"
print(result2)

let result3 = multiply("123", "0") // "0"
print(result3)
