import Foundation

/*
 79. Word Search
 https://leetcode.com/problems/word-search/

 Given an m x n grid of characters board and a string word, return true if word exists in the grid.

 The word can be constructed from letters of sequentially adjacent cells, where adjacent cells are horizontally or vertically neighboring. The same letter cell may not be used more than once.

 Example 1:
 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCCED"
 Output: true

 Example 2:
 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "SEE"
 Output: true

 Example 3:
 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCB"
 Output: false
 */

func exist(_ board: [[Character]], _ word: String) -> Bool {
    var wordArray = Array(word)

    let rows = board.count
    let cols = board[0].count

    // Times out so reverse if it has fewer last than first
    var totalCount = (first: 0, last: 0)
    for i in 0..<rows {
        for j in 0..<cols {
            if board[i][j] == wordArray.first! {
                totalCount.first += 1
            }
            if board[i][j] == wordArray.last! {
                totalCount.last += 1
            }
        }
    }
    if totalCount.last < totalCount.first {
        wordArray = Array(word.reversed())
    }


    // Back to regular style
    var path = Set<String>()

    func dfs(r: Int, c: Int, i: Int) -> Bool {
        if i == word.count {
            return true
        }

        let stringRC = "\(r), \(c)"

        if r < 0 || c < 0 || r >= rows || c >= cols || board[r][c] != wordArray[i] || path.contains(stringRC) {
            return false
        }

        path.insert(stringRC)

        let result = (dfs(r: r + 1, c: c, i: i + 1) ||
                      dfs(r: r - 1, c: c, i: i + 1) ||
                      dfs(r: r, c: c + 1, i: i + 1) ||
                      dfs(r: r, c: c - 1, i: i + 1))

        path.remove(stringRC)
        return result
    }

    for r in 0..<rows {
        for c in 0..<cols {
            if dfs(r: r, c: c, i: 0) {
                return true
            }
        }
    }

    return false
}

exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "ABCCED") // true

exist([["A","A","A","A","A","A"],["A","A","A","A","A","A"],["A","A","A","A","A","A"],["A","A","A","A","A","A"],["A","A","A","A","A","B"],["A","A","A","A","B","A"]], "AAAAAAAAAAAAABB") // false
