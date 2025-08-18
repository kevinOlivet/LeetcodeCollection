import Foundation

/*
 ## 106. Construct Binary Tree from Inorder and Postorder Traversal
 https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/description/?envType=study-plan-v2&envId=top-interview-150

 Given two integer arrays inorder and postorder where inorder is the inorder traversal of a binary tree and postorder is the postorder traversal of the same tree, construct and return the binary tree.

 Example 1:
 Input: inorder = [9,3,15,20,7], postorder = [9,15,7,20,3]
 Output: [3,9,20,null,null,15,7]

 Example 2:
 Input: inorder = [-1], postorder = [-1]
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

func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {

    if inorder.isEmpty || postorder.isEmpty { return nil }
    let root = TreeNode(postorder.last!)
    let mid = inorder.firstIndex(of: postorder.last!)!

    root.left = buildTree(Array(inorder[0..<mid]),
                          Array(postorder[0..<mid]))

    root.right = buildTree(Array(inorder[(mid+1)...]),
                           Array(postorder[mid..<postorder.count-1]))
    return root
}


var result = buildTree([9,3,15,20,7], [9,15,7,20,3]) // [3,9,20,null,null,15,7]
print(result)
