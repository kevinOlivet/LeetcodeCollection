import Foundation

/*
 https://leetcode.com/problems/implement-queue-using-stacks/description/

 232. Implement Queue using Stacks
 ie. An Array pretending to be a Stack pretending to be a Queue

 Implement a first in first out (FIFO) queue using only two stacks. The implemented queue should support all the functions of a normal queue (push, peek, pop, and empty).

 Implement the MyQueue class:

 void push(int x) Pushes element x to the back of the queue.
 int pop() Removes the element from the front of the queue and returns it.
 int peek() Returns the element at the front of the queue.
 boolean empty() Returns true if the queue is empty, false otherwise.
 Notes:

 You must use only standard operations of a stack, which means only push to top, peek/pop from top, size, and is empty operations are valid.
 Depending on your language, the stack may not be supported natively. You may simulate a stack using a list or deque (double-ended queue) as long as you use only a stack's standard operations.
 */

class MyQueue {

    var stack: [Int]!

    init() {
        stack = [Int]()
    }

    func push(_ x: Int) {
        stack.append(x)
    }

    func pop() -> Int {
        for _ in 0..<stack.count - 1 {
            let found = stack.removeLast()
            stack.insert(found, at: 0)
        }
        return stack.removeLast()
    }

    func peek() -> Int {
        stack.first!
    }

    func empty() -> Bool {
        return stack.count == 0
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */
