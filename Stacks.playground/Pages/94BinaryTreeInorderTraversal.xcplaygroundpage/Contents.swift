import Foundation

/*
 https://leetcode.com/problems/binary-tree-inorder-traversal/description/

 94. Binary Tree Inorder Traversal (Using a stack instead of recursion

 Given the root of a binary tree, return the inorder traversal of its nodes' values.

 Example 1:
 Input: root = [1,null,2,3]
 Output: [1,3,2]

 Example 2:
 Input: root = []
 Output: []

 Example 3:
 Input: root = [1]
 Output: [1]
 */

// Definition for a binary tree node.
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

func inorderTraversal(_ root: TreeNode?) -> [Int] {

    var result = [Int]()
    var stack = [TreeNode]()
    var current = root

    while current != nil || !stack.isEmpty {
        while current != nil {
            stack.append(current!)
            current = current!.left
        }
        current = stack.popLast()!
        result.append(current!.val)
        current = current!.right
    }
    return result
}
