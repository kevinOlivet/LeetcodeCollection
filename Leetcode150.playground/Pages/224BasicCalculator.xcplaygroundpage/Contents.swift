import Foundation

/// Evaluates an arithmetic expression containing non-negative integers, `+`, `-`, parentheses, and spaces.
/// - Parameter s: A valid expression string which may include spaces; tokens are non-negative integers, `'+'`, `'-'`, and parentheses. The expression may use unary `-` via standard notation.
/// - Returns: The integer result of evaluating the expression.

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