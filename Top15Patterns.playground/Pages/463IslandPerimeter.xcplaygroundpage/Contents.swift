import Foundation

/*
 ## 463. Island Perimeter
 https://leetcode.com/problems/island-perimeter/description/

 You are given row x col grid representing a map where grid[i][j] = 1 represents land and grid[i][j] = 0 represents water.

 Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells).

 The island doesn't have "lakes", meaning the water inside isn't connected to the water around the island. One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.

 Example 1:
 Input: grid = [[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]
 Output: 16
 Explanation: The perimeter is the 16 yellow stripes in the image above.

 Example 2:
 Input: grid = [[1]]
 Output: 4

 Example 3:
 Input: grid = [[1,0]]
 Output: 4
 */

func islandPerimeter(_ grid: [[Int]]) -> Int {
    var visited = Set<String>()

    func dfs(_ r: Int, _ c: Int) -> Int {
        if (r < 0 || r == grid.count) ||
            (c < 0 || c == grid[0].count) ||
            grid[r][c] != 1 {
             return 1
        }
        if visited.contains("\(r), \(c)") {
            return 0
        }
        visited.insert("\(r), \(c)")
        return dfs(r+1, c) + dfs(r-1, c) + dfs(r, c+1) + dfs(r, c-1)
    }

    for r in 0..<grid.count {
        for c in 0..<grid.count {
            if grid[r][c] == 1 {
                return dfs(r, c)
            }
        }
    }
    return 0
}

let grid = [
    [0,1,0,0],
    [1,1,1,0],
    [0,1,0,0],
    [1,1,0,0]
]
let result = islandPerimeter(grid) // 16
print(result)

let grid1 = [[1]]
let result1 = islandPerimeter(grid1) // 4
print(result1)

let grid2 = [[1,0]]
let result2 = islandPerimeter(grid2) // 4
print(result2)
