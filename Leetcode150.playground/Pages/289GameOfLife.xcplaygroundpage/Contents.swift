import Foundation

/*
 ## 289. Game of Life
 https://leetcode.com/problems/game-of-life/description/?envType=study-plan-v2&envId=top-interview-150

 According to Wikipedia's article: "The Game of Life, also known simply as Life, is a cellular automaton devised by the British mathematician John Horton Conway in 1970."

 The board is made up of an m x n grid of cells, where each cell has an initial state: live (represented by a 1) or dead (represented by a 0). Each cell interacts with its eight neighbors (horizontal, vertical, diagonal) using the following four rules (taken from the above Wikipedia article):

 Any live cell with fewer than two live neighbors dies as if caused by under-population.
 Any live cell with two or three live neighbors lives on to the next generation.
 Any live cell with more than three live neighbors dies, as if by over-population.
 Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.
 The next state of the board is determined by applying the above rules simultaneously to every cell in the current state of the m x n grid board. In this process, births and deaths occur simultaneously.

 Given the current state of the board, update the board to reflect its next state.

 Note that you do not need to return anything.

 Example 1:
 Input: board = [[0,1,0],[0,0,1],[1,1,1],[0,0,0]]
 Output: [[0,0,0],[1,0,1],[0,1,1],[0,1,0]]

 Example 2:
 Input: board = [[1,1],[1,0]]
 Output: [[1,1],[1,1]]

 Truth table:
 Original |  New  |  State
    0     |   0   |    0
    1     |   0   |    1
    0     |   1   |    2
    1     |   1   |    3
 */

func gameOfLife(_ board: inout [[Int]]) {
    func countNeightbors(r: Int, c: Int) -> Int {
        var nei = 0
        let directions = [(1, 0), (-1, 0), (0, 1), (0, -1),
                          (1,1), (-1, 1), (-1, -1), (1, -1)]
        for (dr, dc) in directions {
            let row = dr + r
            let col = dc + c
            if row < 0 || row == board.count ||
                col < 0 || col == board[0].count { continue }
            if [1, 3].contains(board[row][col]) { nei += 1}
        }
        return nei
    }
    // Code using truth table
    for r in 0..<board.count {
        for c in 0..<board[0].count {
            let nei = countNeightbors(r: r, c: c)
            if board[r][c] == 1 { // If alive
                if [2, 3].contains(nei) {
                    board[r][c] = 3 // Stay alive
                }
            } else if nei == 3 { // if dead but 3 nei
                board[r][c] = 2 // Become alive!
            }
        }
    }
    // Change code to 1 or 0
    for r in 0..<board.count {
        for c in 0..<board[0].count {
            if board[r][c] == 1 { // was alive now died
                board[r][c] = 0
            } else if [2,3].contains(board[r][c]) { // stay alive or become alive
                board[r][c] = 1
            }
        }
    }
}

var board = [[0,1,0],[0,0,1],[1,1,1],[0,0,0]]
gameOfLife(&board)
board.forEach({ print($0, terminator: "\n")})

/*
[
 [0,0,0],
 [1,0,1],
 [0,1,1],
 [0,1,0]
 ]
*/
print("")

var board1 = [[1,1],[1,0]]
gameOfLife(&board1)
board1.forEach({ print($0, terminator: "\n")})

/*
[
 [1,1],
 [1,1]
 ]
*/
