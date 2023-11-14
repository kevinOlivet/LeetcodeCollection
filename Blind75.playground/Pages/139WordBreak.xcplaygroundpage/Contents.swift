import Foundation

/*
 139. Word Break
 https://leetcode.com/problems/word-break/

 // Bottom up dynamic programming

 Given a string s and a dictionary of strings wordDict, return true if s can be segmented into a space-separated sequence of one or more dictionary words.

 Note that the same word in the dictionary may be reused multiple times in the segmentation.

 Example 1:
 Input: s = "leetcode", wordDict = ["leet","code"]
 Output: true
 Explanation: Return true because "leetcode" can be segmented as "leet code".

 Example 2:
 Input: s = "applepenapple", wordDict = ["apple","pen"]
 Output: true
 Explanation: Return true because "applepenapple" can be segmented as "apple pen apple".
 Note that you are allowed to reuse a dictionary word.

 Example 3:
 Input: s = "catsandog", wordDict = ["cats","dog","sand","and","cat"]
 Output: false
 */

func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
    let s = Array(s)
    var dp = Array(repeating: false, count: s.count + 1)
    dp[s.count] = true

    for i in (0..<s.count).reversed() {
        for w in wordDict {
            if (i + w.count) <= s.count && String(s[i..<(i+w.count)]) == w {
                dp[i] = dp[i + w.count]
            }
            if dp[i] {
                break
            }
        }
    }
    return dp[0]
}

let result = wordBreak("leetcode", ["leet","code"])
print(result)

let result1 = wordBreak("applepenapple", ["apple","pen"])
print(result1)

let result2 = wordBreak("catsandog", ["cats","dog","sand","and","cat"])
print(result2)

let result3 = wordBreak("electricity", ["electricity", "mama", "city"])
print(result3)
