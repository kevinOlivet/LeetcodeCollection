import Foundation

/*
 ## 21. Merge Two Sorted Lists
 https://leetcode.com/problems/merge-two-sorted-lists/description/

 You are given the heads of two sorted linked lists list1 and list2.

 Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.

 Return the head of the merged linked list.

 Example 1:
 Input: list1 = [1,2,4], list2 = [1,3,4]
 Output: [1,1,2,3,4,4]

 Example 2:
 Input: list1 = [], list2 = []
 Output: []

 Example 3:
 Input: list1 = [], list2 = [0]
 Output: [0]
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {

    var list1 = list1
    var list2 = list2

    let dummy = ListNode()
    var tail = dummy

    while list1 != nil && list2 != nil {
        if list1!.val < list2!.val {
            tail.next = list1
            list1 = list1!.next
        } else {
            tail.next = list2
            list2 = list2!.next
        }
        tail = tail.next!
    }

    if list1 != nil {
        tail.next = list1
    }
    if list2 != nil {
        tail.next = list2
    }

    return dummy.next
}

let three = ListNode(3)
let oneNode = ListNode(1, three)

let four = ListNode(4)
let twoNode = ListNode(2, four)
let result = mergeTwoLists(oneNode, twoNode)
print(result!.val)
