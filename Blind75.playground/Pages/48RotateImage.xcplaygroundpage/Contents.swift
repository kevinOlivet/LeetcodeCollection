import Foundation

/*
 ## 48. Rotate Image
 https://leetcode.com/problems/rotate-image/description/

 You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise).
 You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.

 Example 1:
 Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
 Output: [[7,4,1],[8,5,2],[9,6,3]]

 Example 2:
 Input: matrix = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]
 Output: [[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]
 */

func rotate(_ matrix: inout [[Int]]) {
    // Transpose ie. mirror across the diagonal center or rows become columns
    for i in 0..<matrix.count {
        for j in i + 1..<matrix.count { // the plus one here is unneeded
            (matrix[i][j], matrix[j][i]) =
            (matrix[j][i], matrix[i][j])
        }
    }
    // Reflection ie. mirror across the vertical center
    for i in 0..<matrix.count {
        for j in 0..<matrix.count/2 {
            (matrix[i][j], matrix[i][matrix.count - 1 - j]) =
            (matrix[i][matrix.count - 1 - j], matrix[i][j])
        }
    }
}

var matrix = [
    [1,2,3],
    [4,5,6],
    [7,8,9]]
rotate(&matrix) // [[7,4,1],[8,5,2],[9,6,3]]
print(matrix)

var matrix1 = [
    [5,1,9,11],
    [2,4,8,10],
    [13,3,6,7],
    [15,14,12,16]]
rotate(&matrix1) // [[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]
print(matrix1)
