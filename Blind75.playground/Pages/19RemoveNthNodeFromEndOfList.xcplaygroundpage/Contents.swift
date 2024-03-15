import Foundation

/*
 ## 19. Remove Nth Node From End of List
 https://leetcode.com/problems/remove-nth-node-from-end-of-list/description/

 Given the head of a linked list, remove the nth node from the end of the list and return its head.

 Example 1:
 Input: head = [1,2,3,4,5], n = 2
 Output: [1,2,3,5]

 Example 2:
 Input: head = [1], n = 1
 Output: []

 Example 3:
 Input: head = [1,2], n = 1
 Output: [1]
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    var dummy = ListNode(0, head)
    var left: ListNode? = dummy
    var right: ListNode? = head

    var n = n

    while n > 0 && right != nil {
        right = right!.next
        n -= 1
    }

    while right != nil {
        left = left?.next
        right = right?.next
    }
    left?.next = left?.next?.next

    return dummy.next
}

let twoNode = ListNode(2)
let oneNode = ListNode(1, twoNode)

let result = removeNthFromEnd(oneNode, 1)
print(result!.val)
