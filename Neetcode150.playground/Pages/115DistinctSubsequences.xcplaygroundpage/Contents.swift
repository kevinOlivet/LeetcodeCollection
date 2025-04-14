import Foundation

/*
 ## 115. Distinct Subsequences
 https://leetcode.com/problems/distinct-subsequences/description/

 Given two strings s and t, return the number of distinct subsequences of s which equals t.

 The test cases are generated so that the answer fits on a 32-bit signed integer.

 Example 1:
 Input: s = "rabbbit", t = "rabbit"
 Output: 3
 Explanation:
 As shown below, there are 3 ways you can generate "rabbit" from s.
 rabbbit
 rabbbit
 rabbbit

 Example 2:
 Input: s = "babgbag", t = "bag"
 Output: 5
 Explanation:
 As shown below, there are 5 ways you can generate "bag" from s.
 babgbag
 babgbag
 babgbag
 babgbag
 babgbag
 */

func numDistinct(_ s: String, _ t: String) -> Int {
    let s = Array(s)
    let t = Array(t)
    var dp = [[Int]: Int]()

    func dfs(i: Int, j: Int) -> Int {
        if j == t.count { return 1 }
        if i == s.count { return 0 }
        if let found = dp[[i, j]] { return found }
        if s[i] == t[j] {
            dp[[i, j]] = dfs(i: i + 1, j: j + 1) +
            dfs(i: i + 1, j: j)
        } else {
            dp[[i, j]] = dfs(i: i + 1, j: j)
        }
        return dp[[i, j]]!
    }
    return dfs(i: 0, j: 0)
}

let result = numDistinct("rabbbit", "rabbit") // 3
print(result)

let result2 = numDistinct("babgbag", "bag") // 5
print(result2)
