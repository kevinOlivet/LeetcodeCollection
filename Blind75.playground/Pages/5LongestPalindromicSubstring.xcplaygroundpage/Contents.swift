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
    var result = [Character]()

    for i in 0..<s.count {
        // odd length palindrome
        var left = i
        var right = i

        while left >= 0 && right < s.count && s[left] == s[right] {
            if (right - left + 1) > result.count {
                result = Array(s[left...right])
            }
            left -= 1
            right += 1
        }

        // even length palindrome
        left = i
        right = i + 1

        while left >= 0 && right < s.count && s[left] == s[right] {
            if (right - left + 1) > result.count {
                result = Array(s[left...right])
            }
            left -= 1
            right += 1
        }
    }
    return String(result)
}

let result = longestPalindrome("babad") // "bab"
print(result)

let result1 = longestPalindrome("cbbd") // "bb"
print(result1)

let result2 = longestPalindrome("ac") // "a"
print(result2)

let result3 = longestPalindrome("abb") // "bb"
print(result3)
