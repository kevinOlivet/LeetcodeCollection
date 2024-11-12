import Foundation

/*
 ## 124. Binary Tree Maximum Path Sum
 https://leetcode.com/problems/binary-tree-maximum-path-sum/description/

 A path in a binary tree is a sequence of nodes where each pair of adjacent nodes in the sequence has an edge connecting them. A node can only appear in the sequence at most once. Note that the path does not need to pass through the root.

 The path sum of a path is the sum of the node's values in the path.

 Given the root of a binary tree, return the maximum path sum of any non-empty path.

 Example 1:

 Input: root = [1,2,3]
 Output: 6
 Explanation: The optimal path is 2 -> 1 -> 3 with a path sum of 2 + 1 + 3 = 6.

 Example 2:

         -10
        /   \
       9     20
            /  \
           15   7

 Input: root = [-10,9,20,null,null,15,7]
 Output: 42
 Explanation: The optimal path is 15 -> 20 -> 7 with a path sum of 15 + 20 + 7 = 42.
 */

let nine = TreeNode(9)

let fifteen = TreeNode(15)
let seven = TreeNode(7)

let twenty = TreeNode(20, fifteen, seven)

let minusTen = TreeNode(-10, nine, twenty)

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

func maxPathSum(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    var result = root.val

    // return max path sum WITHOUT split
    func dfs(_ node: TreeNode?) -> Int {
        guard let node = node else { return 0 }

        var leftMax = dfs(node.left)
        var rightMax = dfs(node.right)
        leftMax = max(leftMax, 0)
        rightMax = max(rightMax, 0)

        // compute max path WITH split
        result = max(result, node.val + leftMax + rightMax)

        return node.val + max(leftMax, rightMax)
    }

    dfs(root)
    return result
}

let result = maxPathSum(minusTen) // 42
print(result)
