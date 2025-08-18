import Foundation

/*
 ## 117. Populating Next Right Pointers in Each Node II
 https://leetcode.com/problems/populating-next-right-pointers-in-each-node-ii/description/?envType=study-plan-v2&envId=top-interview-150

 Given a binary tree

 struct Node {
 int val;
 Node *left;
 Node *right;
 Node *next;
 }
 Populate each next pointer to point to its next right node. If there is no next right node, the next pointer should be set to NULL.

 Initially, all next pointers are set to NULL.

 Example 1:
 Input: root = [1,2,3,4,5,null,7]
 Output: [1,#,2,3,#,4,5,7,#]
 Explanation: Given the above binary tree (Figure A), your function should populate each next pointer to point to its next right node, just like in Figure B. The serialized output is in level order as connected by the next pointers, with '#' signifying the end of each level.

 Example 2:
 Input: root = []
 Output: []
 */

public class Node {
    public var val: Int
    public var left: Node?
    public var right: Node?
    public var next: Node?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
        self.next = nil
    }
}

func connect(_ root: Node?) -> Node? {

    if root == nil { return nil }
    var q = [root]

    while !q.isEmpty {
        let size = q.count

        for i in 0..<size {
            var cur = q.removeFirst()

            if i < size - 1 {
                cur?.next = q[0]
            }
            if cur?.left != nil {
                q.append(cur?.left)
            }
            if cur?.right != nil {
                q.append(cur?.right)
            }
        }
    }
    return root
}
