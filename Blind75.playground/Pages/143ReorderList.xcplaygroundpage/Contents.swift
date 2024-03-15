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
    var slow = head
    var fast = head?.next

    // find middle
    while fast != nil && fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next
    }

    // split it
    var second = slow?.next
    // prev holder
    slow?.next = nil
    var prev: ListNode? = slow?.next

    while second != nil {
        let temp = second?.next
        second?.next = prev
        prev = second
        second = temp
    }

    // merge the two halves
    var first = head
    var secondHalf = prev
    while secondHalf != nil {
        let temp1 = first?.next
        let temp2 = secondHalf?.next
        first?.next = secondHalf
        secondHalf?.next = temp1
        first = temp1
        secondHalf = temp2
    }
}

let twoNode = ListNode(2)
let oneNode = ListNode(1, twoNode)

reorderList(oneNode)
