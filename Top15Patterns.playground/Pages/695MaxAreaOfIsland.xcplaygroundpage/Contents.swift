import Foundation

/*
 ## 695. Max Area of Island
 https://leetcode.com/problems/max-area-of-island/description/

 You are given an m x n binary matrix grid. An island is a group of 1's (representing land) connected 4-directionally (horizontal or vertical.) You may assume all four edges of the grid are surrounded by water.

 The area of an island is the number of cells with a value 1 in the island.

 Return the maximum area of an island in grid. If there is no island, return 0.

 Example 1:
 Input: grid = [[0,0,1,0,0,0,0,1,0,0,0,0,0],[0,0,0,0,0,0,0,1,1,1,0,0,0],[0,1,1,0,1,0,0,0,0,0,0,0,0],[0,1,0,0,1,1,0,0,1,0,1,0,0],[0,1,0,0,1,1,0,0,1,1,1,0,0],[0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,0,0,1,1,1,0,0,0],[0,0,0,0,0,0,0,1,1,0,0,0,0]]
 Output: 6
 Explanation: The answer is not 11, because the island must be connected 4-directionally.

 Example 2:
 Input: grid = [[0,0,0,0,0,0,0,0]]
 Output: 0
 */

func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
    var visited = Set<String>()
    var result = 0

    func dfs(_ r: Int, _ c: Int) -> Int {
        if (r < 0 || r == grid.count) ||
            (c < 0 || c == grid[0].count) ||
            grid[r][c] != 1 ||
            visited.contains("\(r), \(c)") {
                return 0
        }
        visited.insert("\(r), \(c)")
        return dfs(r+1, c) + dfs(r-1, c) + dfs(r, c+1) + dfs(r, c-1) + 1
    }

    for r in 0..<grid.count {
        for c in 0..<grid[0].count {
            result = max(result, dfs(r, c))
        }
    }
    return result
}

let grid = [[0,0,1,0,0,0,0,1,0,0,0,0,0],[0,0,0,0,0,0,0,1,1,1,0,0,0],[0,1,1,0,1,0,0,0,0,0,0,0,0],[0,1,0,0,1,1,0,0,1,0,1,0,0],[0,1,0,0,1,1,0,0,1,1,1,0,0],[0,0,0,0,0,0,0,0,0,0,1,0,0],[0,0,0,0,0,0,0,1,1,1,0,0,0],[0,0,0,0,0,0,0,1,1,0,0,0,0]]
let result = maxAreaOfIsland(grid) // 6
print(result)

let grid1 = [[0,0,0,0,0,0,0,0]]
let result1 = maxAreaOfIsland(grid1) // 0
print(result1)
