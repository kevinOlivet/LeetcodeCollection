import Foundation

/*
 ## 206. Reverse Linked List
 https://leetcode.com/problems/reverse-linked-list/description/

 Given the head of a singly linked list, reverse the list, and return the reversed list.

 Example 1:
 Input: head = [1,2,3,4,5]
 Output: [5,4,3,2,1]

 Example 2:
 Input: head = [1,2]
 Output: [2,1]

 Example 3:
 Input: head = []
 Output: []
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func reverseList(_ head: ListNode?) -> ListNode? {
    var prev: ListNode? = nil
    var current = head
    while current != nil {
        let next = current!.next
        current!.next = prev
        prev = current
        current = next
    }
    return prev
}

let five = ListNode(5)
let four = ListNode(4, five)
let three = ListNode(3, four)
let two = ListNode(2, three)
let one = ListNode(1, two)

let result = reverseList(one)
print(result?.val)
