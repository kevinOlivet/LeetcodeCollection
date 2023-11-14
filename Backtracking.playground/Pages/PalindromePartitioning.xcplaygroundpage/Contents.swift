import Foundation

func partition(_ s: String) -> [[String]] {
    let arrayS = Array(s)

    var result = [[String]]()
    var subset = [String]()

    func backtrack(i: Int) {
        if i >= s.count {
            result.append(subset)
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
    return result
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

let result = partition("aab")  // [["a", "a", "b"], ["aa", "b"]]
print(result)
