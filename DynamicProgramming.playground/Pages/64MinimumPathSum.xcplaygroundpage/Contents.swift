import Foundation

/*
 https://leetcode.com/problems/minimum-path-sum/description/
 64. Minimum Path Sum

 Given a m x n grid filled with non-negative numbers, find a path from top left to bottom right, which minimizes the sum of all numbers along its path.

 Note: You can only move either down or right at any point in time.

 Example 1:
 Input: grid = [[1,3,1],[1,5,1],[4,2,1]]
 Output: 7
 Explanation: Because the path 1 → 3 → 1 → 1 → 1 minimizes the sum.

 Example 2:
 Input: grid = [[1,2,3],[4,5,6]]
 Output: 12
 */

// DYNAMIC PROGRAMMING
func minPathSum(_ grid: [[Int]]) -> Int {
    var dp = Array(repeating: Array(repeating: 0, count: grid[0].count + 1), count: grid.count + 1)

    for i in (0..<grid.count).reversed() {
        for j in (0..<grid[i].count).reversed() {
            if i == grid.count - 1 || j == grid[i].count - 1 {
                dp[i][j] = grid[i][j] + max(dp[i+1][j], dp[i][j+1])
            } else {
                dp[i][j] = grid[i][j] + min(dp[i+1][j], dp[i][j+1])
            }
        }
    }
    return dp[0][0]
}

// RECURSION
//func minPathSum(_ grid: [[Int]]) -> Int {
//    var dp = [[Int]: Int]()
//
//    func dfs(r: Int, c: Int) -> Int {
//        if r == grid.count - 1 && c == grid[0].count - 1 {
//            return grid[r][c]
//        }
//
//        if r == grid.count - 1 {
//            return grid[r][c] + dfs(r: r, c: c+1)
//        }
//        if c == grid[0].count - 1 {
//            return grid[r][c] + dfs(r: r+1, c: c)
//        }
//
//        if !dp.keys.contains([r,c]) {
//            let down = dfs(r: r+1, c: c)
//            let right = dfs(r: r, c: c+1)
//            dp[[r,c]] = grid[r][c] + min(down, right)
//        }
//        return dp[[r,c]]!
//    }
//
//    return dfs(r: 0, c: 0)
//}

let result = minPathSum([[1,3,1],[1,5,1],[4,2,1]]) // 7
print(result)

let result1 = minPathSum([[1,2,3],[4,5,6]]) // 12
print(result1)
