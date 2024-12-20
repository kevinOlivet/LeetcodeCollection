import Foundation

/*
 ## 322. Coin Change
 https://leetcode.com/problems/coin-change/description/

 15 Dynamic Programming

 You are given an integer array coins representing coins of different denominations and an integer amount representing a total amount of money.

 Return the fewest number of coins that you need to make up that amount. If that amount of money cannot be made up by any combination of the coins, return -1.

 You may assume that you have an infinite number of each kind of coin.

 Example 1:
 Input: coins = [1,2,5], amount = 11
 Output: 3
 Explanation: 11 = 5 + 5 + 1

 Example 2:
 Input: coins = [2], amount = 3
 Output: -1

 Example 3:
 Input: coins = [1], amount = 0
 Output: 0
 */

func coinChange(_ coins: [Int], _ amount: Int) -> Int {
    let myDefault = amount + 1

    var dp = Array(repeating: myDefault, count: amount + 1)
    dp[0] = 0

    for a in 0...amount {
        for c in coins {
            let diff = a - c
            if diff >= 0 {
                dp[a] = min(dp[a], 1 + dp[diff])
            }
        }
    }

    return dp[amount] != myDefault ? dp[amount] : -1
}

let result = coinChange([1,2,5], 11) // 3
print(result)

let result1 = coinChange([2], 3) // -1
print(result1)

let result2 = coinChange([1], 0) // 0
print(result2)
