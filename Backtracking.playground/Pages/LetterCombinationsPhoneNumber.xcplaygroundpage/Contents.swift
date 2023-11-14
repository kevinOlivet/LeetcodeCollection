import Foundation

func letterCombinations(_ digits: String) -> [String] {
    let arrayDigits = Array(digits)
    let dict: [Character: String] = ["1": "", "2": "abc", "3":"def", "4":"ghi", "5":"jkl", "6":"mno", "7":"pqrs", "8":"tuv", "9":"wxyz", "0": ""]

    var result = [String]()

    func backtrack(i: Int, curStr: String) {
        if curStr.count == arrayDigits.count {
            result.append(curStr)
            return
        }

        for c in dict[arrayDigits[i]]! {
            let arrayC = Array(arrayLiteral: c)
            backtrack(i: i + 1, curStr: curStr + arrayC)

        }
    }

    if !arrayDigits.isEmpty {
        backtrack(i: 0, curStr: "")
    }

    return result
}

let result = letterCombinations("23") // ["ad","ae","af","bd","be","bf","cd","ce","cf"]
print(result)

var this = [1,2,3,4]
let sum = this.reduce(0, +)
