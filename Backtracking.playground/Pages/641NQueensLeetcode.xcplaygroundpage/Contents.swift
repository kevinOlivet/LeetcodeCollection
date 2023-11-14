import Foundation

func solveNQueens(_ n: Int) -> [[String]] {

    var col = Set<Int>()
    var posDiag = Set<Int>() // (r + c)
    var negDiag = Set<Int>() // (r - c)

    var result = [[String]]()

    var board = Array(repeating: Array(repeating: ".", count: n), count: n)

    func backtrack(r: Int) {
        if r == n {
            var tempHolder = [String]()
            for row in board {
                let joinedRow = row.joined(separator: "")
                tempHolder.append(joinedRow)
            }
            result.append(tempHolder)
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
