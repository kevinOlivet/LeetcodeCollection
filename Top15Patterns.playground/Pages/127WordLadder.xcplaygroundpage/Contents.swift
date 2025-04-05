import Foundation

/*
 ## 127. Word Ladder
 https://leetcode.com/problems/word-ladder/description/

 A transformation sequence from word beginWord to word endWord using a dictionary wordList is a sequence of words beginWord -> s1 -> s2 -> ... -> sk such that:

 Every adjacent pair of words differs by a single letter.
 Every si for 1 <= i <= k is in wordList. Note that beginWord does not need to be in wordList.
 sk == endWord
 Given two words, beginWord and endWord, and a dictionary wordList, return the number of words in the shortest transformation sequence from beginWord to endWord, or 0 if no such sequence exists.

 Example 1:
 Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log","cog"]
 Output: 5
 Explanation: One shortest transformation sequence is "hit" -> "hot" -> "dot" -> "dog" -> cog", which is 5 words long.

 Example 2:
 Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log"]
 Output: 0
 Explanation: The endWord "cog" is not in wordList, therefore there is no valid transformation sequence.
 */

func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
    if !wordList.contains(endWord) { return 0 }
    let wordList = wordList + [beginWord]

    var adj = [String: [String]]()

    for word in wordList {
        let word = Array(word)
        for j in 0..<word.count {
            let pattern: String = word[..<j] + "*" + word[(j + 1)...]
            adj[pattern, default: []].append(String(word))
        }
    }
    var visited: Set<String> = [beginWord]
    var queue = [beginWord]
    var result = 1

    while !queue.isEmpty {
        for i in 0..<queue.count {
            let word = queue.removeFirst()
            if word == endWord {
                return result
            }
            let wordArray = Array(word)
            for j in 0..<wordArray.count {
                let pattern: String = wordArray[..<j] + "*" + wordArray[(j + 1)...]
                for nei in adj[pattern] ?? [] {
                    if visited.contains(nei) { continue }
                    visited.insert(nei)
                    queue.append(nei)
                }
            }
        }
        result += 1
    }
    return 0
}

let result = ladderLength("hit", "cog", ["hot","dot","dog","lot","log","cog"]) // 5
print(result)

let result1 = ladderLength("hit", "cog", ["hot","dot","dog","lot","log"]) // 0
print(result1)
