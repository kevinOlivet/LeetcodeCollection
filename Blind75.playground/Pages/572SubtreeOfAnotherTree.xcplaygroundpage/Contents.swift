import Foundation

/*
 ## 572. Subtree of Another Tree
 https://leetcode.com/problems/subtree-of-another-tree/description/

 Given the roots of two binary trees root and subRoot, return true if there is a subtree of root with the same structure and node values of subRoot and false otherwise.

 A subtree of a binary tree tree is a tree that consists of a node in tree and all of this node's descendants. The tree tree could also be considered as a subtree of itself.

 Example 1:
 Input: root = [3,4,5,1,2], subRoot = [4,1,2]
 Output: true

 Example 2:
 Input: root = [3,4,5,1,2,null,null,null,null,0], subRoot = [4,1,2]
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

func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {

    if subRoot == nil { return true }
    if root == nil { return false }

    if isSameTree(root, subRoot) {
        return true
    }

    return isSubtree(root?.left, subRoot) || isSubtree(root?.right, subRoot)
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

let result = isSubtree(ThreeNode, TwentyNode1) // true
print(result)
