import Foundation

/*
 ## 98. Validate Binary Search Tree
 https://leetcode.com/problems/validate-binary-search-tree/description/

 Given the root of a binary tree, determine if it is a valid binary search tree (BST).

 A valid BST is defined as follows:

 The left subtree of a node contains only nodes with keys less than the node's key.
 The right subtree of a node contains only nodes with keys greater than the node's key.
 Both the left and right subtrees must also be binary search trees.

 Example 1:
 Input: root = [2,1,3]
 Output: true

 Example 2:
 Input: root = [5,1,4,null,null,3,6]
 Output: false
 Explanation: The root node's value is 5 but its right child's value is 4.
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

func isValidBST(_ root: TreeNode?) -> Bool {

    func valid(_ node: TreeNode?, _ left: Int, _ right: Int) -> Bool {
        guard let node = node else { return true }

        if !(node.val > left && node.val < right) {
            return false
        }

        return (valid(node.left, left, node.val) &&
                valid(node.right, node.val, right))
    }

    return valid(root, -Int.max, Int.max)
}


//            2
//          /   \
//          1   3

let oneNode = TreeNode(1)
let threeNode = TreeNode(3)

let twoNode = TreeNode(2, oneNode, threeNode)

let result = isValidBST(twoNode) // true
print(result)


//            5
//          /   \
//          1   4
//             /  \
//            3    6

let threeNode1 = TreeNode(3)
let sixNode1 = TreeNode(6)

let fourNode1 = TreeNode(4, threeNode1, sixNode1)

let oneNode1 = TreeNode(1)

let fiveNode1 = TreeNode(5, oneNode1, fourNode1)

let result1 = isValidBST(fiveNode1) // false
print(result1)
