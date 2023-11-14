import Foundation

func totalNQueens(_ n: Int) -> Int {
    var col = Set<Int>()
    var posDiag = Set<Int>() // r + c
    var negDiag = Set<Int>() // r - c

    var result = 0

    let board = Array(repeating: Array(repeating: ".", count: n), count: n)

    func backtrack(_ r: Int) {
        if r == n {
            result += 1
            return
        }

        for c in 0..<n {
            if col.contains(c) || posDiag.contains(r + c) || negDiag.contains(r - c) {
                continue
            }

            col.insert(c)
            posDiag.insert(r + c)
            negDiag.insert(r - c)

            backtrack(r + 1)

            col.remove(c)
            posDiag.remove(r + c)
            negDiag.remove(r - c)
        }
    }

    backtrack(0)

    return result
}

totalNQueens(4) // 2 solutions
