import Foundation

/*
 ## 67. Add Binary
 https://leetcode.com/problems/add-binary/description/?envType=study-plan-v2&envId=top-interview-150

 Given two binary strings a and b, return their sum as a binary string.

 Example 1:
 Input: a = "11", b = "1"
 Output: "100"

 Example 2:
 Input: a = "1010", b = "1011"
 Output: "10101"

 Constraints:
 1 <= a.length, b.length <= 104
 a and b consist only of '0' or '1' characters.
 Each string does not contain leading zeros except for the zero itself.
 */

func addBinary(_ a: String, _ b: String) -> String {
    var result = ""
    var carry = 0
    let a = Array(a.reversed())
    let b = Array(b.reversed())

    for i in 0..<max(a.count, b.count) {
        let digitA = i < a.count ? a[i].wholeNumberValue! : 0
        let digitB = i < b.count ? b[i].wholeNumberValue! : 0

        let total = digitA + digitB + carry
        let char = String(total % 2)
        result = char + result
        carry = total / 2
    }

    return carry == 1 ? "1" + result : result
}

let result = addBinary("11", "1") // "100
print(result)

let result1 = addBinary("1010", "1011") // "10101"
print(result1)
