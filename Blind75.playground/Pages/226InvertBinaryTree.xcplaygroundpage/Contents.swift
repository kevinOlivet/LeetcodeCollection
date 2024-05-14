import Foundation

/*
 ## 226. Invert Binary Tree
 https://leetcode.com/problems/invert-binary-tree/description/

 Given the root of a binary tree, invert the tree, and return its root.

 Example 1:
 Input: root = [4,2,7,1,3,6,9]
 Output: [4,7,2,9,6,3,1]

 Example 2:
 Input: root = [2,1,3]
 Output: [2,3,1]

 Example 3:
 Input: root = []
 Output: []
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

func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let root = root else { return nil }
    root.left = root.right
    
    invertTree(root.left)
    invertTree(root.right)
    return root
}

//            3
//          /   \
//          9   20
//             /  \
//             15  7

let SevenNode = TreeNode(7)
let FifteenNode = TreeNode(15)
let TwentyNode = TreeNode(20, FifteenNode, SevenNode)

let NineNode = TreeNode(9)

let ThreeNode = TreeNode(3, NineNode, TwentyNode)

let result = invertTree(ThreeNode)

print(result)
