import Foundation

// Times out on larger strings

/*
 2472. Maximum Number of Non-overlapping Palindrome Substrings
 https://leetcode.com/problems/maximum-number-of-non-overlapping-palindrome-substrings/description/

 You are given a string s and a positive integer k.

 Select a set of non-overlapping substrings from the string s that satisfy the following conditions:

 The length of each substring is at least k.
 Each substring is a palindrome.
 Return the maximum number of substrings in an optimal selection.

 A substring is a contiguous sequence of characters within a string.

 Example 1:
 Input: s = "abaccdbbd", k = 3
 Output: 2
 Explanation: We can select the substrings underlined in s = "abaccdbbd". Both "aba" and "dbbd" are palindromes and have a length of at least k = 3.
 It can be shown that we cannot find a selection with more than two valid substrings.

 Example 2:
 Input: s = "adbcda", k = 2
 Output: 0
 Explanation: There is no palindrome substring of length at least 2 in the string.
 */

func maxPalindromes(_ s: String, _ k: Int) -> Int {

    let arrayS = Array(s)

    var result = [[String]]()
    var subset = [String]()

    func backtrack(i: Int) {
        if i >= s.count {
            let filteredSubset = subset.filter { $0.count >= k }
            if !filteredSubset.isEmpty {
                result.append(filteredSubset)
            }
            return
        }

        for j in i..<s.count {
            if isPalindrome(s: s, l: i, r: j) {
                let newPart = String(arrayS[i...j])
                subset.append(newPart)
                backtrack(i: j + 1)
                subset.popLast()
            }
        }
    }

    backtrack(i: 0)

    var count = 0
    for i in result {
        count = max(i.count, count)
    }
    return count

}

func isPalindrome(s: String, l: Int, r: Int) -> Bool {
    let s = Array(s)
    var l = l
    var r = r
    while l < r {
        if s[l] != s[r] {
            return false
        }
        l += 1
        r -= 1
    }
    return true
}

let result = maxPalindromes("abaccdbbd", 3) // 2
print(result)

let timeOutResult = maxPalindromes("sjbxiufnaanqkwsqswkqrcznzcddhtuhtthuttjfuufjtcfywgecegwyhhnnhtozczirynhhnyrire", 3)
print(timeOutResult)
