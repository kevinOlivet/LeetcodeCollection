import Foundation

/*
 ## 104. Maximum Depth of Binary Tree
 https://leetcode.com/problems/maximum-depth-of-binary-tree/description/

 Given the root of a binary tree, return its maximum depth.

 A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

 Example 1:
 Input: root = [3,9,20,null,null,15,7]
 Output: 3

 Example 2:
 Input: root = [1,null,2]
 Output: 2
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

func maxDepth(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    return 1 + max(maxDepth(root.left), maxDepth(root.right))
}
//func maxDepth(_ root: TreeNode?) -> Int {
//    guard let root = root else { return 0 }
//    var q = [root]
//    var result = 0
//    while !q.isEmpty {
//        for i in 0..<q.count {
//            let node = q.removeFirst()
//            if let left = node.left {
//                q.append(left)
//            }
//            if let right = node.right {
//                q.append(right)
//            }
//        }
//        result += 1
//    }
//    return result
//}

//func maxDepth(_ root: TreeNode?) -> Int {
//    var result = 0
//    var counter = 0
//    func dfs(_ node: TreeNode?) {
//        guard let node = node else { return }
//        counter += 1
//        result = max(result, counter)
//        dfs(node.left)
//        dfs(node.right)
//        counter -= 1
//    }
//    dfs(root)
//    return result
//}

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


let result = maxDepth(ThreeNode)
print(result)
