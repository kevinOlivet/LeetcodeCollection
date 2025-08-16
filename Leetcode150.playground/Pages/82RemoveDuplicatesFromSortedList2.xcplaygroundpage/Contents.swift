import Foundation

/*
 ## 82. Remove Duplicates from Sorted List II, Remove Duplicates from Sorted List 2
 https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/description/?envType=study-plan-v2&envId=top-interview-150

 Given the head of a sorted linked list, delete all nodes that have duplicate numbers, leaving only distinct numbers from the original list. Return the linked list sorted as well.

 Example 1:
 Input: head = [1,2,3,3,4,4,5]
 Output: [1,2,5]

 Example 2:
 Input: head = [1,1,1,2,3]
 Output: [2,3]

 List is sorted
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func deleteDuplicates(_ head: ListNode?) -> ListNode? {

    let dummy = ListNode(0, head)
    var cur = dummy

    while cur.next != nil && cur.next!.next != nil {
        if cur.next!.val == cur.next!.next!.val {
            let val = cur.next!.val
            while cur.next != nil && cur.next!.val == val {
                cur.next = cur.next!.next
            }
        } else {
            cur = cur.next!
        }
    }

    return dummy.next
}

let five = ListNode(5)
let fourAgain = ListNode(4, five)
let four = ListNode(4, fourAgain)
let threeAgain = ListNode(3, four)
let three = ListNode(3, threeAgain)
let two = ListNode(2, three)
let one = ListNode(1, two)

let result = deleteDuplicates(one)
var cur = result
while cur != nil {
    print(cur!.val, terminator: " -> ")
    cur = cur!.next
}
