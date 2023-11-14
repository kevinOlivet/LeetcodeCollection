import Foundation

func combine(_ n: Int, _ k: Int) -> [[Int]] {
    var result = [[Int]]()

    var combination = [Int]()

    func backtrack(start: Int) {
        if combination.count == k {
            result.append(combination)
            return
        }

        if start <= n {
            for i in start...n {
                combination.append(i)
                backtrack(start: i + 1)
                combination.popLast()
            }
        }
    }

    backtrack(start: 1)
    return result
}

let result = combine(4, 2) // [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]
print(result)
