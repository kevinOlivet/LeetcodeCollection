import Foundation

/*
 62. Unique Paths
 https://leetcode.com/problems/unique-paths/description/
 // BOTTOM UP DYNAMIC PROGRAMMING
 // I SOLOVED ALONE

 There is a robot on an m x n grid. The robot is initially located at the top-left corner (i.e., grid[0][0]). The robot tries to move to the bottom-right corner (i.e., grid[m - 1][n - 1]). The robot can only move either down or right at any point in time.

 Given the two integers m and n, return the number of possible unique paths that the robot can take to reach the bottom-right corner.

 The test cases are generated so that the answer will be less than or equal to 2 * 109.

 Example 1:
 Input: m = 3, n = 7
 Output: 28

 Example 2:
 Input: m = 3, n = 2
 Output: 3
 Explanation: From the top-left corner, there are a total of 3 ways to reach the bottom-right corner:
 1. Right -> Down -> Down
 2. Down -> Down -> Right
 3. Down -> Right -> Down
 */


func uniquePaths(_ m: Int, _ n: Int) -> Int {
    var dp = Array(repeating: Array(repeating: 1, count: n), count: m)

    for i in (0..<m-1).reversed() {
        for j in (0..<n-1).reversed() {
//            if i < m - 1 && j < n - 1 {
                let down = dp[i + 1][j]
                let right = dp[i][j + 1]
                dp[i][j] = down + right
//            }
        }
    }
    return dp[0][0]
}

// RECURSION SOLUTION
//func uniquePaths(_ m: Int, _ n: Int) -> Int {
//    var dp = [[Int]: Int]()
//
//    func dfs(r: Int, c: Int) -> Int {
//        if r == m - 1 && c == n - 1 {
//            return 1
//        }
//        if r == m - 1 || c == n - 1 {
//            return 1
//        }
//        if !dp.keys.contains([r,c]) {
//            let down = dfs(r: r + 1, c: c)
//            let right = dfs(r: r, c: c + 1)
//            dp[[r,c]] = down + right
//        }
//        return dp[[r,c]]!
//    }
//    return dfs(r: 0, c: 0)
//}
let result = uniquePaths(3, 7) // 28
print(result)

let result1 = uniquePaths(3, 2) // 3
print(result1)

let result2 = uniquePaths(1, 1) // 1
print(result2)
