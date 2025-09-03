import Foundation

/*
 ## 103. Binary Tree Zigzag Level Order Traversal
 https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal/description/?envType=study-plan-v2&envId=top-interview-150

 Given the root of a binary tree, return the zigzag level order traversal of its nodes' values. (i.e., from left to right, then right to left for the next level and alternate between).

 Example 1:
 Input: root = [3,9,20,null,null,15,7]
 Output: [[3],[20,9],[15,7]]

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

func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
    guard let root = root else { return [[]] }
    var q = [root]
    var result = [[Int]]()
    while !q.isEmpty {
        var level = [Int]()
        for i in 0..<q.count {
            let node = q.removeFirst()
            level.append(node.val)
            if let left = node.left { q.append(left) }
            if let right = node.right { q.append(right) }
        }
        level = result.count % 2 == 0 ? level : Array(level.reversed())
        result.append(level)
    }
    return result
}

let fifteen = TreeNode(15)
let seven = TreeNode(7)

let twenty = TreeNode(20, fifteen, seven)

let nine = TreeNode(9)
let three = TreeNode(3, nine, twenty)

//          3
//         /  \
//        9    20
//            /  \
//          15    7

let result = zigzagLevelOrder(three) // [[3],[20,9],[15,7]]
print(result)
