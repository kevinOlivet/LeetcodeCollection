import Foundation

/*
 ## 73. Set Matrix Zeroes
 https://leetcode.com/problems/set-matrix-zeroes/description/
 
 NOTE: - the trick is to use Constant space
 
 Given an m x n integer matrix matrix, if an element is 0, set its entire row and column to 0's.
 
 You must do it in place.
 
 Example 1:
 Input: matrix = [[1,1,1],[1,0,1],[1,1,1]]
 Output: [[1,0,1],[0,0,0],[1,0,1]]
 
 Example 2:
 Input: matrix = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
 Output: [[0,0,0,0],[0,4,5,0],[0,3,1,0]]
 */

func setZeroes(_ matrix: inout [[Int]]) {
    
    let rows = matrix.count
    let cols = matrix[0].count
    var rowZero = false
    
    for r in 0..<rows {
        for c in 0..<cols {
            if matrix[r][c] == 0 {
                // set 0th row to 0
                matrix[0][c] = 0
                if r > 0 {
                    // set 0th col to 0
                    matrix[r][0] = 0
                } else {
                    rowZero = true
                }
            }
        }
    }
    // set everything except the 0th row and 0th col to 0
    for r in 1..<rows {
        for c in 1..<cols {
            if matrix[0][c] == 0 || matrix[r][0] == 0 {
                matrix[r][c] = 0
            }
        }
    }
    // if top left is 0, set 0 col to 0
    if matrix[0][0] == 0 {
        for r in 0..<rows {
            matrix[r][0] = 0
        }
    }
    // if the top row should be 0, set it to 0
    if rowZero {
        for c in 0..<cols {
            matrix[0][c] = 0
        }
    }
    
    // My solution works in Leetcode but not here
//    var q = [(r: Int, c: Int)]()
//    for r in 0..<matrix.count {
//        for c in 0..<matrix[0].count {
//            if matrix[r][c] == 0 {
//                q.append((r: r, c: c))
//            }
//        }
//    }
//    func upRowDfs(_ r: Int, _ c: Int) {
//        if (r < 0 || r == matrix.count) || (c < 0 || c == matrix[0].count) { return }
//        matrix[r][c] = 0
//        upRowDfs(r - 1, c)
//    }
//    func downRowDfs(_ r: Int, _ c: Int) {
//        if (r < 0 || r == matrix.count) || (c < 0 || c == matrix[0].count) { return }
//        matrix[r][c] = 0
//        downRowDfs(r + 1, c)
//    }
//    func leftColDfs(_ r: Int, _ c: Int) {
//        if (r < 0 || r == matrix.count) || (c < 0 || c == matrix[0].count) { return }
//        matrix[r][c] = 0
//        leftColDfs(r, c - 1)
//    }
//    func rightColDfs(_ r: Int, _ c: Int) {
//        if (r < 0 || r == matrix.count) || (c < 0 || c == matrix[0].count) { return }
//        matrix[r][c] = 0
//        rightColDfs(r, c + 1)
//    }
//    for (r, c) in q {
//        upRowDfs(r, c)
//        downRowDfs(r, c)
//        leftColDfs(r, c)
//        rightColDfs(r, c)
//    }
}

var matrix = [
    [1,1,1],
    [1,0,1],
    [1,1,1]]
setZeroes(&matrix)
print(matrix) // [[1,0,1],[0,0,0],[1,0,1]]

var matrix1 = [
    [0,1,2,0],
    [3,4,5,2],
    [1,3,1,5]]
setZeroes(&matrix1) // [[0,0,0,0],[0,4,5,0],[0,3,1,0]]
print(matrix1)
