import Foundation

/*
 ## 24. Swap Nodes in Pairs
 https://leetcode.com/problems/swap-nodes-in-pairs/description/

 Given a linked list, swap every two adjacent nodes and return its head. You must solve the problem without modifying the values in the list's nodes (i.e., only nodes themselves may be changed.)

 Example 1:
 Input: head = [1,2,3,4]
 Output: [2,1,4,3]
 Explanation:

 Example 2:
 Input: head = []
 Output: []

 Example 3:
 Input: head = [1]
 Output: [1]

 Example 4:
 Input: head = [1,2,3]
 Output: [2,1,3]
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func swapPairs(_ head: ListNode?) -> ListNode? {

    let dummy = ListNode(0, head)
    var prev = dummy
    var current = head

    while current != nil && current?.next != nil {
        // save pointers
        let nextPair = current!.next!.next
        let second = current!.next!

        // reverse this pair
        second.next = current!
        current!.next = nextPair
        prev.next = second

        // update pointers
        prev = current!
        current = nextPair
    }

    return dummy.next
}

let five = ListNode(5)
let four = ListNode(4, five)
let three = ListNode(3, four)
let two = ListNode(2, three)
let one = ListNode(1, two)

let result = swapPairs(one)
print(result?.val)
