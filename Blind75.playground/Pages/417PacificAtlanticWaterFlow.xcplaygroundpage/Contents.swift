import Foundation

/*
 417. Pacific Atlantic Water Flow
 https://leetcode.com/problems/pacific-atlantic-water-flow/

 There is an m x n rectangular island that borders both the Pacific Ocean and Atlantic Ocean. The Pacific Ocean touches the island's left and top edges, and the Atlantic Ocean touches the island's right and bottom edges.

 The island is partitioned into a grid of square cells. You are given an m x n integer matrix heights where heights[r][c] represents the height above sea level of the cell at coordinate (r, c).

 The island receives a lot of rain, and the rain water can flow to neighboring cells directly north, south, east, and west if the neighboring cell's height is less than or equal to the current cell's height. Water can flow from any cell adjacent to an ocean into the ocean.

 Return a 2D list of grid coordinates result where result[i] = [ri, ci] denotes that rain water can flow from cell (ri, ci) to both the Pacific and Atlantic oceans.

 Example 1:
 Input: heights = [[1,2,2,3,5],[3,2,3,4,4],[2,4,5,3,1],[6,7,1,4,5],[5,1,1,2,4]]
 Output: [[0,4],[1,3],[1,4],[2,2],[3,0],[3,1],[4,0]]
 Explanation: The following cells can flow to the Pacific and Atlantic oceans, as shown below:
 [0,4]: [0,4] -> Pacific Ocean
        [0,4] -> Atlantic Ocean
 [1,3]: [1,3] -> [0,3] -> Pacific Ocean
        [1,3] -> [1,4] -> Atlantic Ocean
 [1,4]: [1,4] -> [1,3] -> [0,3] -> Pacific Ocean
        [1,4] -> Atlantic Ocean
 [2,2]: [2,2] -> [1,2] -> [0,2] -> Pacific Ocean
        [2,2] -> [2,3] -> [2,4] -> Atlantic Ocean
 [3,0]: [3,0] -> Pacific Ocean
        [3,0] -> [4,0] -> Atlantic Ocean
 [3,1]: [3,1] -> [3,0] -> Pacific Ocean
        [3,1] -> [4,1] -> Atlantic Ocean
 [4,0]: [4,0] -> Pacific Ocean
        [4,0] -> Atlantic Ocean
 Note that there are other possible paths for these cells to flow to the Pacific and Atlantic oceans.

 Example 2:
 Input: heights = [[1]]
 Output: [[0,0]]
 Explanation: The water can flow from the only cell to the Pacific and Atlantic oceans.
 */

func pacificAtlantic(_ heights: [[Int]]) -> [[Int]] {
//    let ROWS = heights.count
//    let COLS = heights[0].count
//    var pac = Set<[Int]>()
//    var atl = Set<[Int]>()
//
//    func dfs(r: Int, c: Int, visit: inout Set<[Int]>, prevHeight: Int) {
//        if visit.contains([r,c]) || r == ROWS || r < 0 || c == COLS || c < 0 || heights[r][c] < prevHeight { return }
//
//        visit.insert([r,c])
//
//        dfs(r: r + 1, c: c, visit: &visit, prevHeight: heights[r][c])
//        dfs(r: r - 1, c: c, visit: &visit, prevHeight: heights[r][c])
//        dfs(r: r, c: c + 1, visit: &visit, prevHeight: heights[r][c])
//        dfs(r: r, c: c - 1, visit: &visit, prevHeight: heights[r][c])
//    }
//
//    // Set top row and bottom to visited state. Top to Pacific, bottom to Atlantic
//    for c in 0..<COLS {
//        dfs(r: 0, c: c, visit: &pac, prevHeight: heights[0][c])
//        dfs(r: ROWS - 1, c: c, visit: &atl, prevHeight: heights[ROWS - 1][c])
//    }
//
//    // Set Leftmost column and rightmost column to visited state. Left to Pacific, right to Atlantic
//    for r in 0..<ROWS {
//        dfs(r: r, c: 0, visit: &pac, prevHeight: heights[r][0])
//        dfs(r: r, c: COLS - 1, visit: &atl, prevHeight: heights[r][COLS - 1])
//    }
//
//    var result = [[Int]]()
//
//    for r in 0..<ROWS {
//        for c in 0..<COLS {
//            if pac.contains([r,c]) && atl.contains([r,c]) {
//                result.append([r,c])
//            }
//        }
//    }
//    return result
    
    var grid = Array(repeating: Array(repeating: "", count: heights[0].count), count: heights.count)
    
    func dfs(_ r: Int, _ c: Int, _ prevR: Int, _ prevC: Int, _ pacific: Bool) {
        let ocean = pacific ? "p" : "a"
        if (r < 0 || r == heights.count) || (c < 0 || c == heights[0].count) ||
            grid[r][c].contains(ocean) || heights[r][c] < heights[prevR][prevC] { return }
        grid[r][c].append(ocean)
        dfs(r+1, c, r, c, pacific)
        dfs(r-1, c, r, c, pacific)
        dfs(r, c+1, r, c, pacific)
        dfs(r, c-1, r, c, pacific)
    }
    
    for r in 0..<heights.count {
        for c in 0..<heights[0].count {
            if r == 0 || c == 0 {
                dfs(r, c, r, c, true)
            }
        }
    }

    for r in 0..<heights.count {
        for c in 0..<heights[0].count {
            if r == heights.count - 1 || c == heights[0].count - 1 {
                dfs(r, c, r, c, false)
            }
        }
    }

    var result = [[Int]]()
    for r in 0..<heights.count {
        for c in 0..<heights[0].count {
            if grid[r][c] == "pa" {
                result.append([r,c])
            }
        }
    }

    return result
}

let result = pacificAtlantic([[1,2,2,3,5],
                              [3,2,3,4,4],
                              [2,4,5,3,1],
                              [6,7,1,4,5],
                              [5,1,1,2,4]])
print(result) // [[0,4],[1,3],[1,4],[2,2],[3,0],[3,1],[4,0]]

let result1 = pacificAtlantic([[1]])
print(result1) // [[0,0]]
