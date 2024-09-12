import Foundation

/*
 ## 3. Longest Substring Without Repeating Characters
 https://leetcode.com/problems/longest-substring-without-repeating-characters/description/

 Given a string s, find the length of the longest
 substring
  without repeating characters.

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
    var set = Set<Character>()
    let s = Array(s)
    var l = 0
    var r = 0
    var result = 0
    while r < s.count {
        while set.contains(s[r]) {
            set.remove(s[l])
            l += 1
        }
        set.insert(s[r])
        result = max(result, r - l + 1)
        r += 1
    }
    return result
}

let result = lengthOfLongestSubstring("abcabcbb") // abc = 3
print(result)

let result1 = lengthOfLongestSubstring("bbbbb") // b = 1
print(result1)

let result2 = lengthOfLongestSubstring("pwwkew") // wke = 3
print(result2)
