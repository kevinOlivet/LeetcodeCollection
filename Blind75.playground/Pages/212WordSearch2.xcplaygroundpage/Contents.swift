import Foundation

/*
 ## 212. Word Search 2
 https://leetcode.com/problems/word-search-ii/description/

 Given an m x n board of characters and a list of strings words, return all words on the board.

 Each word must be constructed from letters of sequentially adjacent cells, where adjacent cells are horizontally or vertically neighboring. The same letter cell may not be used more than once in a word.

 Example 1:
 Input: board = [["o","a","a","n"],["e","t","a","e"],["i","h","k","r"],["i","f","l","v"]], words = ["oath","pea","eat","rain"]
 Output: ["eat","oath"]

 Example 2:
 Input: board = [["a","b"],["c","d"]], words = ["abcb"]
 Output: []
 */

class TrieNode {
    var children: [Character: TrieNode]!
    var endOfWord: Bool!
    init() {
        children = [Character: TrieNode]()
        endOfWord = false
    }
    func addWord(_ word: String) {
        var current = self
        for c in word {
            if current.children[c] == nil {
                current.children[c] = TrieNode()
            }
            current = current.children[c]!
        }
        current.endOfWord = true
    }
}

func findWords(_ board: [[Character]], _ words: [String]) -> [String] {
    var root = TrieNode()
    for w in words {
        root.addWord(w)
    }
    var result = Set<String>()
    var set = Set<[Int]>()
    func dfs(r: Int, c: Int, node: TrieNode, word: String) {
        if (r < 0 || r == board.count) ||
            (c < 0 || c == board[0].count) ||
            !node.children.keys.contains(board[r][c]) ||
            set.contains([r, c]) {
            return
        }
        set.insert([r, c])
        let node = node.children[board[r][c]]!
        var word = word
        word.append(board[r][c])
        if node.endOfWord {
            result.insert(word)
        }
        dfs(r: r + 1, c: c, node: node, word: word)
        dfs(r: r - 1, c: c, node: node, word: word)
        dfs(r: r, c: c + 1, node: node, word: word)
        dfs(r: r, c: c - 1, node: node, word: word)
        set.remove([r, c])
    }
    for r in 0..<board.count {
        for c in 0..<board[0].count {
            dfs(r: r, c: c, node: root, word: "")
        }
    }
    return Array(result)
}
