import Foundation

/*
 ## 3. Longest Substring Without Repeating Characters
 https://leetcode.com/problems/longest-substring-without-repeating-characters/description/

 Given a string s, find the length of the longest
 substring without repeating characters.

 Example 1:
 Input: s = "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.

 Example 2:
 Input: s = "bbbbb"
 Output: 1
 Explanation: The answer is "b", with the length of 1.

 Example 3:
 Input: s = "pwwkew"
 Output: 3
 Explanation: The answer is "wke", with the length of 3.

 Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
 */

func lengthOfLongestSubstring(_ s: String) -> Int {
    var s = Array(s)
    var charSet = Set<Character>()
    var left = 0
    var result = 0

    for right in 0..<s.count {
        while charSet.contains(s[right]) {
            charSet.remove(s[left])
            left += 1
        }
        charSet.insert(s[right])
        result = max(result, right - left + 1)
    }
    return result
}

let result = lengthOfLongestSubstring("abcabcbb") // 3
print(result)

let result1 = lengthOfLongestSubstring("bbbbb") // 1
print(result1)

let result2 = lengthOfLongestSubstring("pwwkew") // 3
print(result2)
