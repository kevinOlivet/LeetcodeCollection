import Foundation

/*
 91. Decode Ways
 https://leetcode.com/problems/decode-ways/description/

 A message containing letters from A-Z can be encoded into numbers using the following mapping:

 'A' -> "1"
 'B' -> "2"
 ...
 'Z' -> "26"
 To decode an encoded message, all the digits must be grouped then mapped back into letters using the reverse of the mapping above (there may be multiple ways). For example, "11106" can be mapped into:

 "AAJF" with the grouping (1 1 10 6)
 "KJF" with the grouping (11 10 6)
 Note that the grouping (1 11 06) is invalid because "06" cannot be mapped into 'F' since "6" is different from "06".

 Given a string s containing only digits, return the number of ways to decode it.

 The test cases are generated so that the answer fits in a 32-bit integer.

 Example 1:
 Input: s = "12"
 Output: 2
 Explanation: "12" could be decoded as "AB" (1 2) or "L" (12).

 Example 2:
 Input: s = "226"
 Output: 3
 Explanation: "226" could be decoded as "BZ" (2 26), "VF" (22 6), or "BBF" (2 2 6).

 Example 3:
 Input: s = "06"
 Output: 0
 Explanation: "06" cannot be mapped to "F" because of the leading zero ("6" is different from "06").
 */

// Bottom up Dynamic Programming method
func numDecodings2(_ s: String) -> Int {
    let s = Array(s)
    var dp = [s.count: 1]

    for i in (0..<s.count).reversed() {
        if s[i] == "0" {
            dp[i] = 0
        } else {
            dp[i] = dp[i + 1]
        }

        if (i + 1 < s.count) && (s[i] == "1" || s[i] == "2" && Array("0123456").contains(s[i + 1])) {
            dp[i]! += dp[i + 2]!
        }
        print(dp)
    }
    return dp[0] ?? 0
}

let result3 = numDecodings2("12") // 2
print(result3)

let result4 = numDecodings2("226") // 3
print(result4)

let result5 = numDecodings2("06") // 0
print(result5)

let result6 = numDecodings2("12321") // 6
print(result6)

// Recursive method
func numDecodings(_ s: String) -> Int {
    let s = Array(s)
    var dp = [s.count: 1]

    func dfs(i: Int) -> Int {
        if dp.keys.contains(i) {
            return dp[i]!
        }
        if s[i] == "0" {
            return 0
        }
        var result = dfs(i: i + 1)

        if (i + 1 < s.count) && (s[i] == "1" || s[i] == "2" && Array("123456").contains(s[i + 1])) {
            result += dfs(i: i + 2)
        }
        dp[i] = result
        return result
    }
    return dfs(i: 0)
}

let result = numDecodings("12") // 2
print(result)

let result1 = numDecodings("226") // 3
print(result1)

let result2 = numDecodings("06") // 0
print(result2)

let result7 = numDecodings("12321") // 6
print(result7)
