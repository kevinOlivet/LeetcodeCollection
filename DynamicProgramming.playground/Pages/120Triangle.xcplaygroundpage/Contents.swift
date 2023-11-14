import Foundation

/*
 https://leetcode.com/problems/triangle/
 120. Triangle

 Given a triangle array, return the minimum path sum from top to bottom.

 For each step, you may move to an adjacent number of the row below. More formally, if you are on index i on the current row, you may move to either index i or index i + 1 on the next row.

 Example 1:
 Input: triangle = [[2],[3,4],[6,5,7],[4,1,8,3]]
 Output: 11
 Explanation: The triangle looks like:
    2
   3 4
  6 5 7
 4 1 8 3
 The minimum path sum from top to bottom is 2 + 3 + 5 + 1 = 11 (underlined above).

 Example 2:
 Input: triangle = [[-10]]
 Output: -10
 */

// BOTTOM UP DYNAMIC PROGRAMMING
// I SOLVED BY MYSELF ON PAPER
func minimumTotal(_ triangle: [[Int]]) -> Int {
    var triangle = triangle
    for i in (0..<triangle.count).reversed() {
        for j in (0..<triangle[i].count).reversed() {
            if i < triangle.count - 1 && j < triangle[i].count {
                triangle[i][j] += min(triangle[i + 1][j], triangle[i + 1][j + 1])
            }
        }
    }
    return triangle[0][0]
}

// RECURSIVE SOLUTION
//func minimumTotal(_ triangle: [[Int]]) -> Int {
//
//    var dp = [[Int]: Int]()
//
//    func dfs(r: Int, c: Int) -> Int {
//        if r >= triangle.count - 1 || c >= triangle[r].count {
//            return triangle[r][c]
//        }
//        if !dp.keys.contains([r,c]) {
//            let down = dfs(r: r + 1, c: c)
//            let downRight = dfs(r: r + 1, c: c + 1)
//            dp[[r,c]] = triangle[r][c] + min(down, downRight)
//        }
//        return dp[[r,c]]!
//    }
//
//    return dfs(r: 0, c: 0)
//}

let result = minimumTotal([[2],[3,4],[6,5,7],[4,1,8,3]]) // 11
print(result)

let result1 = minimumTotal([[-10]]) // -10
print(result1)
