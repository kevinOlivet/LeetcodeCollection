import Foundation

/*
 221. Maximal Square
 https://leetcode.com/problems/maximal-square/
 // Dynamic programming bottom up

 Given an m x n binary matrix filled with 0's and 1's, find the largest square containing only 1's and return its area.

 Example 1:
 Input: matrix = [["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]
 Output: 4

 Example 2:
 Input: matrix = [["0","1"],["1","0"]]
 Output: 1

 Example 3:
 Input: matrix = [["0"]]
 Output: 0
 */

// Dynamic programming bottom up
func maximalSquare(_ matrix: [[Character]]) -> Int {

    var dp = Array(repeating: Array(repeating: 0, count: matrix[0].count), count: matrix.count)
    var max = 0

    for i in (0..<matrix.count).reversed() {
        for j in (0..<matrix.first!.count).reversed() {
            if matrix[i][j] == "1" {
                if i < matrix.count - 1 && j < matrix.first!.count - 1 && matrix[i + 1][j] == "1" && matrix[i][j + 1] == "1" && matrix[i + 1][j + 1] == "1" {
                    dp[i][j] = 1 + min(dp[i + 1][j], dp[i][j + 1], dp[i + 1][j + 1])
                } else {
                    dp[i][j] = 1
                }
            } else {
                dp[i][j] = 0
            }
            if dp[i][j] > max {
                max = dp[i][j]
            }
        }
    }
    for line in dp {
        print(line)
    }
    return max * max
}

func maximalSquareB(_ matrix: [[Character]]) -> Int {
    let rows = matrix.count
    let cols = matrix[0].count

    var dp = [[Int]: Int]()

    func dfs(r: Int, c: Int) -> Int {
        if r >= rows || c >= cols {
            return 0
        }

        if !dp.keys.contains([r,c]) {
            let down = dfs(r: r + 1, c: c)
            let right = dfs(r: r, c: c + 1)
            let diag = dfs(r: r + 1, c: c + 1)

            dp[[r,c]] = 0
            if matrix[r][c] == "1" {
                dp[[r,c]] = 1 + min(down, right, diag)
            }
        }
        return dp[[r,c]]!
    }

    dfs(r: 0, c: 0)
    return dp.values.max()! * dp.values.max()!
}

func maximalSquareC(_ matrix: [[Character]]) -> Int {

    var dp = Array(repeating: Array(repeating: 0, count: matrix[0].count),
                   count: matrix.count)
    var result = 0

    for r in 0..<matrix.count {
        for c in 0..<matrix[0].count {
            // Only consider cells with '1'
            if matrix[r][c] == "1" {
                if r == 0 || c == 0 {
                    // First row or first column can only form a 1x1 square
                    dp[r][c] = 1
                } else {
                    // Calculate the size of the square ending at (r, c)
                    dp[r][c] = 1 + min(dp[r-1][c],
                                       dp[r][c-1],
                                       dp[r-1][c-1])
                }
                // Update the maximum square length found
                result = max(result, dp[r][c])
            }
        }
    }

    // The area of the largest square is result squared
    return result * result
}

let result = maximalSquare([["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]) // 4
print(result)

let result1 = maximalSquare([["0","1"],["1","0"]]) // 1
print(result1)

let result2 = maximalSquare([["0"]]) // 0
print(result2)

let result3 = maximalSquare([
    ["1","1","1","1","0"],
    ["1","1","1","1","0"],
    ["1","1","1","1","1"],
    ["1","1","1","1","1"],
    ["0","0","1","1","1"]]) // 16
print(result3)
