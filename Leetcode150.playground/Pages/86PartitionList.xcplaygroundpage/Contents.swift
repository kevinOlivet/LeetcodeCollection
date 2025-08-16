import Foundation

/*
 ## 86. Partition List
 https://leetcode.com/problems/partition-list/description/?envType=study-plan-v2&envId=top-interview-150

 Given the head of a linked list and a value x, partition it such that all nodes less than x come before nodes greater than or equal to x.

 You should preserve the original relative order of the nodes in each of the two partitions.

 Example 1:
 Input: head = [1,4,3,2,5,2], x = 3
 Output: [1,2,2,4,3,5]

 Example 2:
 Input: head = [2,1], x = 2
 Output: [1,2]
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
    var cur = head
    let leftDummy = ListNode()
    let rightDummy = ListNode()
    var leftTail = leftDummy
    var rightTail = rightDummy

    while cur != nil {
        if cur!.val < x {
            leftTail.next = cur
            leftTail = leftTail.next!
        } else {
            rightTail.next = cur
            rightTail = rightTail.next!
        }
        cur = cur!.next
    }
    leftTail.next = rightDummy.next
    rightTail.next = nil

    return leftDummy.next
}

let twoAgain = ListNode(2)
let five = ListNode(5, twoAgain)
let two = ListNode(2, five)
let three = ListNode(3, two)
let four = ListNode(4, three)
let one = ListNode(1, four)

let result = partition(one, 3) // [1,2,2,4,3,5]
var cur = result
while cur != nil {
    print(cur!.val, terminator: " -> ")
    cur = cur!.next
}
