import Foundation

/*
 ## 188. Best Time to Buy and Sell Stock IV, 188. Best Time to Buy and Sell Stock 4
 https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iv/description/?envType=study-plan-v2&envId=top-interview-150
 NOTE: Same solution as 123. Best Time to Buy and Sell Stock III, 123. Best Time to Buy and Sell Stock 3

 You are given an integer array prices where prices[i] is the price of a given stock on the ith day, and an integer k.

 Find the maximum profit you can achieve. You may complete at most k transactions: i.e. you may buy at most k times and sell at most k times.

 Note: You may not engage in multiple transactions simultaneously (i.e., you must sell the stock before you buy again).

 Example 1:
 Input: k = 2, prices = [2,4,1]
 Output: 2
 Explanation: Buy on day 1 (price = 2) and sell on day 2 (price = 4), profit = 4-2 = 2.

 Example 2:
 Input: k = 2, prices = [3,2,6,5,0,3]
 Output: 7
 Explanation: Buy on day 2 (price = 2) and sell on day 3 (price = 6), profit = 6-2 = 4. Then buy on day 5 (price = 0) and sell on day 6 (price = 3), profit = 3-0 = 3.
 */

func maxProfit(_ k: Int, _ prices: [Int]) -> Int {
    var dp = Array(repeating: 0, count: prices.count)
    for i in 1...k {
        var pos = -prices[0]
        var profit = 0
        for i in 1..<prices.count {
            pos = max(pos, dp[i] - prices[i])
            profit = max(profit, pos + prices[i])
            dp[i] = profit
        }
    }
    return dp.last!
}
