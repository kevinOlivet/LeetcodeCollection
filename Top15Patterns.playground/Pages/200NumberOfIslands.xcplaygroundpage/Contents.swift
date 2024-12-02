import Foundation

/*
 ## 200. Number of Islands
 https://leetcode.com/problems/number-of-islands/description/

 Given an m x n 2D binary grid grid which represents a map of '1's (land) and '0's (water), return the number of islands.

 An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically. You may assume all four edges of the grid are all surrounded by water.

 Example 1:
 Input: grid = [
   ["1","1","1","1","0"],
   ["1","1","0","1","0"],
   ["1","1","0","0","0"],
   ["0","0","0","0","0"]
 ]
 Output: 1

 Example 2:
 Input: grid = [
   ["1","1","0","0","0"],
   ["1","1","0","0","0"],
   ["0","0","1","0","0"],
   ["0","0","0","1","1"]
 ]
 Output: 3
 */

func numIslands(_ grid: [[Character]]) -> Int {
    var set = Set<String>()
    var result = 0

    func dfs(_ r: Int, _ c: Int) {
        if (r < 0 || r >= grid.count) ||
            (c < 0 || c >= grid[0].count) ||
            grid[r][c] != "1" ||
            set.contains("\(r), \(c)") {
                return
        }
        set.insert("\(r), \(c)")
        dfs(r+1, c)
        dfs(r-1, c)
        dfs(r, c+1)
        dfs(r, c-1)
    }

    for r in 0..<grid.count {
        for c in 0..<grid[0].count {
            if grid[r][c] == "1" && !set.contains("\(r), \(c)") {
                dfs(r, c)
                result += 1
            }
        }
    }
    return result
}

let grid: [[Character]] = [
    ["1","1","1","1","0"],
    ["1","1","0","1","0"],
    ["1","1","0","0","0"],
    ["0","0","0","0","0"]
]
let result = numIslands(grid) // 1
print(result)

let grid1: [[Character]] = [
    ["1","1","0","0","0"],
    ["1","1","0","0","0"],
    ["0","0","1","0","0"],
    ["0","0","0","1","1"]
]
let result1 = numIslands(grid1) // 3
print(result1)
