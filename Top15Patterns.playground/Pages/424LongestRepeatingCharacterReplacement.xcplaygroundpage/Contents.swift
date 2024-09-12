import Foundation

/*
 ## 424. Longest Repeating Character Replacement
 https://leetcode.com/problems/longest-repeating-character-replacement/description/

 You are given a string s and an integer k. You can choose any character of the string and change it to any other uppercase English character. You can perform this operation at most k times.

 Return the length of the longest substring containing the same letter you can get after performing the above operations.

 Example 1:
 Input: s = "ABAB", k = 2
 Output: 4
 Explanation: Replace the two 'A's with two 'B's or vice versa.

 Example 2:
 Input: s = "AABABBA", k = 1
 Output: 4
 Explanation: Replace the one 'A' in the middle with 'B' and form "AABBBBA".
 The substring "BBBB" has the longest repeating letters, which is 4.
 There may exists other ways to achieve this answer too.
 */

func characterReplacement(_ s: String, _ k: Int) -> Int {
    let s = Array(s)
    var left = 0
    var right = 0
    var result = 0

    var countDict = [Character: Int]()

    while right < s.count {
        countDict[s[right], default: 0] += 1

        while ((right - left + 1) - (countDict.values.max() ?? 0)) > k {
            countDict[s[left], default: 0] -= 1
            left += 1
        }
        result = max(result, right - left + 1)

        right += 1
    }

    return result
}

let result = characterReplacement("ABAB", 2) // 4
print(result)

let result1 = characterReplacement("AABABBA", 1) // 4
print(result1)

