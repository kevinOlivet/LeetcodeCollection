import Foundation

/*
 ## 100. Same Tree
 https://leetcode.com/problems/same-tree/description/

 Given the roots of two binary trees p and q, write a function to check if they are the same or not.

 Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.

 Example 1:
 Input: p = [1,2,3], q = [1,2,3]
 Output: true

 Example 2:
 Input: p = [1,2], q = [1,null,2]
 Output: false

 Example 3:
 Input: p = [1,2,1], q = [1,1,2]
 Output: false
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

func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    if p == nil && q == nil { return true }
    if p == nil || q == nil { return false }
    if p?.val != q?.val { return false }
    return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
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

let SevenNode1 = TreeNode(7)
let FifteenNode1 = TreeNode(15)
let TwentyNode1 = TreeNode(20, FifteenNode1, SevenNode1)

let NineNode1 = TreeNode(9)

let ThreeNode1 = TreeNode(3, NineNode1, TwentyNode1)

let result = isSameTree(ThreeNode, ThreeNode1)
print(result)
