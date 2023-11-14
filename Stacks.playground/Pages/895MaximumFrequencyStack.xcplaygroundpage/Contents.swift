import Foundation

/*
 https://leetcode.com/problems/maximum-frequency-stack/

 895. Maximum Frequency Stack

 Design a stack-like data structure to push elements to the stack and pop the most frequent element from the stack.

 Implement the FreqStack class:

 FreqStack() constructs an empty frequency stack.
 void push(int val) pushes an integer val onto the top of the stack.
 int pop() removes and returns the most frequent element in the stack.
 If there is a tie for the most frequent element, the element closest to the stack's top is removed and returned.

 Example 1:
 Input
 ["FreqStack", "push", "push", "push", "push", "push", "push", "pop", "pop", "pop", "pop"]
 [[], [5], [7], [5], [7], [4], [5], [], [], [], []]
 Output
 [null, null, null, null, null, null, null, 5, 7, 5, 4]

 Explanation
 FreqStack freqStack = new FreqStack();
 freqStack.push(5); // The stack is [5]
 freqStack.push(7); // The stack is [5,7]
 freqStack.push(5); // The stack is [5,7,5]
 freqStack.push(7); // The stack is [5,7,5,7]
 freqStack.push(4); // The stack is [5,7,5,7,4]
 freqStack.push(5); // The stack is [5,7,5,7,4,5]
 freqStack.pop();   // return 5, as 5 is the most frequent. The stack becomes [5,7,5,7,4].
 freqStack.pop();   // return 7, as 5 and 7 is the most frequent, but 7 is closest to the top. The stack becomes [5,7,5,4].
 freqStack.pop();   // return 5, as 5 is the most frequent. The stack becomes [5,7,4].
 freqStack.pop();   // return 4, as 4, 5 and 7 is the most frequent, but 4 is closest to the top. The stack becomes [5,7].
 */

class FreqStack {

    var cnt: [Int: Int]!
    var maxCnt: Int!
    var stacks: [Int: [Int]]!

    init() {
        cnt = [Int: Int]()
        maxCnt = 0
        stacks = [Int: [Int]]()
    }

    func push(_ val: Int) {
        let valCnt = cnt[val, default: 0] + 1
        cnt[val] = valCnt
        if valCnt > maxCnt {
            maxCnt = valCnt
            stacks[valCnt] = []
        }
        stacks[valCnt]!.append(val)
    }

    func pop() -> Int {
        let res = stacks[maxCnt]!.popLast()!
        cnt[res]! -= 1
        if stacks[maxCnt]!.isEmpty {
            maxCnt -= 1
        }
        return res
    }
}

/**
 * Your FreqStack object will be instantiated and called as such:
 * let obj = FreqStack()
 * obj.push(val)
 * let ret_2: Int = obj.pop()
 */

let obj = FreqStack()
obj.push(2)
let ret_2: Int = obj.pop()
