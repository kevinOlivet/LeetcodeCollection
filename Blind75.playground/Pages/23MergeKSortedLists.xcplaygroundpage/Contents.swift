import Foundation

/*
 ## 23. Merge k Sorted Lists
 https://leetcode.com/problems/merge-k-sorted-lists/description/

 You are given an array of k linked-lists lists, each linked-list is sorted in ascending order.

 Merge all the linked-lists into one sorted linked-list and return it.

 Example 1:
 Input: lists = [[1,4,5],[1,3,4],[2,6]]
 Output: [1,1,2,3,4,4,5,6]
 Explanation: The linked-lists are:
 [
   1->4->5,
   1->3->4,
   2->6
 ]
 merging them into one sorted list:
 1->1->2->3->4->4->5->6

 Example 2:
 Input: lists = []
 Output: []

 Example 3:
 Input: lists = [[]]
 Output: []
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
    if lists.isEmpty { return nil }
    var lists = lists
    while lists.count > 1 {
        var mergedLists = [ListNode?]()
        for i in stride(from: 0, to: lists.count, by: 2) {
            let l1 = lists[i]
            let l2: ListNode? = i + 1 < lists.count ? lists[i + 1] : nil
            mergedLists.append(mergeTwoLists(l1, l2))
        }
        lists = mergedLists
    }

        func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {

            var list1 = list1
            var list2 = list2

            let dummy: ListNode = ListNode()
            var tail: ListNode? = dummy

            while list1 != nil && list2 != nil {
                if list1!.val < list2!.val {
                    tail!.next = list1
                    list1 = list1!.next
                } else {
                    tail!.next = list2
                    list2 = list2!.next
                }
                tail = tail!.next
            }

            if list1 != nil {
                tail!.next = list1
            }
            if list2 != nil {
                tail!.next = list2
            }

            return dummy.next
        }
    return lists[0]
    
}

let oneNode = ListNode(1)
let twoNode = ListNode(2)
let result = mergeKLists([oneNode, twoNode])
print(result!.val)
