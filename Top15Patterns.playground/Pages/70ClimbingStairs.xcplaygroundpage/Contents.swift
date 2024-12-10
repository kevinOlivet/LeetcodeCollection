import Foundation

/*
 ## 70. Climbing Stairs
 https://leetcode.com/problems/climbing-stairs/description/
 15. Dynamic Programming Pattern

 You are climbing a staircase. It takes n steps to reach the top.

 Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

 Example 1:
 Input: n = 2
 Output: 2
 Explanation: There are two ways to climb to the top.
 1. 1 step + 1 step
 2. 2 steps

 Example 2:
 Input: n = 3
 Output: 3
 Explanation: There are three ways to climb to the top.
 1. 1 step + 1 step + 1 step
 2. 1 step + 2 steps
 3. 2 steps + 1 step
 */

func climbStairs(_ n: Int) -> Int {
    var one = 1
    var two = 1

    for i in 0..<n-1 {
        let temp = one
        one = one + two
        two = temp
    }
    return one
}

//func climbStairs(_ n: Int) -> Int {
//    var ways = Array(repeating: 1, count: n + 1)
//    for i in (0..<n-1).reversed() {
//        ways[i] = ways[i+1] + ways[i+2]
//    }
//    return ways[0]
//}

let result = climbStairs(2) // 2
print(result)

let result1 = climbStairs(3) // 3
print(result1)
