import Foundation

/*
 ## 20. Valid Parentheses
 https://leetcode.com/problems/valid-parentheses/description/

 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Every close bracket has a corresponding open bracket of the same type.

 Example 1:
 Input: s = "()"
 Output: true

 Example 2:
 Input: s = "()[]{}"
 Output: true

 Example 3:
 Input: s = "(]"
 Output: false
 */

func isValid(_ s: String) -> Bool {

    let s = Array(s)
    var dict: [Character: Character] = [")": "(", "}": "{", "]": "["]
    var stack = [Character]()

    for c in s {
        if !stack.isEmpty && stack.last! == dict[c] {
            stack.popLast()
        } else {
            stack.append(c)
        }
    }

    return stack.isEmpty
}

let result = isValid("()") // true
print(result)

let result1 = isValid("()[]{}") // true
print(result1)

let result2 = isValid("(]") // false
print(result2)
