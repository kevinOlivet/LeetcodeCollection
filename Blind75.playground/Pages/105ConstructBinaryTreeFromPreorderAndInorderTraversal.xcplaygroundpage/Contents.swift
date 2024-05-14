import Foundation

/*
 ## 105. Construct Binary Tree from Preorder and Inorder Traversal
 https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/description/

 Given two integer arrays preorder and inorder where preorder is the preorder traversal of a binary tree and inorder is the inorder traversal of the same tree, construct and return the binary tree.

 Example 1:
 Input: preorder = [3,9,20,15,7], inorder = [9,3,15,20,7]
 Output: [3,9,20,null,null,15,7]

 Example 2:
 Input: preorder = [-1], inorder = [-1]
 Output: [-1]
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

func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    if preorder.isEmpty || inorder.isEmpty { return nil }

    let root = TreeNode(preorder[0])
    let mid = inorder.firstIndex(of: preorder[0])!
    root.left = buildTree(Array(preorder[1..<mid + 1]), Array(inorder[0..<mid]))
    root.right = buildTree(Array(preorder[mid + 1..<preorder.count]), Array(inorder[mid + 1..<inorder.count]))
    return root
}


let result = buildTree([3,9,20,15,7], [9,3,15,20,7])
//print(result)
//
//let result1 = buildTree([-1], [-1])
//print(result1)
