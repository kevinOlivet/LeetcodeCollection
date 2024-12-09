import Foundation

/*
 78. Subsets
 https://leetcode.com/problems/subsets/

 Given an integer array nums of unique elements, return all possible
 subsets
  (the power set).

 The solution set must not contain duplicate subsets. Return the solution in any order.

 Example 1:
 Input: nums = [1,2,3]
 Output: [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]

 Example 2:
 Input: nums = [0]
 Output: [[],[0]]
 */

func subsets(_ nums: [Int]) -> [[Int]] {
    var result = [[Int]]()

    var current = [Int]()

    func backtrack(i: Int) {
        if i >= nums.count {
            // End of nums reached.  Time to return
            result.append(current)
            return
        }

        // Check branch with number added
        current.append(nums[i])
        backtrack(i: i + 1)

        // Check branch without number
        current.popLast()
        backtrack(i: i + 1)
    }

    backtrack(i: 0)
    return result
}

let result = subsets([1,2,3])
print(result) // [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]
