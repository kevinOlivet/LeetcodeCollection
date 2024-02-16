import Foundation

/*
 200. Number of Islands
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

//    var gridSet = Set<String>()
//
//    var count = 0
//
//    func dfs(r: Int, c: Int) {
//        let stringRC = "\(r), \(c)"
//        if r < 0 || c < 0 || r >= grid.count || c >= grid[0].count || grid[r][c] != "1" || gridSet.contains(stringRC) {
//            return
//        }
//
//        gridSet.insert(stringRC)
//
//        dfs(r: r + 1, c: c)
//        dfs(r: r - 1, c: c)
//        dfs(r: r, c: c + 1)
//        dfs(r: r, c: c - 1)
//    }
//
//    for r in 0..<grid.count {
//        for c in 0..<grid[0].count {
//            if grid[r][c] == "1" && !gridSet.contains("\(r), \(c)") {
//                dfs(r: r, c: c)
//                count += 1
//            }
//        }
//    }
//    return count


    var grid = grid

    var count = 0

    func dfs(r: Int, c: Int) {
        if r < 0 || c < 0 || r >= grid.count || c >= grid[0].count || grid[r][c] != "1" {
            return
        }

        grid[r][c] = "0"

        dfs(r: r + 1, c: c)
        dfs(r: r - 1, c: c)
        dfs(r: r, c: c + 1)
        dfs(r: r, c: c - 1)
    }

    for r in 0..<grid.count {
        for c in 0..<grid[0].count {
            if grid[r][c] == "1" {
                dfs(r: r, c: c)
                count += 1
            }
        }
    }
    return count
}

var grid: [[Character]] = [
  ["1","1","1","1","0"],
  ["1","1","0","1","0"],
  ["1","1","0","0","0"],
  ["0","0","0","0","0"]
]
let result = numIslands(grid) // 1
print(result)

var grid2: [[Character]] = [
    ["1","1","0","0","0"],
    ["1","1","0","0","0"],
    ["0","0","1","0","0"],
    ["0","0","0","1","1"]
  ]
let result2 = numIslands(grid2) // 3
print(result2)
