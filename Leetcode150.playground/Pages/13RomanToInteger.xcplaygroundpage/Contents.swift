import Foundation

/*
 ## 13. Roman to Integer
 https://leetcode.com/problems/roman-to-integer/description/?envType=study-plan-v2&envId=top-interview-150

 Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

 Symbol       Value
 I             1
 V             5
 X             10
 L             50
 C             100
 D             500
 M             1000
 For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

 Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

 I can be placed before V (5) and X (10) to make 4 and 9.
 X can be placed before L (50) and C (100) to make 40 and 90.
 C can be placed before D (500) and M (1000) to make 400 and 900.
 Given a roman numeral, convert it to an integer.

 Example 1:
 Input: s = "III"
 Output: 3
 Explanation: III = 3.

 Example 2:
 Input: s = "LVIII"
 Output: 58
 Explanation: L = 50, V= 5, III = 3.

 Example 3:
 Input: s = "MCMXCIV"
 Output: 1994
 Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
 */

func romanToInt(_ s: String) -> Int {
    let s = Array(s)
    let dict: [Character: Int] = [
        "I": 1, "V": 5, "X": 10, "L": 50,
        "C": 100, "D": 500, "M": 1000
    ]

    var result = 0
    for i in 0..<s.count {
        if i + 1 < s.count && dict[s[i]]! < dict[s[i + 1]]! {
            result -= dict[s[i]]!
        } else {
            result += dict[s[i]]!
        }
    }
    return result
}

let result = romanToInt("III") // 3
print(result)

let result1 = romanToInt("LVIII") // 58
print(result1)

let result2 = romanToInt("MCMXCIV") // 1994
print(result2)
