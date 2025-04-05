import Foundation

/*
 ## 778. Swim in Rising Water
 https://leetcode.com/problems/swim-in-rising-water/description/

 You are given an n x n integer matrix grid where each value grid[i][j] represents the elevation at that point (i, j).

 The rain starts to fall. At time t, the depth of the water everywhere is t. You can swim from a square to another 4-directionally adjacent square if and only if the elevation of both squares individually are at most t. You can swim infinite distances in zero time. Of course, you must stay within the boundaries of the grid during your swim.

 Return the least time until you can reach the bottom right square (n - 1, n - 1) if you start at the top left square (0, 0).

 Example 1:
 Input: grid = [[0,2],[1,3]]
 Output: 3
 Explanation:
 At time 0, you are in grid location (0, 0).
 You cannot go anywhere else because 4-directionally adjacent neighbors have a higher elevation than t = 0.
 You cannot reach point (1, 1) until time 3.
 When the depth of water is 3, we can swim anywhere inside the grid.

 Example 2:
 Input: grid = [[0,1,2,3,4],[24,23,22,21,5],[12,13,14,15,16],[11,17,18,19,20],[10,9,8,7,6]]
 Output: 16
 Explanation: The final route is shown.
 We need to wait until time 16 so that (0, 0) and (4, 4) are connected.
 */

func swimInWater(_ grid: [[Int]]) -> Int {
    let n = grid.count
    var left = grid[0][0]
    var right = n * n - 1

    let directions = [(0, 1), (1, 0), (0, -1), (-1, 0)]

    func canSwim(_ t: Int) -> Bool {
        var visited = Array(repeating: Array(repeating: false, count: n), count: n)
        var stack = [(0, 0)]
        visited[0][0] = true

        while !stack.isEmpty {
            let (x, y) = stack.removeLast()
            if x == n - 1 && y == n - 1 {
                return true
            }
            for (dx, dy) in directions {
                let nx = x + dx
                let ny = y + dy
                if nx >= 0 && nx < n && ny >= 0 && ny < n && !visited[nx][ny] && grid[nx][ny] <= t {
                    visited[nx][ny] = true
                    stack.append((nx, ny))
                }
            }
        }
        return false
    }

    while left < right {
        let mid = (left + right) / 2
        if canSwim(mid) {
            right = mid
        } else {
            left = mid + 1
        }
    }

    return left
}

let result = swimInWater([[0,2],[1,3]]) // 3
print(result)

let result1 = swimInWater([[0,1,2,3,4],[24,23,22,21,5],[12,13,14,15,16],[11,17,18,19,20],[10,9,8,7,6]]) // 16
print(result1)
