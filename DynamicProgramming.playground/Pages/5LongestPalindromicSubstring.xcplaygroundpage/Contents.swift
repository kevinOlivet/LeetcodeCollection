import Foundation

/*
 https://leetcode.com/problems/longest-palindromic-substring/description/
 5. Longest Palindromic Substring

 Given a string s, return the longest
 palindromic

 substring
  in s.

 Example 1:
 Input: s = "babad"
 Output: "bab"
 Explanation: "aba" is also a valid answer.

 Example 2:
 Input: s = "cbbd"
 Output: "bb"
 */

// Better solution below
func longestPalindrome(_ s: String) -> String {
    let s = Array(s)
    var result = ""
    var resultLength = 0

    for i in 0..<s.count {
        // odd length

        var l = i
        var r = i

        while l >= 0 && r < s.count && s[l] == s[r] {
            if (r - l + 1) > resultLength {
                result = String(s[l..<(r + 1)])
                resultLength = r - l + 1
            }
            l -= 1
            r += 1
        }

        // even length
        l = i
        r = i + 1
        while l >= 0 && r < s.count && s[l] == s[r] {
            if r - l + 1 > resultLength {
                result = String(s[l..<(r + 1)])
                resultLength = r - l + 1
            }
            l -= 1
            r += 1
        }
    }
    return result
}

let result = longestPalindrome("babad") // "bab"
print(result)

let result1 = longestPalindrome("cbbd") // bb
print(result1)

// Better solution
func longestPalindrome2(_ s: String) -> String {
    guard !s.isEmpty else { return "" }
    let sArray = Array(s)

    var aPointer = 0
    var bPointer = 0

    for i in 0..<sArray.count {
        let len1 = checkIsPalindrome(s: sArray, left: i, right: i)
        let len2 = checkIsPalindrome(s: sArray, left: i, right: i + 1)
        let len = max(len1, len2)

        if len > (bPointer - aPointer) {
            aPointer = i - ((len - 1) / 2)
            bPointer = i + (len / 2)
        }
    }

    return String(sArray[aPointer...bPointer])
}

func checkIsPalindrome(s: [Character], left: Int, right: Int) -> Int {
    if left > right { return 0 }
    var left = left
    var right = right

    while left >= 0 && right < s.count && s[left] == s[right] {
        left -= 1
        right += 1
    }
    return right - left - 1
}
