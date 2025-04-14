import Foundation

var greeting = "Hello, playground"
/*
 ## 329. Longest Increasing Path in a Matrix
 https://leetcode.com/problems/longest-increasing-path-in-a-matrix/description/

 Given an m x n integers matrix, return the length of the longest increasing path in matrix.

 From each cell, you can either move in four directions: left, right, up, or down. You may not move diagonally or move outside the boundary (i.e., wrap-around is not allowed).

 Example 1:
 Input: matrix = [[9,9,4],[6,6,8],[2,1,1]]
 Output: 4
 Explanation: The longest increasing path is [1, 2, 6, 9].

 Example 2:
 Input: matrix = [[3,4,5],[3,2,6],[2,2,1]]
 Output: 4
 Explanation: The longest increasing path is [3, 4, 5, 6]. Moving diagonally is not allowed.

 Example 3:
 Input: matrix = [[1]]
 Output: 1
 */

func longestIncreasingPath(_ matrix: [[Int]]) -> Int {
    var dp = [[Int]: Int]()

    func dfs(_ r: Int, _ c: Int, _ prevVal: Int) -> Int {
        if (r < 0 || r == matrix.count) ||
            (c < 0 || c == matrix[0].count) ||
            matrix[r][c] <= prevVal { return 0 }
        if let found = dp[[r, c]] { return found }
        var result = 1
        result = max(result, 1 + dfs(r + 1, c, matrix[r][c]))
        result = max(result, 1 + dfs(r - 1, c, matrix[r][c]))
        result = max(result, 1 + dfs(r, c + 1, matrix[r][c]))
        result = max(result, 1 + dfs(r, c - 1, matrix[r][c]))
        dp[[r, c]] = result
        return result
    }
    for r in 0..<matrix.count {
        for c in 0..<matrix[0].count {
            dfs(r,c, -1)
        }
    }
    return dp.values.max()!
}

let result = longestIncreasingPath([[9,9,4],[6,6,8],[2,1,1]]) // 4
print(result)

let result1 = longestIncreasingPath([[3,4,5],[3,2,6],[2,2,1]]) // 4
print(result1)

let result2 = longestIncreasingPath([[1]]) // 1
print(result2)
