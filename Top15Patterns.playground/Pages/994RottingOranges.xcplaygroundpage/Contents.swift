import Foundation

/*
 ## 994. Rotting Oranges
 https://leetcode.com/problems/rotting-oranges/description/

 You are given an m x n grid where each cell can have one of three values:

 0 representing an empty cell,
 1 representing a fresh orange, or
 2 representing a rotten orange.
 Every minute, any fresh orange that is 4-directionally adjacent to a rotten orange becomes rotten.

 Return the minimum number of minutes that must elapse until no cell has a fresh orange. If this is impossible, return -1.

 Example 1:
 Input: grid = [[2,1,1],[1,1,0],[0,1,1]]
 Output: 4

 Example 2:
 Input: grid = [[2,1,1],[0,1,1],[1,0,1]]
 Output: -1
 Explanation: The orange in the bottom left corner (row 2, column 0) is never rotten, because rotting only happens 4-directionally.

 Example 3:
 Input: grid = [[0,2]]
 Output: 0
 Explanation: Since there are already no fresh oranges at minute 0, the answer is just 0.
 */

func orangesRotting(_ grid: [[Int]]) -> Int {
    var grid = grid
    var queue = [(row: Int, col: Int)]()

    var time = 0
    var fresh = 0
    // populate the fresh and queue
    for r in 0..<grid.count {
        for c in 0..<grid[0].count {
            if grid[r][c] == 1 {
                fresh += 1
            }
            if grid[r][c] == 2 {
                queue.append((row: r, col: c))
            }
        }
    }

    let directions = [(0, 1), (0, -1), (1, 0), (-1, 0)]

    while !queue.isEmpty && fresh > 0 {
        for i in 0..<queue.count {
            let (r, c) = queue.removeFirst()
            for (dr, dc) in directions {
                let row = dr + r
                let col = dc + c
                // if in bounds and fresh, make rotten
                if (row < 0 || row == grid.count) ||
                    (col < 0 || col == grid[0].count) ||
                    grid[row][col] != 1 {
                        continue
                    }
                grid[row][col] = 2
                queue.append((row: row, col: col))
                fresh -= 1
            }
        }
        time += 1
    }
    return fresh == 0 ? time : -1
}

let result = orangesRotting([[2,1,1],[1,1,0],[0,1,1]]) // 4
print(result)

let result1 = orangesRotting([[2,1,1],[0,1,1],[1,0,1]]) // -1
print(result1)

let result2 = orangesRotting([[0,2]]) // 0
print(result2)
