import Foundation

/*
 ## 61. Rotate List
 https://leetcode.com/problems/rotate-list/description/?envType=study-plan-v2&envId=top-interview-150

 Given the head of a linked list, rotate the list to the right by k places.

 Example 1:
 Input: head = [1,2,3,4,5], k = 2
 Output: [4,5,1,2,3]

 Example 2:
 Input: head = [0,1,2], k = 4
 Output: [2,0,1]
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
    if head == nil { return head }
    var tail = head
    var length = 1
    while tail?.next != nil {
        tail = tail?.next
        length += 1
    }

    let k = k % length
    if k == 0 { return head }

    var cur = head
    for i in 0..<(length - k - 1) {
        cur = cur?.next
    }
    let newHead = cur?.next
    cur?.next = nil
    tail?.next = head
    return newHead
}

let five = ListNode(5)
let four = ListNode(4, five)
let three = ListNode(3, four)
let two = ListNode(2, three)
let one = ListNode(1, two)

let result = rotateRight(one, 2) // [4,5,1,2,3]
var cur = result
while cur != nil {
    print(cur!.val, terminator: " -> ")
    cur = cur!.next
}
