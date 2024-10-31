import Foundation

/*
 ## 240. Search a 2D Matrix II
 https://leetcode.com/problems/search-a-2d-matrix-ii/description/
 NOTE: Not binary search

 Write an efficient algorithm that searches for a value target in an m x n integer matrix matrix. This matrix has the following properties:

 Integers in each row are sorted in ascending from left to right.
 Integers in each column are sorted in ascending from top to bottom.

 Example 1:
 Input: matrix = [
 [1,4,7,11,15],
 [2,5,8,12,19],
 [3,6,9,16,22],
 [10,13,14,17,24],
 [18,21,23,26,30]
 ], target = 5
 Output: true

 Example 2:
 Input: matrix = [
 [1,4,7,11,15],
 [2,5,8,12,19],
 [3,6,9,16,22],
 [10,13,14,17,24],
 [18,21,23,26,30]
 ], target = 20
 Output: false
 */

// Not Binary search
func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    var lastRow = matrix[0].count - 1
    var c = 0

    while lastRow >= 0 && c < matrix[0].count {
        if matrix[lastRow][c] == target {
            return true
        } else if matrix[lastRow][c] < target {
            c += 1
        } else {
            lastRow -= 1
        }
    }
    return false
}

let result = searchMatrix([[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], 5) // true
print(result)

let result1 = searchMatrix([[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], 20) // false
print(result1)

// OR with binary search for each row
//func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
//        if target < matrix[0][0] { return false }
//        let lastRow = matrix[matrix.count - 1]
//        if target > lastRow.last! { return false }
//
//        var result = false
//
//        func binarySearch(nums: [Int]) -> Int? {
//            var l = 0
//            var r = nums.count - 1
//            while l <= r {
//                let m = ((r - l) / 2) + l
//                if nums[m] > target {
//                    r = m - 1
//                } else if nums[m] < target {
//                    l = m + 1
//                } else {
//                    return m
//                }
//            }
//            return nil
//        }
//
//        for array in matrix {
//            if let found = binarySearch(nums: array) {
//                result = true
//                break
//            }
//        }
//        return result
//    }
