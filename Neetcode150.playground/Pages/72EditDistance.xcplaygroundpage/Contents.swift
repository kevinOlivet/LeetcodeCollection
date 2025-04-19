import Foundation

/*
 ## 72. Edit Distance
 https://leetcode.com/problems/edit-distance/description/

 Given two strings word1 and word2, return the minimum number of operations required to convert word1 to word2.

 You have the following three operations permitted on a word:

 Insert a character
 Delete a character
 Replace a character

 Example 1:
 Input: word1 = "horse", word2 = "ros"
 Output: 3
 Explanation:
 horse -> rorse (replace 'h' with 'r')
 rorse -> rose (remove 'r')
 rose -> ros (remove 'e')

 Example 2:
 Input: word1 = "intention", word2 = "execution"
 Output: 5
 Explanation:
 intention -> inention (remove 't')
 inention -> enention (replace 'i' with 'e')
 enention -> exention (replace 'n' with 'x')
 exention -> exection (replace 'n' with 'c')
 exection -> execution (insert 'u')
 */

func minDistance(_ word1: String, _ word2: String) -> Int {
    let word1 = Array(word1)
    let word2 = Array(word2)
    var dp = Array(repeating: Array(repeating: Int.max,
                                    count: word2.count + 1),
                   count: word1.count + 1)
    for r in 0...word1.count {
        dp[r][word2.count] = word1.count - r
    }
    for c in 0...word2.count {
        dp[word1.count][c] = word2.count - c
    }
    for r in (0..<word1.count).reversed() {
        for c in (0..<word2.count).reversed() {
            if word1[r] == word2[c] {
                dp[r][c] = dp[r + 1][c + 1]
            } else {
                dp[r][c] = 1 + min(dp[r + 1][c],
                                   dp[r][c + 1],
                                   dp[r + 1][c + 1])
            }
        }
    }
    return dp[0][0]
}

let result = minDistance("horse", "ros") // 3
print(result)

let result1 = minDistance("intention", "execution") // 5
print(result1)
