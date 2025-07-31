import Foundation

/*
 ## 472. Concatenated Words
 https://leetcode.com/problems/concatenated-words/description/

 Given an array of strings words (without duplicates), return all the concatenated words in the given list of words.

 A concatenated word is defined as a string that is comprised entirely of at least two shorter words (not necessarily distinct) in the given array.

 Example 1:
 Input: words = ["cat","cats","catsdogcats","dog","dogcatsdog","hippopotamuses","rat","ratcatdogcat"]
 Output: ["catsdogcats","dogcatsdog","ratcatdogcat"]
 Explanation: "catsdogcats" can be concatenated by "cats", "dog" and "cats";
 "dogcatsdog" can be concatenated by "dog", "cats" and "dog";
 "ratcatdogcat" can be concatenated by "rat", "cat", "dog" and "cat".

 Example 2:
 Input: words = ["cat","dog","catdog"]
 Output: ["catdog"]

 Constraints:
 1 <= words.length <= 104
 1 <= words[i].length <= 30
 words[i] consists of only lowercase English letters.
 All the strings of words are unique.
 1 <= sum(words[i].length) <= 105
 */

func findAllConcatenatedWordsInADict(_ words: [String]) -> [String] {
    let words = Set(words)
    var dp = [String: Bool]

    func dfs(word: String) -> Bool {
        if let found = dp[word] { return found }
        for i in 1..<word.count {
            let prefix = word[..<i]
            let suffix = word[i...]
            if ((words.contains(prefix && words.contains(suffix))) ||
                (words.contains(prefix && dfs(word: suffix)))) {
                dp[word] = true
                return true
            }
        }
        dp[word] = false
        return false
    }

    var result = [String]()
    for w in words {
        if dfs(word: w) { result.append(w) }
    }
    return result
}

let result = findAllConcatenatedWordsInADict(["cat","cats","catsdogcats","dog","dogcatsdog","hippopotamuses","rat","ratcatdogcat"])
print(result) // ["catsdogcats","dogcatsdog","ratcatdogcat"]

let result1 = findAllConcatenatedWordsInADict(["cat","dog","catdog"])
print(result1) // ["catdog"]
