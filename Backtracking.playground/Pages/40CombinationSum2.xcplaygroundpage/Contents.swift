import Foundation

/*
 40. Combination Sum II, Combination Sum 2
 https://leetcode.com/problems/combination-sum-ii/

 Given a collection of candidate numbers (candidates) and a target number (target), find all unique combinations in candidates where the candidate numbers sum to target.

 Each number in candidates may only be used once in the combination.

 Note: The solution set must not contain duplicate combinations.

 Example 1:
 Input: candidates = [10,1,2,7,6,1,5], target = 8
 Output:
 [
 [1,1,6],
 [1,2,5],
 [1,7],
 [2,6]
 ]

 Example 2:
 Input: candidates = [2,5,2,1,2], target = 5
 Output:
 [
 [1,2,2],
 [5]
 ]
 */

func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
    let candidates = candidates.sorted()

    var result = [[Int]]()

    func backtrack(position: Int, current: [Int], total: Int) {
        if total == target {
            result.append(current)
            return
        }

        if position >= candidates.count || total > target { return }

        var prev = -1
        for i in position..<candidates.count {
            if candidates[i] == prev {
                continue
            }
            var tempCurrent = current
            tempCurrent.append(candidates[i])
            backtrack(position: i + 1, current: tempCurrent, total: total + candidates[i])
            tempCurrent.popLast()
            prev = candidates[i]
        }
    }

    backtrack(position: 0, current: [], total: 0)
    return result
}

let result = combinationSum2([10,1,2,7,6,1,5], 8) // [ [1,1,6], [1,2,5], [1,7], [2,6] ]
print(result)
