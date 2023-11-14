import Foundation

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

//let result = generateParenthesis(3) // ["((()))","(()())","(())()","()(())","()()()"]
//print(result)

func solution(inputString: String) -> String {
    var stack = [Character]()

    for str in inputString {
        if str != ")" {
            // appending everything else
            stack.append(str)
            print("a stack: ", stack)
        } else {
            // as soon as we get a closing bracket, we start popping elements and saving into a new stack until we get an opening bracket
            // since we're following a stack, removing from a stack and adding into a new, it already reversed the elements for us
            var revStr = [Character]()
            while stack.last != "(" {
                // remove character from stack and assign it to variable
                let removedCharacter = stack.removeLast()
                // append it to the temp revStack
                revStr.append(removedCharacter)
                print("stack: ", stack)
                print("revStr: ", revStr)
            }
            // we're removing the last because it's an opening bracket and we don't need it anymore
            stack.removeLast()
            // simply adding the reversedString into our main stack
            stack += revStr
            print("consolidated stack: ", stack)
        }
    }

    return String(stack)
}

let result0 = solution(inputString: "(bar)") // rab
//let result1 = solution(inputString: "foo(bar)baz") // foorabbaz
//let result2 = solution(inputString: "foo(bar)baz(blim)") // foorabbazmilb
//let result3 = solution(inputString: "foo(bar(baz))blim") // foobazrabblim
