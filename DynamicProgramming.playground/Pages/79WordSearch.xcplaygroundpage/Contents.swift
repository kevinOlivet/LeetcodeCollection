import Foundation

    // MY DYNAMIC PROGRAMMING TRY DOESN'T WORK

/*
 https://leetcode.com/problems/word-search/
 79. Word Search

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

    var dp = Array(repeating: Array(repeating: false, count: board.count), count: board[0].count)
    var word = Array(word)
    var currentIndex = 0
    var path = Set<[Int]>()

    for i in 0..<board.count {
        for j in 0..<board[0].count {
            if word[currentIndex] == board[i][j] && !path.contains([i,j]) {
                if i - 1 > 0 {
                    if dp[i-1][j] {
                        dp[i][j] = true
                        path.insert([i,j])
                    }
                }
                if j - 1 > 0 {
                    if dp[i][j-1] {
                        dp[i][j] = true
                        path.insert([i,j])
                    }
                }
                if i + 1 < board.count - 1 {
                    if dp[i+1][j] {
                        dp[i][j] = true
                        path.insert([i,j])
                    }
                }
                if j + 1 < board[0].count - 1 {
                    if dp[1][j+1] {
                        dp[i][j] = true
                        path.insert([i,j])
                    }
                }
                if i == 0 && j == 0{
                    dp[i][j] = true
                    path.insert([i,j])
                }
                if i == board.count - 1 && j == board[0].count - 1 {
                    dp[i][j] = true
                    path.insert([i,j])
                }
                currentIndex += 1
                if currentIndex == word.count { return true }
            } else {
                if currentIndex == word.count && i == board.count - 1 && j == board[0].count - 1 { return false }

            }
        }
    }

    return false
}

let result = exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "ABCCED") // true
print(result)

let result1 = exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "SEE") // true
print(result1)

let result2 = exist([["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], "ABCB") // false
print(result2)

let result3 = exist([["A","A","A","A","A","A"],["A","A","A","A","A","A"],["A","A","A","A","A","A"],["A","A","A","A","A","A"],["A","A","A","A","A","B"],["A","A","A","A","B","A"]], "AAAAAAAAAAAAABB") // false
print(result3)

