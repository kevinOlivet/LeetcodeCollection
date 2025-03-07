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
 Input: root = [-10,9,20,null,null,15,7]
 Output: 42
 Explanation: The optimal path is 15 -> 20 -> 7 with a path sum of 15 + 20 + 7 = 42.
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

func maxPathSum(_ root: TreeNode?) -> Int {

    guard let root = root else { return 0 }

    var result = root.val

    // return max path sum WITHOUT split
    func dfs(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }

        var leftMax = dfs(root.left)
        var rightMax = dfs(root.right)

        // in case they are negative to filter out negative numbers
        leftMax = max(leftMax, 0)
        rightMax = max(rightMax, 0)

        // compute max path sum WITH split
        result = max(result, root.val + leftMax + rightMax)

        // return value not same as result.
        // return value is WITHOUT spliting
        return root.val + max(leftMax, rightMax)
    }

    dfs(root)
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

let result = maxPathSum(ThreeNode)
print(result)
