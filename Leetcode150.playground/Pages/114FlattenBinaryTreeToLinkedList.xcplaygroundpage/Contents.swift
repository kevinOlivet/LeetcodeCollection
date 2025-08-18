import Foundation

/*
 ## 114. Flatten Binary Tree to Linked List
 https://leetcode.com/problems/flatten-binary-tree-to-linked-list/description/?envType=study-plan-v2&envId=top-interview-150

 Given the root of a binary tree, flatten the tree into a "linked list":

 The "linked list" should use the same TreeNode class where the right child pointer points to the next node in the list and the left child pointer is always null.
 The "linked list" should be in the same order as a pre-order traversal of the binary tree.

 Example 1:
 Input: root = [1,2,5,3,4,null,6]
 Output: [1,null,2,null,3,null,4,null,5,null,6]

 Example 2:
 Input: root = []
 Output: []

 Example 3:
 Input: root = [0]
 Output: [0]
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

func flatten(_ root: TreeNode?) {

    func dfs(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }

        let leftTail = dfs(root.left)
        let rightTail = dfs(root.right)

        if root.left != nil {
            // connect end of left side to root.right
            leftTail?.right = root.right
            // slip left side into right side
            root.right = root.left
            // cut it's previous ties
            root.left = nil
        }
        let last = rightTail ?? leftTail ?? root
        return last
    }
    dfs(root)
}

//          1
//        /   \
//      2       5
//     / \        \
//    3   4         6

let three = TreeNode(3)
let four = TreeNode(4)
let two = TreeNode(2, three, four)

let six = TreeNode(6)
let five = TreeNode(5, nil, six)

let one = TreeNode(1, two, five)

let result = flatten(one) // [1,null,2,null,3,null,4,null,5,null,6]
print(result)
