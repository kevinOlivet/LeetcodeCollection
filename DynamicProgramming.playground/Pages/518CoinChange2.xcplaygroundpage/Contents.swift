import Foundation

/*
 https://leetcode.com/problems/coin-change-ii/description/
 518. Coin Change II

 You are given an integer array coins representing coins of different denominations and an integer amount representing a total amount of money.

 Return the number of combinations that make up that amount. If that amount of money cannot be made up by any combination of the coins, return 0.

 You may assume that you have an infinite number of each kind of coin.

 The answer is guaranteed to fit into a signed 32-bit integer.

 Example 1:
 Input: amount = 5, coins = [1,2,5]
 Output: 4
 Explanation: there are four ways to make up the amount:
 5=5
 5=2+2+1
 5=2+1+1+1
 5=1+1+1+1+1

 Example 2:
 Input: amount = 3, coins = [2]
 Output: 0
 Explanation: the amount of 3 cannot be made up just with coins of 2.

 Example 3:
 Input: amount = 10, coins = [10]
 Output: 1
 */

func change(_ amount: Int, _ coins: [Int]) -> Int {
    var cache = [[Int]: Int]()

    func dfs(i: Int, a: Int) -> Int {
        // Base cases
        if a == amount {
            return 1
        }
        if a > amount {
            return 0
        }
        if i == coins.count {
            return 0
        }
        if cache.keys.contains([i, a]) {
            return cache[[i, a]]!
        }
        // Recursion
        cache[[i, a]] = dfs(i: i, a: a + coins[i]) + dfs(i: i + 1, a: a)
        return cache[[i, a]]!
    }
    return dfs(i: 0, a: 0)
}

let result = change(5, [1,2,5]) // 4
print(result)

let result1 = change(3, [2]) // 0
print(result1)

let result2 = change(10, [10]) // 1
print(result2)
