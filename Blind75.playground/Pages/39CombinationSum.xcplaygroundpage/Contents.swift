import Foundation

/*
 https://leetcode.com/problems/combination-sum/description/
 39. Combination Sum

 Given an array of distinct integers candidates and a target integer target, return a list of all unique combinations of candidates where the chosen numbers sum to target. You may return the combinations in any order.

 The same number may be chosen from candidates an unlimited number of times. Two combinations are unique if the
 frequency
  of at least one of the chosen numbers is different.

 The test cases are generated such that the number of unique combinations that sum up to target is less than 150 combinations for the given input.

 Example 1:
 Input: candidates = [2,3,6,7], target = 7
 Output: [[2,2,3],[7]]
 Explanation:
 2 and 3 are candidates, and 2 + 2 + 3 = 7. Note that 2 can be used multiple times.
 7 is a candidate, and 7 = 7.
 These are the only two combinations.

 Example 2:
 Input: candidates = [2,3,5], target = 8
 Output: [[2,2,2,2],[2,3,3],[3,5]]

 Example 3:
 Input: candidates = [2], target = 1
 Output: []
 */

func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {

    var result = [[Int]]()


    func backtrack(i: Int, current: [Int], total: Int) {
        if total == target {
            result.append(current)
            return
        }

        if i >= candidates.count || total > target {
            return
        }

        var tempCurrent = current
        tempCurrent.append(candidates[i])

        backtrack(i: i, current: tempCurrent, total: total + candidates[i])
        tempCurrent.popLast()
        backtrack(i: i + 1, current: tempCurrent, total: total)

    }

    backtrack(i: 0, current: [], total: 0)

    return result

}

let result = combinationSum([2,3,5], 9) // [[2,2,2,2],[2,3,3],[3,5]]
print(result)

let result1 = combinationSum([2,3,5], 8) // [[2,2,2,2],[2,3,3],[3,5]]
print(result1)

let result2 = combinationSum([2], 1) // []
print(result2)
