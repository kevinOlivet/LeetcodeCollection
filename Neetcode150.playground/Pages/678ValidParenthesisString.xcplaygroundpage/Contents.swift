import Foundation

/*
 ## 678. Valid Parenthesis String
 https://leetcode.com/problems/valid-parenthesis-string/description/

 Given a string s containing only three types of characters: '(', ')' and '*', return true if s is valid.

 The following rules define a valid string:

 Any left parenthesis '(' must have a corresponding right parenthesis ')'.
 Any right parenthesis ')' must have a corresponding left parenthesis '('.
 Left parenthesis '(' must go before the corresponding right parenthesis ')'.
 '*' could be treated as a single right parenthesis ')' or a single left parenthesis '(' or an empty string "".

 Example 1:
 Input: s = "()"
 Output: true

 Example 2:
 Input: s = "(*)"
 Output: true

 Example 3:
 Input: s = "(*))"
 Output: true
 */

func checkValidString(_ s: String) -> Bool {
    var leftMin = 0
    var leftMax = 0

    for c in s {
        if c == "(" {
            leftMin += 1
            leftMax += 1
        } else if c == ")" {
            leftMin -= 1
            leftMax -= 1
        } else {
            leftMin -= 1
            leftMax += 1
        }

        if leftMax < 0 {
            return false
        }
        if leftMin < 0 {
            leftMin = 0
        }
    }
    return leftMin == 0
}

let result = checkValidString("()") // true
print(result)

let result1 = checkValidString("(*)") // true
print(result1)

let result2 = checkValidString("(*))") // true
print(result2)

let result3 = checkValidString("(*)(") // false
print(result3)
