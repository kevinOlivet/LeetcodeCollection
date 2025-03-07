import Foundation

/*
 ## 138. Copy List with Random Pointer
 https://leetcode.com/problems/copy-list-with-random-pointer/description/

 NOTE: Can be solved in two passes or using func cloneGraph with dfs

 A linked list of length n is given such that each node contains an additional random pointer, which could point to any node in the list, or null.

 Construct a deep copy of the list. The deep copy should consist of exactly n brand new nodes, where each new node has its value set to the value of its corresponding original node. Both the next and random pointer of the new nodes should point to new nodes in the copied list such that the pointers in the original list and copied list represent the same list state. None of the pointers in the new list should point to nodes in the original list.

 For example, if there are two nodes X and Y in the original list, where X.random --> Y, then for the corresponding two nodes x and y in the copied list, x.random --> y.

 Return the head of the copied linked list.

 The linked list is represented in the input/output as a list of n nodes. Each node is represented as a pair of [val, random_index] where:

 val: an integer representing Node.val
 random_index: the index of the node (range from 0 to n-1) that the random pointer points to, or null if it does not point to any node.
 Your code will only be given the head of the original linked list.

 Example 1:
 Input: head = [[7,null],[13,0],[11,4],[10,2],[1,0]]
 Output: [[7,null],[13,0],[11,4],[10,2],[1,0]]

 Example 2:
 Input: head = [[1,1],[2,1]]
 Output: [[1,1],[2,1]]

 Example 3:
 Input: head = [[3,null],[3,0],[3,null]]
 Output: [[3,null],[3,0],[3,null]]
 */

public class Node {
    public var val: Int
    public var next: Node?
    public var random: Node?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
        self.random = nil
    }
}

extension Node: Hashable, Equatable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(val)
    }
    public static func ==(lhs: Node, rhs: Node) -> Bool {
        return lhs.val == rhs.val
    }
    static func <(lhs: Node, rhs: Node) -> Bool {
        return lhs.val < rhs.val
    }
}

// NOTE: Can be solved in two passes or using func cloneGraph with dfs
//func copyRandomList(_ head: Node?) -> Node? {
//    guard let head = head else { return nil }
//    var oldToNew = [Node: Node]()
//    func dfs(_ node: Node) -> Node {
//        if let found = oldToNew[node] { return found }
//        let copy = Node(node.val)
//        oldToNew[node] = copy
//        if let next = node.next {
//            copy.next = dfs(next)
//        }
//        if let random = node.random {
//            copy.random = dfs(random)
//        }
//        return copy
//    }
//    return dfs(head)
//}

func copyRandomList(_ head: Node?) -> Node? {
    guard let head = head else { return nil }
    var oldToCopy = [Node: Node]()
    var current: Node? = head

    while current != nil {
        let copy = Node(current!.val)
        oldToCopy[current!] = copy
        current = current!.next
    }

    current = head
    while current != nil {
        let copy = oldToCopy[current!]!
        if let next = current!.next {
            copy.next = oldToCopy[next]
        }
        if let random = current!.random {
            copy.random = oldToCopy[random]
        }
        current = current!.next
    }
    return oldToCopy[head]
}
