import Foundation

/*
 ## 208. Implement Trie (Prefix Tree)
 https://leetcode.com/problems/implement-trie-prefix-tree/description/

 A trie (pronounced as "try") or prefix tree is a tree data structure used to efficiently store and retrieve keys in a dataset of strings. There are various applications of this data structure, such as autocomplete and spellchecker.

 Implement the Trie class:

 Trie() Initializes the trie object.
 void insert(String word) Inserts the string word into the trie.
 boolean search(String word) Returns true if the string word is in the trie (i.e., was inserted before), and false otherwise.
 boolean startsWith(String prefix) Returns true if there is a previously inserted string word that has the prefix prefix, and false otherwise.

 Example 1:
 Input
 ["Trie", "insert", "search", "search", "startsWith", "insert", "search"]
 [[], ["apple"], ["apple"], ["app"], ["app"], ["app"], ["app"]]
 Output
 [null, null, true, false, true, null, true]

 Explanation
 Trie trie = new Trie();
 trie.insert("apple");
 trie.search("apple");   // return True
 trie.search("app");     // return False
 trie.startsWith("app"); // return True
 trie.insert("app");
 trie.search("app");     // return True
 */

class TrieNode {
    var children: [Character: TrieNode]!
    var endOfWord: Bool!
    init() {
        children = [Character: TrieNode]()
        endOfWord = false
    }
}
class Trie {

    var root: TrieNode!

    init() {
        root = TrieNode()
    }

    func insert(_ word: String) {
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
        var current = root!
        for c in word {
            if current.children[c] == nil {
                return false
            }
            current = current.children[c]!
        }
        return current.endOfWord
    }

    func startsWith(_ prefix: String) -> Bool {
        var current = root!
        for c in prefix {
            if current.children[c] == nil {
                return false
            }
            current = current.children[c]!
        }
        return true
    }
}
