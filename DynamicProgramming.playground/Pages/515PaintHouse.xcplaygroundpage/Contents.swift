import Foundation

/*
 515 · Paint House
 found on chinese leet code called lintcode
 https://www.lintcode.com/problem/515/

 Description
 There are a row of n houses, each house can be painted with one of the three colors: red, blue or green. The cost of painting each house with a certain color is different. You have to paint all the houses such that no two adjacent houses have the same color, and you need to cost the least. Return the minimum cost.

 The cost of painting each house with a certain color is represented by a n x 3 cost matrix. For example, costs[0][0] is the cost of painting house 0 with color red; costs[1][2] is the cost of painting house 1 with color green, and so on... Find the minimum cost to paint all houses.

 All costs are positive integers.

 Example 1:
 Input: [[14,2,11],[11,14,5],[14,3,10]]
 Output: 10
 Explanation: Paint house 0 into blue, paint house 1 into green, paint house 2 into blue. Minimum cost: 2 + 5 + 3 = 10.

 Example 2:
 Input: [[1,2,3],[1,4,6]]
 Output: 3
 */

func minCost(_ costs: [[Int]]) -> Int {

    var dp = [0, 0, 0]

    for i in 0..<costs.count {
        let dp0 = costs[i][0] + min(dp[1], dp[2])
        let dp1 = costs[i][1] + min(dp[0], dp[2])
        let dp2 = costs[i][2] + min(dp[0], dp[1])
        dp = [dp0, dp1, dp2]
    }
    return dp.min()!
}

let result = minCost([[14,2,11],[11,14,5],[14,3,10]]) // 10
print(result)

let result1 = minCost([[1,2,3],[1,4,6]]) // 3
print(result1)
