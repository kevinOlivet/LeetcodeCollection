import Foundation

/*
 ## 269. Alien Dictionary
 https://neetcode.io/problems/foreign-dictionary
 NOTE: Leetcode requires subscription so this links to Neetcode website
 Topological Sort

 There is a foreign language which uses the latin alphabet, but the order among letters is not "a", "b", "c" ... "z" as in English.

 You receive a list of non-empty strings words from the dictionary, where the words are sorted lexicographically based on the rules of this new language.

 Derive the order of letters in this language. If the order is invalid, return an empty string. If there are multiple valid order of letters, return any of them.

 A string a is lexicographically smaller than a string b if either of the following is true:

 The first letter where they differ is smaller in a than in b.
 There is no index i such that a[i] != b[i] and a.length < b.length.

 Example 1:
 Input: ["z","o"]
 Output: "zo"
 Explanation:
 From "z" and "o", we know 'z' < 'o', so return "zo".

 Example 2:
 Input: ["hrn","hrf","er","enn","rfnn"]
 Output: "hernf"
 Explanation:
 from "hrn" and "hrf", we know 'n' < 'f'
 from "hrf" and "er", we know 'h' < 'e'
 from "er" and "enn", we know get 'r' < 'n'
 from "enn" and "rfnn" we know 'e'<'r'
 so one possibile solution is "hernf"
 */

func foreignDictionary(_ words: [String]) -> String {
    var adj = [Character: Set<Character>]()
    for w in words {
        for c in w {
            adj[c] = []
        }
    }
    for i in 0..<words.count - 1 {
        let w1 = Array(words[i])
        let w2 = Array(words[i + 1])
        let minLen = min(w1.count, w2.count)
        if w1.count > w2.count && w1[..<minLen] == w2[..<minLen] {
            return "" // Invalid ordering ie. apes before ape
        }
        for j in 0..<minLen {
            let w1Char = w1[j];  let w2Char = w2[j]
            if w1Char != w2Char {
                // Char in word2 comes after char in word1
                adj[w1Char]!.insert(w2Char)
                break // Don't need to see next chars if not equal
            }
        }
    }
    var cycle = Set<Character>()
    var visited = Set<Character>()
    var result = [Character]() // will reverse
    func dfs(_ c: Character) -> Bool { // postOrder dfs
        if cycle.contains(c) { return false }
        if visited.contains(c) { return true }
        cycle.insert(c)
        for nei in adj[c] ?? [] {
            if !dfs(nei) { return false }
        }
        cycle.remove(c)
        visited.insert(c)
        result.append(c)
        return true
    }
    for c in adj.keys { if !dfs(c) {  return "" } }
    return String(result.reversed())
}

let result = foreignDictionary(["z","o"]) // "zo"
print(result)

let result1 = foreignDictionary(["hrn","hrf","er","enn","rfnn"]) // "hernf"
print(result1)

let result2 = foreignDictionary(["wrt", "wrf", "er", "ett", "rftt"]) // "wertf"
print(result2)

let result3 = foreignDictionary(["z", "z"]) // "z"
print(result3)

let result4 = foreignDictionary(["aba"]) // "ab"
print(result4)
