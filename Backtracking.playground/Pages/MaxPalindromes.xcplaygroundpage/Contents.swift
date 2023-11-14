import Foundation

// Times out on larger strings
// https://leetcode.com/problems/maximum-number-of-non-overlapping-palindrome-substrings/description/

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
