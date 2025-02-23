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

    func backtrack(open: Int, closed: Int) {
        if open == n && closed == n {
            result.append(current.joined(separator: ""))
            return
        }

        if open < n {
            current.append("(")
            backtrack(open: open + 1, closed: closed)
            current.popLast()
        }

        if closed < open {
            current.append(")")
            backtrack(open: open, closed: closed + 1)
            current.popLast()
        }
    }

    backtrack(open: 0, closed: 0)
    return result
}

let result = generateParenthesis(3) // ["((()))","(()())","(())()","()(())","()()()"]
print(result)

let result1 = generateParenthesis(1) // ["()"]
print(result1)
