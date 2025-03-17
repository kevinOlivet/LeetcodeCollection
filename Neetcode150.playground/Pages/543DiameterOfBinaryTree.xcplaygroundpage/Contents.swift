import Foundation

/*
 ## 543. Diameter of Binary Tree
 https://leetcode.com/problems/diameter-of-binary-tree/description/

 Given the root of a binary tree, return the length of the diameter of the tree.

 The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.

 The length of a path between two nodes is represented by the number of edges between them.

 Example 1:
 Input: root = [1,2,3,4,5]
 Output: 3
 Explanation: 3 is the length of the path [4,2,1,3] or [5,2,1,3].

 Example 2:
 Input: root = [1,2]
 Output: 1
 */

func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
    var result = 0

    func dfs(_ node: TreeNode?) -> Int {
        guard let node = node else { return 0 }
        let leftMax = dfs(node.left)
        let rightMax = dfs(node.right)
        result = max(result, leftMax + rightMax)
        return 1 + max(leftMax, rightMax)
    }

    dfs(root)
    return result
}
