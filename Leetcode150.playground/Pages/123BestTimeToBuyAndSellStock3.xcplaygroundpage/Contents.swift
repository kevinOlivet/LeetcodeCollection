import Foundation

/*
 ## 123. Best Time to Buy and Sell Stock III, 123. Best Time to Buy and Sell Stock 3
 https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iii/description/?envType=study-plan-v2&envId=top-interview-150

 You are given an array prices where prices[i] is the price of a given stock on the ith day.

 Find the maximum profit you can achieve. You may complete at most two transactions.

 Note: You may not engage in multiple transactions simultaneously (i.e., you must sell the stock before you buy again).

 Example 1:
 Input: prices = [3,3,5,0,0,3,1,4]
 Output: 6
 Explanation: Buy on day 4 (price = 0) and sell on day 6 (price = 3), profit = 3-0 = 3.
 Then buy on day 7 (price = 1) and sell on day 8 (price = 4), profit = 4-1 = 3.

 Example 2:
 Input: prices = [1,2,3,4,5]
 Output: 4
 Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
 Note that you cannot buy on day 1, buy on day 2 and sell them later, as you are engaging multiple transactions at the same time. You must sell before buying again.

 Example 3:
 Input: prices = [7,6,4,3,1]
 Output: 0
 Explanation: In this case, no transaction is done, i.e. max profit = 0.
 */

func maxProfit(_ prices: [Int]) -> Int {

    var dp = Array(repeating: 0, count: prices.count)

    for t in 1...2 {

        var pos = -prices[0]
        var profit = 0
        for i in 1..<prices.count {
            pos = max(pos, dp[i] - prices[i])
            profit = max(profit, pos + prices[i])
            dp[i] = profit
        }

    }
    return dp.last! // profit
}

let result = maxProfit([3,3,5,0,0,3,1,4]) // 6
print(result)

let result1 = maxProfit([1,2,3,4,5]) // 4
print(result1)

let result2 = maxProfit([7,6,4,3,1]) // 0
print(result2)
