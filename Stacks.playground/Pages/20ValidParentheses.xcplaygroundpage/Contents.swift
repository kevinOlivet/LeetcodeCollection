import Foundation

/*
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
    if s.count % 2 != 0 { return false }

    var myStack = [Character]()

    for i in s {
        if i == "{" || i == "[" || i == "(" {
            myStack.append(i)
        } else if i == "}" && !myStack.isEmpty && myStack.last == "{" {
            myStack.popLast()
        } else if i == "]" && !myStack.isEmpty && myStack.last == "[" {
            myStack.popLast()
        } else if i == ")" && !myStack.isEmpty && myStack.last == "(" {
            myStack.popLast()
        } else {
            return false
        }
    }
    return myStack.isEmpty
}
