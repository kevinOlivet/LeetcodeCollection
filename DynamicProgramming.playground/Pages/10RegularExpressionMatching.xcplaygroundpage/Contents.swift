import Foundation

/*
 10. Regular Expression Matching
 https://leetcode.com/problems/regular-expression-matching/
 // RECURSION WITH MEMOIZATION, NOT DYNAMIC PROGRAMMING

 Given an input string s and a pattern p, implement regular expression matching with support for '.' and '*' where:

 '.' Matches any single character.
 '*' Matches zero or more of the preceding element.
 The matching should cover the entire input string (not partial).

 Example 1:
 Input: s = "aa", p = "a"
 Output: false
 Explanation: "a" does not match the entire string "aa".

 Example 2:
 Input: s = "aa", p = "a*"
 Output: true
 Explanation: '*' means zero or more of the preceding element, 'a'. Therefore, by repeating 'a' once, it becomes "aa".

 Example 3:
 Input: s = "ab", p = ".*"
 Output: true
 Explanation: ".*" means "zero or more (*) of any character (.)".
 */

func isMatch(_ s: String, _ p: String) -> Bool {
    var s = Array(s)
    var p = Array(p)
    var dp = [[Int]: Bool]()
    func dfs(i: Int, j: Int) -> Bool {
        if let found = dp[[i,j]] {
            return found
        }
        if i == s.count && j == p.count {
            return true
        }
        if j == p.count {
            return false
        }
        let match = i < s.count && (s[i] == p[j] || p[j] == ".")
        if j + 1 < p.count && p[j + 1] == "*" {
            dp[[i,j]] = dfs(i: i, j: j + 2) || // Don't use *
                        match && dfs(i: i + 1, j: j) // Use *
            return dp[[i,j]]!
        }
        if match {
            dp[[i,j]] = dfs(i: i + 1, j: j + 1)
            return dp[[i,j]]!
        }
        dp[[i,j]] = false
        return false
    }

    return dfs(i: 0, j: 0)
}

let result = isMatch("aa", "a") // false
print(result)

let result1 = isMatch("aa", "a*") // true
print(result1)

let result2 = isMatch("ab", ".*") // true
print(result2)
