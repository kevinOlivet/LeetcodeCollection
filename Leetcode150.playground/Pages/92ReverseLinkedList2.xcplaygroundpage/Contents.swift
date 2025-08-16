import Foundation

/*
 ## 92. Reverse Linked List II, Reverse Linked List 2
 https://leetcode.com/problems/reverse-linked-list-ii/description/?envType=study-plan-v2&envId=top-interview-150

 Given the head of a singly linked list and two integers left and right where left <= right, reverse the nodes of the list from position left to position right, and return the reversed list.

 Example 1:
 Input: head = [1,2,3,4,5], left = 2, right = 4
 Output: [1,4,3,2,5]

 Example 2:
 Input: head = [5], left = 1, right = 1
 Output: [5]
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {

    let dummy = ListNode(0, head)
    var leftPrev = dummy
    var cur = head

    for i in 0..<(left - 1) {
        leftPrev = cur!
        cur = cur?.next
    }
    var prev: ListNode?
    for i in 0..<(right - left + 1) {
        let next = cur?.next
        cur?.next = prev
        prev = cur
        cur = next
    }
    leftPrev.next?.next = cur
    leftPrev.next = prev

    return dummy.next
}

let five = ListNode(5)
let four = ListNode(4, five)
let three = ListNode(3, four)
let two = ListNode(2, three)
let one = ListNode(1, two)

let result = reverseBetween(one, 2, 4)
print(result)
