import Foundation
/*
 121. Best Time to Buy and Sell Stock
 https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/

 Sliding Window or Two Pointer technique

 You are given an array prices where prices[i] is the price of a given stock on the ith day.

 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

 Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

 Example 1:
 Input: prices = [7,1,5,3,6,4]
 Output: 5
 Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
 Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.

 Example 2:
 Input: prices = [7,6,4,3,1]
 Output: 0
 Explanation: In this case, no transactions are done and the max profit = 0.
 */

func maxProfit(_ prices: [Int]) -> Int {
    var leftPointer = 0
    var rightPointer = 1

    var maxProfit = 0

    while rightPointer < prices.count {
        if prices[leftPointer] < prices[rightPointer] {
            let profit = prices[rightPointer] - prices[leftPointer]
            maxProfit = max(profit, maxProfit)
            rightPointer += 1
        } else {
            leftPointer = rightPointer
            rightPointer += 1
        }
    }

    return maxProfit
}

let result = maxProfit([7,1,5,3,6,4]) // 5
print(result)

let result1 = maxProfit([7,6,4,3,1]) // 0
print(result1)
