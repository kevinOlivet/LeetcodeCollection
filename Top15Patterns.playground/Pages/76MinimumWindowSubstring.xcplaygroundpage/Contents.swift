import Foundation

/*
 ## 76. Minimum Window Substring
 https://leetcode.com/problems/minimum-window-substring/description/

 Given two strings s and t of lengths m and n respectively, return the minimum window
 substring
 of s such that every character in t (including duplicates) is included in the window. If there is no such substring, return the empty string "".

 The testcases will be generated such that the answer is unique.

 Example 1:
 Input: s = "ADOBECODEBANC", t = "ABC"
 Output: "BANC"
 Explanation: The minimum window substring "BANC" includes 'A', 'B', and 'C' from string t.

 Example 2:
 Input: s = "a", t = "a"
 Output: "a"
 Explanation: The entire string s is the minimum window.

 Example 3:
 Input: s = "a", t = "aa"
 Output: ""
 Explanation: Both 'a's from t must be included in the window.
 Since the largest window of s only has one 'a', return empty string.
 */

func minWindow(_ s: String, _ t: String) -> String {
    if t.isEmpty { return "" }
    let s = Array(s)
    let t = Array(t)

    var countT = [Character: Int]()
    var window = [Character: Int]()

    for c in t {
        countT[c] = countT[c, default: 0] + 1
    }

    var have = 0
    let need = countT.count

    var result = [-1, -1]
    var resultLength = Int.max
    var left = 0

    for right in 0..<s.count {
        let c = s[right]
        window[c, default: 0] += 1

        if let found = countT[c], window[c]! == found {
            have += 1
        }

        while have == need {
            // update our result
            if (right - left + 1) < resultLength {
                result = [left, right]
                resultLength = (right - left + 1)
            }
            // pop from the left of our window
            let prevC = s[left]
            window[prevC]! -= 1
            if let found = countT[prevC], window[s[left]]! < found {
                have -= 1
            }
            left += 1
        }
    }
    return resultLength == Int.max ? "" : String(s[result[0]...result[1]])
}

let result = minWindow("ADOBECODEBANC", "ABC") // BANC
print(result)

let result1 = minWindow("a", "t") // a
print(result1)

let result2 = minWindow("a", "aa") // ""
print(result2)
