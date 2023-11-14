import Foundation

/*
 338. Counting Bits
 https://leetcode.com/problems/counting-bits/description/

 Given an integer n, return an array ans of length n + 1 such that for each i (0 <= i <= n), ans[i] is the number of 1's in the binary representation of i.

 Example 1:
 Input: n = 2
 Output: [0,1,1]
 Explanation:
 0 --> 0
 1 --> 1
 2 --> 10

 Example 2:
 Input: n = 5
 Output: [0,1,1,2,1,2]
 Explanation:
 0 --> 0
 1 --> 1
 2 --> 10
 3 --> 11
 4 --> 100
 5 --> 101
 */

func countBits(_ n: Int) -> [Int] {
    guard n != 0 else { return [0] }
    var dp = Array(repeating: 0, count: n + 1)
    var offset = 1

    for i in 1...n {
        if offset * 2 == i {
            offset = i
        }
        dp[i] = 1 + dp[i - offset]
    }
    return dp
}

let result = countBits(2) // [0,1,1]
print(result)

let result1 = countBits(5) // [0,1,1,2,1,2]
print(result1)

let result2 = countBits(0) //
print(result2)
