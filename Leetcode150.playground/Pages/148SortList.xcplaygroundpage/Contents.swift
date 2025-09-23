import Foundation

/*
 ## 148. Sort List
 https://leetcode.com/problems/sort-list/description/?envType=study-plan-v2&envId=top-interview-150

 Given the head of a linked list, return the list after sorting it in ascending order.

 Example 1:
 Input: head = [4,2,1,3]
 Output: [1,2,3,4]

 Example 2:
 Input: head = [-1,5,3,4,0]
 Output: [-1,0,3,4,5]

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

func sortList(_ head: ListNode?) -> ListNode? {
    if head == nil || head?.next == nil {
        return head
    }
    var left = head
    let mid = getMid(head)
    var right = mid?.next
    mid?.next = nil

    left = sortList(left)
    right = sortList(right)

    return merge2Lists(left, right)
}

func getMid(_ head: ListNode?) -> ListNode? {
    var slow = head
    var fast = head?.next
    while fast != nil && fast!.next != nil {
        slow = slow!.next
        fast = fast!.next!.next
    }
    return slow
}
func merge2Lists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let dummy = ListNode()
    var l1 = l1
    var l2 = l2
    var tail = dummy
    while l1 != nil && l2 != nil {
        if l1!.val < l2!.val {
            tail.next = l1
            l1 = l1!.next
        } else {
            tail.next = l2
            l2 = l2!.next
        }
        tail = tail.next!
    }
    if l1 != nil { tail.next = l1 }
    if l2 != nil { tail.next = l2 }
    return dummy.next
}
let three = ListNode(3)
let one = ListNode(1, three)
let two = ListNode(2, one)
let four = ListNode(4, two)

var result = sortList(four)
while result != nil {
    print(result!.val)
    result = result!.next
}
