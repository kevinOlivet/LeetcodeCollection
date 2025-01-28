import Foundation

/*
 ## 54. Spiral Matrix
 https://leetcode.com/problems/spiral-matrix/description/

 Given an m x n matrix, return all elements of the matrix in spiral order.

 Example 1:
 Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
 Output: [1,2,3,6,9,8,7,4,5]

 Example 2:
 Input: matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
 Output: [1,2,3,4,8,12,11,10,9,5,6,7]
 */

func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    var left = 0
    var right = matrix[0].count

    var top = 0
    var bottom = matrix.count

    var result = [Int]()

    while left < right && top < bottom {

        // get top row
        for i in left..<right {
            result.append(matrix[top][i])
        }
        top += 1

        // get right column
        for i in top..<bottom {
            result.append(matrix[i][right - 1])
        }
        right -= 1

        // bounds check
        if left >= right || top >= bottom {
            break
        }

        // get bottom row reversed
        for i in (left..<right).reversed() {
//        for i in stride(from: right - 1, to: left - 1, by: -1) {
            result.append(matrix[bottom - 1][i])
        }
        bottom -= 1

        // get left column reversed
        for i in (top..<bottom).reversed() {
//        for i in stride(from: bottom - 1, to: top - 1, by: -1) {
            result.append(matrix[i][left])
        }
        left += 1
    }
    return result
}

let matrix = [
    [1,2,3],
    [4,5,6],
    [7,8,9]]
let result = spiralOrder(matrix) // [1,2,3,6,9,8,7,4,5]
print(result)

let matrix1 = [
    [1,2,3,4],
    [5,6,7,8],
    [9,10,11,12]]
let result1 = spiralOrder(matrix1) // [1,2,3,4,8,12,11,10,9,5,6,7]
print(result1)
