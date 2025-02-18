import Foundation

/*
 ## 211. Design Add and Search Words Data Structure
 https://leetcode.com/problems/design-add-and-search-words-data-structure/description/

 Design a data structure that supports adding new words and finding if a string matches any previously added string.

 Implement the WordDictionary class:

 WordDictionary() Initializes the object.
 void addWord(word) Adds word to the data structure, it can be matched later.
 bool search(word) Returns true if there is any string in the data structure that matches word or false otherwise. word may contain dots '.' where dots can be matched with any letter.

 Example:

 Input
 ["WordDictionary","addWord","addWord","addWord","search","search","search","search"]
 [[],["bad"],["dad"],["mad"],["pad"],["bad"],[".ad"],["b.."]]
 Output
 [null,null,null,null,false,true,true,true]

 Explanation
 WordDictionary wordDictionary = new WordDictionary();
 wordDictionary.addWord("bad");
 wordDictionary.addWord("dad");
 wordDictionary.addWord("mad");
 wordDictionary.search("pad"); // return False
 wordDictionary.search("bad"); // return True
 wordDictionary.search(".ad"); // return True
 wordDictionary.search("b.."); // return True
 */

class TrieNode {
    var children: [Character: TrieNode]!
    var endOfWord: Bool!

    init() {
        children = [Character: TrieNode]()
        endOfWord = false
    }
}

class WordDictionary {
    var root: TrieNode!
    init() {
        root = TrieNode()
    }

    func addWord(_ word: String) {
        var current = root!
        for c in word {
            if current.children[c] == nil {
                current.children[c] = TrieNode()
            }
            current = current.children[c]!
        }
        current.endOfWord = true
    }

    func search(_ word: String) -> Bool {
        let word = Array(word)
        func dfs(j: Int, node: TrieNode?) -> Bool {
            var current = node!
            for i in j..<word.count {
                let c = word[i]
                if c == "." {
                    for child in current.children.values {
                        if dfs(j: i + 1, node: child) {
                            return true
                        }
                    }
                    return false
                } else {
                    if current.children[c] == nil {
                        return false
                    }
                    current = current.children[c]!
                }
            }
            return current.endOfWord
        }
        return dfs(j: 0, node: root)
    }
}
