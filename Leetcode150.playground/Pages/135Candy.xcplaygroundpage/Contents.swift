import Foundation

/*
 ## 135. Candy
 https://leetcode.com/problems/candy/description/?envType=study-plan-v2&envId=top-interview-150

 There are n children standing in a line. Each child is assigned a rating value given in the integer array ratings.

 You are giving candies to these children subjected to the following requirements:

 Each child must have at least one candy.
 Children with a higher rating get more candies than their neighbors.
 Return the minimum number of candies you need to have to distribute the candies to the children.

 Example 1:
 Input: ratings = [1,0,2]
 Output: 5
 Explanation: You can allocate to the first, second and third child with 2, 1, 2 candies respectively.

 Example 2:
 Input: ratings = [1,2,2]
 Output: 4
 Explanation: You can allocate to the first, second and third child with 1, 2, 1 candies respectively.
 The third child gets 1 candy because it satisfies the above two conditions.
 */

func candy(_ ratings: [Int]) -> Int {
    var dp = Array(repeating: 1, count: ratings.count)
    for i in 1..<ratings.count {
        if ratings[i] > ratings[i - 1] {
            dp[i] = 1 + dp[i - 1]
        }
    }
    for i in (0..<ratings.count - 1).reversed() {
        if ratings[i] > ratings[i + 1] {
            dp[i] = max(dp[i], 1 + dp[i + 1])
        }
    }
    return dp.reduce(0, +)
}

let result = candy( [1,0,2]) // 5
print(result)

let result1 = candy([1,2,2]) // 4
print(result1)
