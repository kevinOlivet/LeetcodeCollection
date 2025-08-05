import Foundation

/*
 ## 290. Word Pattern
 https://leetcode.com/problems/word-pattern/description/?envType=study-plan-v2&envId=top-interview-150

 Given a pattern and a string s, find if s follows the same pattern.

 Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in s. Specifically:

 Each letter in pattern maps to exactly one unique word in s.
 Each unique word in s maps to exactly one letter in pattern.
 No two letters map to the same word, and no two words map to the same letter.

 Example 1:
 Input: pattern = "abba", s = "dog cat cat dog"
 Output: true
 Explanation:
 The bijection can be established as:
 'a' maps to "dog".
 'b' maps to "cat".

 Example 2:
 Input: pattern = "abba", s = "dog cat cat fish"
 Output: false

 Example 3:
 Input: pattern = "aaaa", s = "dog cat cat dog"
 Output: false
 */

func wordPattern(_ pattern: String, _ s: String) -> Bool {
    let s = s.components(separatedBy: " ")
    if pattern.count != s.count { return false }
    var charToWord = [Character: String]()
    var wordToChar = [String: Character]()
    for (c, w) in zip(pattern, s) {
        if charToWord[c] != nil && charToWord[c]! != w {
            return false
        }
        if wordToChar[w] != nil && wordToChar[w]! != c {
            return false
        }
        charToWord[c] = w
        wordToChar[w] = c
    }
    return true
}

let result = wordPattern("abba", "dog cat cat dog") // true
print(result)

let result1 = wordPattern("abba", "dog cat cat fish") // false
print(result1)

let result2 = wordPattern("aaaa", "dog cat cat dog") // false
print(result2)
