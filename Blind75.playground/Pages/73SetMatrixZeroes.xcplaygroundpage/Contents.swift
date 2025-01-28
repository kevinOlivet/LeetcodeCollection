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
    var q = [(r: Int, c: Int)]()
    for r in 0..<matrix.count {
        for c in 0..<matrix[0].count {
            if matrix[r][c] == 0 {
                q.append((r: r, c: c))
            }
        }
    }
    for (r, c) in q {
        for i in 0..<matrix.count {
            matrix[i][c] = 0
        }
        for j in 0..<matrix[0].count {
            matrix[r][j] = 0
        }
    }
}

var matrix = [
    [1,1,1],
    [1,0,1],
    [1,1,1]]
setZeroes(&matrix)
print(matrix) // [[1,0,1],[0,0,0],[1,0,1]]
for row in matrix {
    print(row, terminator: "\n")
}

var matrix1 = [
    [0,1,2,0],
    [3,4,5,2],
    [1,3,1,5]]
setZeroes(&matrix1) // [[0,0,0,0],[0,4,5,0],[0,3,1,0]]
print(matrix1)
for row in matrix1 {
    print(row, terminator: "\n")
}
