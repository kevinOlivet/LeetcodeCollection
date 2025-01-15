import Foundation

/*
 ## 143. Reorder List
 https://leetcode.com/problems/reorder-list/description/

 You are given the head of a singly linked-list. The list can be represented as:

 L0 → L1 → … → Ln - 1 → Ln
 Reorder the list to be on the following form:

 L0 → Ln → L1 → Ln - 1 → L2 → Ln - 2 → …
 You may not modify the values in the list's nodes. Only nodes themselves may be changed.

 Example 1:
 Input: head = [1,2,3,4]
 Output: [1,4,2,3]

 Example 2:
 Input: head = [1,2,3,4,5]
 Output: [1,5,2,4,3]
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func reorderList(_ head: ListNode?) {
    guard head != nil else { return }
    
    // find middle
    var slow = head
    var fast = head
    while fast != nil && fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
    }

    // split it
    var current = slow?.next
    slow?.next = nil

    // reverse list
    var prev: ListNode?
    while current != nil {
        let next = current?.next
        current?.next = prev
        prev = current
        current = next
    }

    // merge the two halves
    var firstHalf = head
    var secondHalf = prev
    while secondHalf != nil {
        let firstNext = firstHalf?.next
        let secondNext = secondHalf?.next
        firstHalf?.next = secondHalf
        secondHalf?.next = firstNext
        firstHalf = firstNext
        secondHalf = secondNext
    }
}

let twoNode = ListNode(2)
let oneNode = ListNode(1, twoNode)

reorderList(oneNode)
