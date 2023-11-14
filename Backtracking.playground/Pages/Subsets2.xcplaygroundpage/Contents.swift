import Foundation

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
