import Foundation

/*
 ## 102. Binary Tree Level Order Traversal
 https://leetcode.com/problems/binary-tree-level-order-traversal/description/

 Given the root of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).

 Example 1:
 Input: root = [3,9,20,null,null,15,7]
 Output: [[3],[9,20],[15,7]]

 Example 2:
 Input: root = [1]
 Output: [[1]]

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

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    var result = [[Int]]()

    var queue = [TreeNode?]()
    queue.append(root)

    while !queue.isEmpty {
        let qLen = queue.count
        var level = [Int]()

        for i in 0..<qLen {

            if let node = queue.removeFirst() {
                level.append(node.val)
                queue.append(node.left)
                queue.append(node.right)
            }
        }
        if !level.isEmpty {
            result.append(level)
        }
    }
    return result
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

let result = levelOrder(ThreeNode)
print(result)
