import Foundation

/*
 ## 74. Search a 2D Matrix
 https://leetcode.com/problems/search-a-2d-matrix/description/

 You are given an m x n integer matrix matrix with the following two properties:

 Each row is sorted in non-decreasing order.
 The first integer of each row is greater than the last integer of the previous row.
 Given an integer target, return true if target is in matrix or false otherwise.

 You must write a solution in O(log(m * n)) time complexity.

 Example 1:
 Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
 Output: true

 Example 2:
 Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 13
 Output: false
 */

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    if target < matrix[0][0] || target > matrix.last!.last! { return false }

    func binarySearch(nums: [Int]) -> Int? {
        var l = 0
        var r = nums.count - 1
        while l <= r {
            let m = ((r - l) / 2) + l
            if nums[m] > target {
                r = m - 1
            } else if nums[m] < target {
                l = m + 1
            } else {
                return m
            }
        }
        return nil
    }

    for array in matrix {
        if let found = binarySearch(nums: array) {
            return true
        }
    }
    return false
}

let matrix = [
    [1,3,5,7],
    [10,11,16,20],
    [23,30,34,60]
]
let result = searchMatrix(matrix, 3) // true
print(result)

let matrix1 = [
    [1,3,5,7],
    [10,11,16,20],
    [23,30,34,60]
]
let result1 = searchMatrix(matrix1, 13) // false
print(result1)
