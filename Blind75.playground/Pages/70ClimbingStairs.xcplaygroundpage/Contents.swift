import Foundation

/*
 70. Climbing Stairs
 https://leetcode.com/problems/climbing-stairs/description/

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
        one += two
        two = temp
    }
    return one
}

let result = climbStairs(2) // 2
print(result)

let result1 = climbStairs(3) // 3
print(result1)

let result2 = climbStairs(4) // 5
print(result2)

let result3 = climbStairs(5) // 8
print(result3)
