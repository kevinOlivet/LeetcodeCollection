import Foundation

/*
 ## 110. Balanced Binary Tree
 https://leetcode.com/problems/balanced-binary-tree/description/

 Given a binary tree, determine if it is height-balanced.

 Example 1:
 Input: root = [3,9,20,null,null,15,7]
 Output: true

 Example 2:
 Input: root = [1,2,2,3,3,null,null,4,4]
 Output: false

 Example 3:
 Input: root = []
 Output: true
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

func isBalanced(_ root: TreeNode?) -> Bool {

    func dfs(_ node: TreeNode?) -> (isBalanced: Bool, height: Int) {
        guard let node = node else { return (true, 0) }
        let left = dfs(node.left)
        let right = dfs(node.right)
        let balanced = (left.0 && right.0 &&
                        abs(left.1 - right.1) <= 1)
        return (balanced, 1 + max(left.1, right.1))
    }

    return dfs(root).0
}
