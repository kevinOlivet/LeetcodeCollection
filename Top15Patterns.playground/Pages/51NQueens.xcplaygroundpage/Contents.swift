import Foundation

/*
 ## 51. N-Queens
 https://leetcode.com/problems/n-queens/description/

 The n-queens puzzle is the problem of placing n queens on an n x n chessboard such that no two queens attack each other.

 Given an integer n, return all distinct solutions to the n-queens puzzle. You may return the answer in any order.

 Each solution contains a distinct board configuration of the n-queens' placement, where 'Q' and '.' both indicate a queen and an empty space, respectively.

 Example 1:
 Input: n = 4
 Output: [[".Q..","...Q","Q...","..Q."],["..Q.","Q...","...Q",".Q.."]]
 Explanation: There exist two distinct solutions to the 4-queens puzzle as shown above

 Example 2:
 Input: n = 1
 Output: [["Q"]]
 */

func solveNQueens(_ n: Int) -> [[String]] {

    var col = Set<Int>()
    var posDiag = Set<Int>() // (r + c)
    var negDiag = Set<Int>() // (r - c)

    var result = [[String]]()

    var board = Array(repeating: Array(repeating: ".", count: n), count: n)

    func backtrack(r: Int) {
        if r == n {
            var temp = [String]()
            for row in board {
                let joinedRow = row.joined(separator: "")
                temp.append(joinedRow)
            }
            result.append(temp)
//            result.append(board.map({ $0.joined(separator: "")}))
            return
        }

        for c in 0..<n {
            if col.contains(c) || posDiag.contains(r + c) || negDiag.contains(r - c) {
                continue
            }

            col.insert(c)
            posDiag.insert(r + c)
            negDiag.insert(r - c)
            board[r][c] = "Q"

            backtrack(r: r + 1)

            col.remove(c)
            posDiag.remove(r + c)
            negDiag.remove(r - c)
            board[r][c] = "."
        }
    }

    backtrack(r: 0)

    return result
}

let result = solveNQueens(4)
result.forEach { $0.forEach { print($0) } }
