import Foundation

/*
 https://leetcode.com/problems/min-stack/description/

 Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

 Implement the MinStack class:

 MinStack() initializes the stack object.
 void push(int val) pushes the element val onto the stack.
 void pop() removes the element on the top of the stack.
 int top() gets the top element of the stack.
 int getMin() retrieves the minimum element in the stack.

 Here's the rub:
 You must implement a solution with O(1) time complexity for each function.
 Especially the func getMin()
 */

class MinStack {

    var holder: [Int]!
    var minStack: [Int]!

    init() {
        holder = [Int]()
        minStack = [Int]()
    }

    func push(_ val: Int) {
        holder.append(val)
        let newMin = minStack.last ?? val
        minStack.append(min(newMin, val))
    }

    func pop() {
        holder.popLast()
        minStack.popLast()
    }

    func top() -> Int {
        return holder.last ?? 0
    }

    func getMin() -> Int {
        return minStack.last ?? 0
    }
}
