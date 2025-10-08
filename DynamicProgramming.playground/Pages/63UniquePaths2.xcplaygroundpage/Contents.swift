import Foundation

/*
 63. Unique Paths II
 https://leetcode.com/problems/unique-paths-ii/

 You are given an m x n integer array grid. There is a robot initially located at the top-left corner (i.e., grid[0][0]). The robot tries to move to the bottom-right corner (i.e., grid[m - 1][n - 1]). The robot can only move either down or right at any point in time.

 An obstacle and space are marked as 1 or 0 respectively in grid. A path that the robot takes cannot include any square that is an obstacle.

 Return the number of possible unique paths that the robot can take to reach the bottom-right corner.

 The testcases are generated so that the answer will be less than or equal to 2 * 109.

 Example 1:
 Input: obstacleGrid = [[0,0,0],[0,1,0],[0,0,0]]
 Output: 2
 Explanation: There is one obstacle in the middle of the 3x3 grid above.
 There are two ways to reach the bottom-right corner:
 1. Right -> Right -> Down -> Down
 2. Down -> Down -> Right -> Right

 Example 2:
 Input: obstacleGrid = [[0,1],[0,0]]
 Output: 1
 */

//func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
//    guard obstacleGrid[obstacleGrid.count-1][obstacleGrid[0].count - 1] != 1 else { return 0 }
//    var grid = obstacleGrid
//
//    var lastRowBlocked = false
//    var lastColumnBlocked = false
//
//    for i in (0..<grid.count).reversed() {
//        for j in (0..<grid[0].count).reversed() {
//            if i == grid.count - 1 {
//                if grid[i][j] == 1 {
//                    lastRowBlocked = true
//                }
//                grid[i][j] = lastRowBlocked ? 0 : 1
//            } else if j == grid[0].count - 1 {
//                if grid[i][j] == 1 {
//                    lastColumnBlocked = true
//                }
//                grid[i][j] = lastColumnBlocked ? 0 : 1
//            } else if grid[i][j] == 1 {
//                grid[i][j] = 0
//            } else {
//                grid[i][j] = grid[i+1][j] + grid[i][j+1]
//            }
//        }
//    }
//    return grid[0][0]
//}

func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
    var dp = Array(repeating: 0, count: obstacleGrid[0].count)
    dp[obstacleGrid[0].count - 1] = 1

    for r in (0..<obstacleGrid.count).reversed() {
        for c in (0..<obstacleGrid[0].count).reversed() {
            if obstacleGrid[r][c] == 1 {
                dp[c] = 0
            } else if c + 1 < obstacleGrid[0].count {
                dp[c] = dp[c] + dp[c + 1]
            }
        }
    }
    return dp[0]
}

let result = uniquePathsWithObstacles([[0,0,0],[0,1,0],[0,0,0]]) // 2
print(result)

let result1 = uniquePathsWithObstacles([[0,1],[0,0]]) // 1
print(result1)
