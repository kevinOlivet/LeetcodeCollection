import Foundation

/*
 ## 1143. Longest Common Subsequence
 https://leetcode.com/problems/longest-common-subsequence/description/
 15 Dynamic Programming Pattern

 Given two strings text1 and text2, return the length of their longest common subsequence. If there is no common subsequence, return 0.

 A subsequence of a string is a new string generated from the original string with some characters (can be none) deleted without changing the relative order of the remaining characters.

 For example, "ace" is a subsequence of "abcde".
 A common subsequence of two strings is a subsequence that is common to both strings.

 Example 1:
 Input: text1 = "abcde", text2 = "ace"
 Output: 3
 Explanation: The longest common subsequence is "ace" and its length is 3.

 Example 2:
 Input: text1 = "abc", text2 = "abc"
 Output: 3
 Explanation: The longest common subsequence is "abc" and its length is 3.

 Example 3:
 Input: text1 = "abc", text2 = "def"
 Output: 0
 Explanation: There is no such common subsequence, so the result is 0.
 */

func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
    let text1 = Array(text1)
    let text2 = Array(text2)
    var dp = Array(repeating: Array(repeating: 0, count: text2.count + 1), count: text1.count + 1)

    for r in (0..<text1.count).reversed() {
        for c in (0..<text2.count).reversed() {
            if text1[r] == text2[c] {
                dp[r][c] = 1 + dp[r + 1][c + 1]
            } else {
                dp[r][c] = max(dp[r][c + 1], dp[r + 1][c])
            }
        }
    }
    return dp[0][0]
}

let result = longestCommonSubsequence("abcde", "ace") // 3
print(result)

let result1 = longestCommonSubsequence("abc", "abc") // 3
print(result1)

let result2 = longestCommonSubsequence("abc", "def") // 0
print(result2)
