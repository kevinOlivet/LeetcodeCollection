import Foundation

/*
 ## 5. Longest Palindromic Substring
 https://leetcode.com/problems/longest-palindromic-substring/description/

 Given a string s, return the longest palindromic substring in s.

 Example 1:
 Input: s = "babad"
 Output: "bab"
 Explanation: "aba" is also a valid answer.

 Example 2:
 Input: s = "cbbd"
 Output: "bb"
 */

func longestPalindrome(_ s: String) -> String {
    var s = Array(s)

    var result = ""
    var resultLength = 0

    for i in 0..<s.count {
        // odd length
        var left = i
        var right = i

        while left >= 0 && right < s.count && s[left] == s[right] {
            if (right - left + 1) > resultLength {
                result = String(s[left...right])
                resultLength = right - left + 1
            }
            left -= 1
            right += 1
        }

        // even length
        left = i
        right = i + 1

        while left >= 0 && right < s.count && s[left] == s[right] {
            if (right - left + 1) > resultLength {
                result = String(s[left...right])
                resultLength = right - left + 1
            }
            left -= 1
            right += 1
        }
    }
    return result
}

let result = longestPalindrome("babad") // "bab"
print(result)

let result1 = longestPalindrome("cbbd") // "bb"
print(result1)
