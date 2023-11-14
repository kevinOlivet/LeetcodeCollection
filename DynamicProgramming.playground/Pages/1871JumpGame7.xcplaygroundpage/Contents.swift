import Foundation

/*
 1871. Jump Game VII
 https://leetcode.com/problems/jump-game-vii/description/
 // DOESN'T WORK. I THINK I DON'T UNDERSTAND THE PROBLEM MAYBE

 You are given a 0-indexed binary string s and two integers minJump and maxJump. In the beginning, you are standing at index 0, which is equal to '0'. You can move from index i to index j if the following conditions are fulfilled:

 i + minJump <= j <= min(i + maxJump, s.length - 1), and
 s[j] == '0'.
 Return true if you can reach index s.length - 1 in s, or false otherwise.

 Example 1:
 Input: s = "011010", minJump = 2, maxJump = 3
 Output: true
 Explanation:
 In the first step, move from index 0 to index 3.
 In the second step, move from index 3 to index 5.

 Example 2:
 Input: s = "01101110", minJump = 2, maxJump = 3
 Output: false
 */

func canReach(_ s: String, _ minJump: Int, _ maxJump: Int) -> Bool {
    var s = Array(s)
    var dp = Array(repeating: false, count: s.count)

    for i in (0..<s.count).reversed() where s[i] != "1" {
        for j in (minJump...maxJump).reversed() {
            if i + j >= s.count {
                dp[i] = true
                break
            }
            if dp[i + j] && s[i+j] != "1" {
                dp[i] = true
            }
        }
    }
    print(dp)
    return dp[0]
}
2
//let result = canReach("011010", 2, 3) // true
//print(result)
//
//let result1 = canReach("01101110", 2, 3) // false
//print(result1)
//
//let result2 = canReach("01", 1, 1) // false
//print(result2)

let result3 = canReach("00111010", 3, 5) // false
print(result3)
