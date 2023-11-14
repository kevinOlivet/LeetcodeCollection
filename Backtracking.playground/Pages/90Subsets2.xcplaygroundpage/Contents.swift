import Foundation

/*
 90. Subsets II, Subsets 2
 https://leetcode.com/problems/subsets-ii/

 Given an integer array nums that may contain duplicates, return all possible
 subsets
  (the power set).

 The solution set must not contain duplicate subsets. Return the solution in any order.

 Example 1:
 Input: nums = [1,2,2]
 Output: [[],[1],[1,2],[1,2,2],[2],[2,2]]

 Example 2:
 Input: nums = [0]
 Output: [[],[0]]
 */

func subsetsWithDup(_ nums: [Int]) -> [[Int]] {

    var result = [[Int]]()

    var current = [Int]()
    var used = Set<[Int]>()

    func backtrack(i: Int) {
        if i >= nums.count {
            let currentSorted = current.sorted()
            if !used.contains(currentSorted) {
                result.append(currentSorted)
                used.insert(currentSorted)
            }
            return
        }

        current.append(nums[i])
        backtrack(i: i + 1)

        current.popLast()
        backtrack(i: i + 1)
    }

    backtrack(i: 0)
    return result
}

let result = subsetsWithDup([1,2,2]) // [[],[1],[1,2],[1,2,2],[2],[2,2]]
print(result)
