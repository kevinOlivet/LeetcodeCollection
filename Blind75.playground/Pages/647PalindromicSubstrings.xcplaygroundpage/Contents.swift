import Foundation

/*
 ## 647. Palindromic Substrings
 https://leetcode.com/problems/palindromic-substrings/description/

 Given a string s, return the number of palindromic substrings in it.

 A string is a palindrome when it reads the same backward as forward.

 A substring is a contiguous sequence of characters within the string.

 Example 1:
 Input: s = "abc"
 Output: 3
 Explanation: Three palindromic strings: "a", "b", "c".

 Example 2:
 Input: s = "aaa"
 Output: 6
 Explanation: Six palindromic strings: "a", "a", "a", "aa", "aa", "aaa".
 */

func countSubstrings(_ s: String) -> Int {
    let s = Array(s)
    var result = 0

    for i in 0..<s.count {
        // odd
        countPali(i, i)
        // even
        countPali(i, i + 1)
    }
    func countPali(_ l: Int, _ r: Int) {
        var l = l
        var r = r
        while l >= 0 && r < s.count && s[l] == s[r] {
            result += 1
            l -= 1
            r += 1
        }
    }
    return result
}

let result = countSubstrings("abc") // 3
print(result)

let result1 = countSubstrings("aaa") // 6
print(result1)
