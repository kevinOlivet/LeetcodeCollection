import Foundation

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
