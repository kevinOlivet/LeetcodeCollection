import Foundation

/*
 ## 28. Find the Index of the First Occurrence in a String
 https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/description/?envType=study-plan-v2&envId=top-interview-150

 Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

 Example 1:
 Input: haystack = "sadbutsad", needle = "sad"
 Output: 0
 Explanation: "sad" occurs at index 0 and 6.
 The first occurrence is at index 0, so we return 0.

 Example 2:
 Input: haystack = "leetcode", needle = "leeto"
 Output: -1
 Explanation: "leeto" did not occur in "leetcode", so we return -1.
 */

func strStr(_ haystack: String, _ needle: String) -> Int {
    let haystack = Array(haystack)
    var l = 0
    var r = needle.count - 1
    while r < haystack.count {
        if String(haystack[l...r]) == needle {
            return l
        }
        l += 1
        r += 1
    }
    return -1
}

let result = strStr("sadbutsad", "sad") // 0
print(result)

let result1 = strStr("leetcode", "leeto") // -1
print(result1)
