import Foundation

/*
 97. Interleaving String
 https://leetcode.com/problems/interleaving-string/description/

 Given strings s1, s2, and s3, find whether s3 is formed by an interleaving of s1 and s2.

 An interleaving of two strings s and t is a configuration where s and t are divided into n and m
 substrings
  respectively, such that:

 s = s1 + s2 + ... + sn
 t = t1 + t2 + ... + tm
 |n - m| <= 1
 The interleaving is s1 + t1 + s2 + t2 + s3 + t3 + ... or t1 + s1 + t2 + s2 + t3 + s3 + ...
 Note: a + b is the concatenation of strings a and b.

 Example 1:
 Input: s1 = "aabcc", s2 = "dbbca", s3 = "aadbbcbcac"
 Output: true
 Explanation: One way to obtain s3 is:
 Split s1 into s1 = "aa" + "bc" + "c", and s2 into s2 = "dbbc" + "a".
 Interleaving the two splits, we get "aa" + "dbbc" + "bc" + "a" + "c" = "aadbbcbcac".
 Since s3 can be obtained by interleaving s1 and s2, we return true.

 Example 2:
 Input: s1 = "aabcc", s2 = "dbbca", s3 = "aadbbbaccc"
 Output: false
 Explanation: Notice how it is impossible to interleave s2 with any other string to obtain s3.

 Example 3:
 Input: s1 = "", s2 = "", s3 = ""
 Output: true
 */

print("---- Bottom Up Dynamic Programming solution_______")

// Bottom Up Dynamic Programming solution
func isInterleave(_ s1: String, _ s2: String, _ s3: String) -> Bool {
    if s1.count + s2.count != s3.count { return false }

    let s1 = Array(s1)
    let s2 = Array(s2)
    let s3 = Array(s3)

    var dp = Array(repeating: Array(repeating: false, count: s2.count + 1),
                   count: s1.count + 1)
    dp[s1.count][s2.count] = true

    for r in (0...s1.count).reversed() {
        for c in (0...s2.count).reversed() {
            // Add r and c to get s3 index
            // If use r then check down is true
            if r < s1.count && s1[r] == s3[r + c] && dp[r + 1][c] {
                dp[r][c] = true
            }
            // If use c then check right is true
            if c < s2.count && s2[c] == s3[r + c] && dp[r][c + 1] {
                dp[r][c] = true
            }
        }
    }

    return dp[0][0]
}

let result = isInterleave("aabcc", "dbbca", "aadbbcbcac") // true
print(result)

let result1 = isInterleave("aabcc", "dbbca", "aadbbbaccc") // false
print(result1)

let result2 = isInterleave("", "", "") // true
print(result2)

print("---- Recursive solution_______")

// Recursive solution
func isInterleave2(_ s1: String, _ s2: String, _ s3: String) -> Bool {
    if s1.count + s2.count != s3.count { return false }
    var dp = [[Int]: Bool]()
    let s1 = Array(s1)
    let s2 = Array(s2)
    let s3 = Array(s3)

    func dfs(i: Int, j: Int) -> Bool {
        if i == s1.count && j == s2.count {
            return true
        }
        if let found = dp[[i,j]] {
            return found
        }

        if i < s1.count && s1[i] == s3[i + j] && dfs(i: i + 1, j: j) {
            return true
        }
        if j < s2.count && s2[j] == s3[i + j] && dfs(i: i, j: j + 1) {
            return true
        }
        dp[[i, j]] = false
        return false
    }
    return dfs(i: 0, j: 0)
}

let resul3 = isInterleave2("aabcc", "dbbca", "aadbbcbcac") // true
print(resul3)

let result4 = isInterleave2("aabcc", "dbbca", "aadbbbaccc") // false
print(result4)

let result5 = isInterleave2("", "", "") // true
print(result5)
