import Foundation

/*
 ## 25. Reverse Nodes in k-Group
 https://leetcode.com/problems/reverse-nodes-in-k-group/description/

 Given the head of a linked list, reverse the nodes of the list k at a time, and return the modified list.

 k is a positive integer and is less than or equal to the length of the linked list. If the number of nodes is not a multiple of k then left-out nodes, in the end, should remain as it is.

 You may not alter the values in the list's nodes, only nodes themselves may be changed.

 Example 1:
 Input: head = [1,2,3,4,5], k = 2
 Output: [2,1,4,3,5]

 Example 2:
 Input: head = [1,2,3,4,5], k = 3
 Output: [3,2,1,4,5]
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


//func getNextGroupFirst(curr: ListNode?, k: Int) -> ListNode? {
//    var k = k
//    var curr = curr
//    while curr != nil && k > 0 {
//        curr = curr!.next
//        k -= 1
//    }
//    return curr
//}

func getKth(curr: ListNode?, k: Int) -> ListNode? {
    var k = k
    var curr = curr
    while curr != nil && k > 0 {
        curr = curr!.next
        k -= 1
    }
    return curr
}

func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
//    let dummy = ListNode(0, head)
//    var groupFirst = dummy
//    while let kth = getNextGroupFirst(curr: groupFirst, k: k) {
//        let nextGroupFirst = kth.next
//        // reverse linked list
//        var prev = kth.next
//        var curr = groupFirst.next
//        while curr !== nextGroupFirst {
//            let next = curr?.next
//            curr?.next = prev
//            prev = curr
//            curr = next
//        }
//        let next = groupFirst.next!
//        groupFirst.next = kth
//        groupFirst = next
//    }
//    return dummy.next

    let dummy = ListNode(0, head)
    var groupPrev = dummy

    while let kth = getKth(curr: groupPrev, k: k) {
        let groupNext = kth.next

        // reverse group
        var prev = kth.next
        var curr = groupPrev.next
        
        while curr !== groupNext {
            let next = curr?.next
            curr?.next = prev
            prev = curr
            curr = next
        }

        let next = groupPrev.next!
        groupPrev.next = kth
        groupPrev = next
    }
    return dummy.next
}

let five = ListNode(5)
let four = ListNode(4, five)
let three = ListNode(3, four)
let two = ListNode(2, three)
let one = ListNode(1, two)

let result = reverseKGroup(one, 2)
print(result!.val)
