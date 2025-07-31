import Foundation

/*
 ## 6. Zigzag Conversion
 https://leetcode.com/problems/zigzag-conversion/description/?envType=study-plan-v2&envId=top-interview-150

 The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

 P   A   H   N
 A P L S I I G
 Y   I   R
 And then read line by line: "PAHNAPLSIIGYIR"

 Write the code that will take a string and make this conversion given a number of rows:

 string convert(string s, int numRows);

 Example 1:
 Input: s = "PAYPALISHIRING", numRows = 3
 Output: "PAHNAPLSIIGYIR"

 Example 2:
 Input: s = "PAYPALISHIRING", numRows = 4
 Output: "PINALSIGYAHRPI"
 Explanation:
 P     I    N
 A   L S  I G
 Y A   H R
 P     I

 Example 3:
 Input: s = "A", numRows = 1
 Output: "A"
 */

func convert(_ s: String, _ numRows: Int) -> String {
    if numRows == 1 { return s }
    let s = Array(s)
    var result = [Character]()
    for r in 0..<numRows {
        let increment = 2 * (numRows - 1)
        for i in stride(from: r, to: s.count, by: increment) {
            result.append(s[i])
            if (r > 0 && r < numRows - 1 &&
                i + increment - 2 * r < s.count) {
                result.append(s[i + increment - 2 * r])
            }
        }
    }
    return String(result)
}

let result = convert("PAYPALISHIRING", 3) // "PAHNAPLSIIGYIR"
print(result)

let result1 = convert("PAYPALISHIRING", 4) // "PINALSIGYAHRPI"
print(result1)

let result2 = convert("A", 1) // "A"
print(result2)
