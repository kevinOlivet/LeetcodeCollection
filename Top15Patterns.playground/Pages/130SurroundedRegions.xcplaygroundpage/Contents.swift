import Foundation

/*
 ## 130. Surrounded Regions
 https://leetcode.com/problems/surrounded-regions/description/

 You are given an m x n matrix board containing letters 'X' and 'O', capture regions that are surrounded:

 Connect: A cell is connected to adjacent cells horizontally or vertically.
 Region: To form a region connect every 'O' cell.
 Surround: The region is surrounded with 'X' cells if you can connect the region with 'X' cells and none of the region cells are on the edge of the board.
 A surrounded region is captured by replacing all 'O's with 'X's in the input matrix board.

 Example 1:
 Input: board = [["X","X","X","X"],["X","O","O","X"],["X","X","O","X"],["X","O","X","X"]]
 Output: [["X","X","X","X"],["X","X","X","X"],["X","X","X","X"],["X","O","X","X"]]

 Explanation:
 In the above diagram, the bottom region is not captured because it is on the edge of the board and cannot be surrounded.

 Example 2:
 Input: board = [["X"]]
 Output: [["X"]]
 */

//func solve(_ board: [[Character]]) -> [[Character]] { // uncomment for testing
func solve(_ board: inout [[Character]]) {
//    var board = board // uncomment for testing
    // Set uncapturable area to "T"
    func dfs(_ r: Int, _ c: Int) {
        if (r < 0 || r >= board.count) ||
            (c < 0 || c > board[0].count) ||
            board[r][c] != "O" {
                return
        }
        board[r][c] = "T"
        dfs(r+1, c)
        dfs(r-1, c)
        dfs(r, c+1)
        dfs(r, c-1)
    }
    for r in 0..<board.count {
        for c in 0..<board[0].count {
            if board[r][c] == "O",
               [0, board.count - 1].contains(r) || [0, board[0].count - 1].contains(c) {
                dfs(r, c)
            }
        }
    }

    // Set all the "O"s to "X"
    for r in 0..<board.count {
        for c in 0..<board[0].count {
            if board[r][c] == "O" {
                board[r][c] = "X"
            }
        }
    }

    // Set the "T"s back to "O"s
    for r in 0..<board.count {
        for c in 0..<board[0].count {
            if board[r][c] == "T" {
                board[r][c] = "O"
            }
        }
    }

//    return board // uncomment for testing
}

var board: [[Character]] = [
    ["X","X","X","X"],
    ["X","O","O","X"],
    ["X","X","O","X"],
    ["X","O","X","X"]
]
// let result = solve(board) // [["X","X","X","X"],["X","X","X","X"],["X","X","X","X"],["X","O","X","X"]]
let result = solve(&board) // [["X","X","X","X"],["X","X","X","X"],["X","X","X","X"],["X","O","X","X"]]
print(result)

var board1: [[Character]] = [
    ["X"]
]

// let result1 = solve(board1) // [["X"]]
let result1 = solve(&board1) // [["X"]]
print(result1)
