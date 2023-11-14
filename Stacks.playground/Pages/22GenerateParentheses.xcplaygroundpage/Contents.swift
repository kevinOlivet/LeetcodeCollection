import Foundation

/*
 22. Generate Parentheses
 https://leetcode.com/problems/generate-parentheses/description/

 Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.

 Example 1:
 Input: n = 3
 Output: ["((()))","(()())","(())()","()(())","()()()"]

 Example 2:
 Input: n = 1
 Output: ["()"]
 */

func generateParenthesis(_ n: Int) -> [String] {

    var result = [String]()
    var current = [""]

    func backtrack(openCount: Int, closedCount: Int) {
        if openCount == n && closedCount == n {
            result.append(current.joined(separator: ""))
            return
        }

        if openCount < n {
            current.append("(")
            backtrack(openCount: openCount + 1, closedCount: closedCount)
            current.popLast()
        }

        if closedCount < openCount {
            current.append(")")
            backtrack(openCount: openCount, closedCount: closedCount + 1)
            current.popLast()
        }
    }

    backtrack(openCount: 0, closedCount: 0)
    return result
}

let result = generateParenthesis(3) // ["((()))","(()())","(())()","()(())","()()()"]
print(result)

let result1 = generateParenthesis(1) // ["()"]
print(result1)
