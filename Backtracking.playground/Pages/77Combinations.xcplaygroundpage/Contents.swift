import Foundation

/*
 77. Combinations
 https://leetcode.com/problems/combinations/

 Given two integers n and k, return all possible combinations of k numbers chosen from the range [1, n].

 You may return the answer in any order.

 Example 1:
 Input: n = 4, k = 2
 Output: [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
 Explanation: There are 4 choose 2 = 6 total combinations.
 Note that combinations are unordered, i.e., [1,2] and [2,1] are considered to be the same combination.

 Example 2:
 Input: n = 1, k = 1
 Output: [[1]]
 Explanation: There is 1 choose 1 = 1 total combination.
 */

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
