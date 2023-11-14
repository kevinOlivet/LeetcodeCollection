import Foundation

/*
 https://leetcode.com/problems/permutations-ii/description/
 47. Permutations II

 Given a collection of numbers, nums, that might contain duplicates, return all possible unique permutations in any order.

 Example 1:
 Input: nums = [1,1,2]
 Output:
 [[1,1,2],
 [1,2,1],
 [2,1,1]]

 Example 2:
 Input: nums = [1,2,3]
 Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
 */

func permuteUnique(_ nums: [Int]) -> [[Int]] {
    var nums = nums
    var result = Set<[Int]>()

    func backtrack(i: Int) {
        if i >= nums.count {
            result.insert(nums)
        }

        for j in i..<nums.count {
            nums.swapAt(i, j)
            backtrack(i: i + 1)
            nums.swapAt(i, j)
        }
    }
    backtrack(i: 0)
    return Array(result)
}

let result = permuteUnique([1,1,2]) //  [[1,1,2], [1,2,1], [2,1,1]]
print(result)

let result1 = permuteUnique([1,2,3]) //  [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
print(result1)
