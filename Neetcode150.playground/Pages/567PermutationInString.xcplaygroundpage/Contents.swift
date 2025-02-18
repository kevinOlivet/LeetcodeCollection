import Foundation

/*
 ## 567. Permutation in String
 https://leetcode.com/problems/permutation-in-string/description/

 Given two strings s1 and s2, return true if s2 contains a
 permutation
  of s1, or false otherwise.

 In other words, return true if one of s1's permutations is the substring of s2.

 Example 1:
 Input: s1 = "ab", s2 = "eidbaooo"
 Output: true
 Explanation: s2 contains one permutation of s1 ("ba").

 Example 2:
 Input: s1 = "ab", s2 = "eidboaoo"
 Output: false
 */

func checkInclusion(_ s1: String, _ s2: String) -> Bool {
    if s1.count > s2.count { return false }
    let s1 = Array(s1)
    let s2 = Array(s2)
    var s1Counts = [Character: Int]()
    var s2Counts = [Character: Int]()

    for i in 0..<s1.count {
        s1Counts[s1[i], default: 0] += 1
        s2Counts[s2[i], default: 0] += 1
    }
    var l = 1 // advanced by 1 before loop starts
    var r = s1.count // idem
    while r < s2.count {
        if s1Counts == s2Counts { return true }
        let c = s2[r]
        s2Counts[c, default: 0] += 1
        let prevC = s2[l - 1]
        s2Counts[prevC]! -= 1
        if s2Counts[prevC]! == 0 { s2Counts[prevC] = nil }
        l += 1
        r += 1
    }
    return s1Counts == s2Counts
}

var result = checkInclusion("ab", "eidbaooo") // true
print(result)

var result1 = checkInclusion("ab", "eidboaoo") // false
print(result1)
