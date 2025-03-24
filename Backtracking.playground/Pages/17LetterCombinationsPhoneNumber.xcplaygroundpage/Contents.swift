import Foundation

/*
 17. Letter Combinations of a Phone Number
 https://leetcode.com/problems/letter-combinations-of-a-phone-number/

 Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.

 A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.

 Example 1:
 Input: digits = "23"
 Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]

 Example 2:
 Input: digits = ""
 Output: []

 Example 3:
 Input: digits = "2"
 Output: ["a","b","c"]
 */

func letterCombinations(_ digits: String) -> [String] {
    if digits.isEmpty { return [] }
    let digits = Array(digits)
    var result = [String]()
    var current = ""
    let dict: [Character: String] = ["2": "abc",
                                     "3":"def",
                                     "4":"ghi",
                                     "5":"jkl",
                                     "6":"mno",
                                     "7":"pqrs",
                                     "8":"tuv",
                                     "9":"wxyz"]

    func backtrack(i: Int) {
        if i == digits.count {
            result.append(current)
            return
        }
        for c in dict[digits[i], default: ""] {
            current.append(c)
            backtrack(i: i + 1)
            current.popLast()
        }
    }
    backtrack(i: 0)
    return result
}

let result = letterCombinations("23") // ["ad","ae","af","bd","be","bf","cd","ce","cf"]
print(result)

var this = [1,2,3,4]
let sum = this.reduce(0, +)
