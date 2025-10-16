import Foundation

/*
 ## 224. Basic Calculator
 https://leetcode.com/problems/basic-calculator/description/?envType=study-plan-v2&envId=top-interview-150

 Given a string s representing a valid expression, implement a basic calculator to evaluate it, and return the result of the evaluation.

 Note: You are not allowed to use any built-in function which evaluates strings as mathematical expressions, such as eval().

 Example 1:
 Input: s = "1 + 1"
 Output: 2

 Example 2:
 Input: s = " 2-1 + 2 "
 Output: 3

 Example 3:
 Input: s = "(1+(4+5+2)-3)+(6+8)"
 Output: 23

 Constraints:
 1 <= s.length <= 3 * 105
 s consists of digits, '+', '-', '(', ')', and ' '.
 s represents a valid expression.
 '+' is not used as a unary operation (i.e., "+1" and "+(2 + 3)" is invalid).
 '-' could be used as a unary operation (i.e., "-1" and "-(2 + 3)" is valid).
 There will be no two consecutive operators in the input.
 Every number and running calculation will fit in a signed 32-bit integer.
 */

func calculate(_ s: String) -> Int {
    var output = 0
    var cur = 0
    var sign = 1
    var stack = [Int]()

    for c in s {
        if let digit = c.wholeNumberValue {
            cur = cur * 10 + digit
        } else if "+-".contains(c) {
            output += (cur * sign) // Add to output considering sign
            cur = 0
            sign = c == "-" ? -1 : 1
        } else if c == "(" {
            stack.append(output)
            stack.append(sign) // Save sign to know later
            output = 0
            sign = 1
        } else if c == ")" {
            output += (cur * sign) // Add to output considering sign
            output *= stack.removeLast() // Times sign to make + or -
            output += stack.removeLast() // Then add what was on the stack after the sign
            cur = 0
        }
    }
    return output + (cur * sign) // In case the last wasn't ")"
}

let result = calculate("1 + 1") // 2
print(result)

let result1 = calculate(" 2-1 + 2 ") // 3
print(result1)

let result2 = calculate("(1+(4+5+2)-3)+(6+8)") // 23
print(result2)
