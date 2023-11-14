import Foundation

/*
 44. Wildcard Matching
 https://leetcode.com/problems/wildcard-matching/description/

 Given an input string (s) and a pattern (p), implement wildcard pattern matching with support for '?' and '*' where:

 '?' Matches any single character.
 '*' Matches any sequence of characters (including the empty sequence).
 The matching should cover the entire input string (not partial).

 Example 1:
 Input: s = "aa", p = "a"
 Output: false
 Explanation: "a" does not match the entire string "aa".

 Example 2:
 Input: s = "aa", p = "*"
 Output: true
 Explanation: '*' matches any sequence.

 Example 3:
 Input: s = "cb", p = "?a"
 Output: false
 Explanation: '?' matches 'c', but the second letter is 'a', which does not match 'b'.
 */

/// WORKS
func isMatch(_ s: String, _ p: String) -> Bool {
var s = Array(s)
    var p = Array(p)
    var dp = [[Bool]](repeating: [Bool](repeating: false, count: s.count+1), count: p.count+1)

    for i in 0...p.count{
        for j in 0...s.count {
            if i == 0 && j == 0 {
                dp[i][j] = true
            } else if i == 0 {
                dp[i][j] = false
            } else if j == 0 {
                if p[i-1] == "*" {
                    dp[i][j] = dp[i-1][j]
                } else {
                    dp[i][j] = false
                }
            } else {
                if p[i-1] == "*" {
                    dp[i][j] = dp[i][j-1] || dp[i-1][j-1] || dp[i-1][j]
                } else if p[i-1] == s[j-1] || p[i-1] == "?" {
                    dp[i][j] = dp[i-1][j-1]
                } else {
                    dp[i][j] = false
                }
            }
        }
    }
    return dp[p.count][s.count]
}

let result = isMatch("aa", "a") // false
print(result)

let result1 = isMatch("aa", "*") // true
print(result1)

let result2 = isMatch("cb", "?*") // true
print(result2)

// Failed test cases
let result3 = isMatch("acdcb", "a*c?b") // false
print(result3)
