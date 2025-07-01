import Foundation

/*
 Count number of changes needed to balance the parentheses
 */

func parenChanges(_ s: String) -> Int {
    var left = 0
    var right = 0

    for c in s {
        if c == "(" {
            left += 1
        } else if c == ")" {
            if left > 0 {
                left -= 1
            } else {
                right += 1
            }
        }
    }
    return right + left
}

print(parenChanges("))")) // Output: 2
print(parenChanges("))(()")) // Output: 3
print(parenChanges("()")) // Output: 0
print(parenChanges("()()(())))")) // Output: 2
