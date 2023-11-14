import Foundation

/*
 140. Word Break II
 https://leetcode.com/problems/word-break-ii/description/

 // DOESN'T WORK YET

 Given a string s and a dictionary of strings wordDict, add spaces in s to construct a sentence where each word is a valid dictionary word. Return all such possible sentences in any order.

 Note that the same word in the dictionary may be reused multiple times in the segmentation.

 Example 1:
 Input: s = "catsanddog", wordDict = ["cat","cats","and","sand","dog"]
 Output: ["cats and dog","cat sand dog"]

 Example 2:
 Input: s = "pineapplepenapple", wordDict = ["apple","pen","applepen","pine","pineapple"]
 Output: ["pine apple pen apple","pineapple pen apple","pine applepen apple"]
 Explanation: Note that you are allowed to reuse a dictionary word.

 Example 3:
 Input: s = "catsandog", wordDict = ["cats","dog","sand","and","cat"]
 Output: []
 */

func wordBreak(_ s: String, _ wordDict: [String]) -> [String] {
    let s = Array(s)
    var dp = Array(repeating: false, count: s.count + 1)
    dp[s.count] = true

    var result = [String]()

    for i in (0..<s.count).reversed() {
        var current = ""
        for w in wordDict {
            if (i + w.count) <= s.count && String(s[i..<(i+w.count)]) == w {
                dp[i] = dp[i + w.count]
            }
            if dp[i] {
                current.append(" " + String(s[i..<(i+w.count)]))
                break
            }
        }
        if !current.isEmpty {
            result.append(current)
        }
    }
    return result
}

let result = wordBreak("catsanddog", ["cat","cats","and","sand","dog"]) // ["cats and dog","cat sand dog"]
print(result)

let result1 = wordBreak("pineapplepenapple", ["apple","pen","applepen","pine","pineapple"]) // ["pine apple pen apple","pineapple pen apple","pine applepen apple"]
print(result1)

let result2 = wordBreak("catsandog", ["cats","dog","sand","and","cat"]) // []
print(result2)
