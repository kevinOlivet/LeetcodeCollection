import Foundation

/*
 ## 113. Path Sum II
 https://leetcode.com/problems/path-sum-ii/description/
 NOTE: Very similar to 257 Binary Tree Paths

 Given the root of a binary tree and an integer targetSum, return all root-to-leaf paths where the sum of the node values in the path equals targetSum. Each path should be returned as a list of the node values, not node references.

 A root-to-leaf path is a path starting from the root and ending at any leaf node. A leaf is a node with no children.

 Example 1:
 Input: root = [5,4,8,11,null,13,4,7,2,null,null,5,1], targetSum = 22
 Output: [[5,4,11,2],[5,8,4,5]]
 Explanation: There are two paths whose sum equals targetSum:
 5 + 4 + 11 + 2 = 22
 5 + 8 + 4 + 5 = 22

 Example 2:
 Input: root = [1,2,3], targetSum = 5
 Output: []

 Example 3:
 Input: root = [1,2], targetSum = 0
 Output: []
 */

/*
        1
      /  \
     2    3
      \
       5
 */
let five = TreeNode(5)
let two = TreeNode(2, nil, five)

let three = TreeNode(3)

let one = TreeNode(1, two, three)

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

func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
    guard let root = root else { return [] }
    var result = [[Int]]()

    func dfs(_ node: TreeNode?, _ path: [Int]) {
        guard let node = node else { return }
        var path = path
        path.append(node.val)
        if node.left == nil && node.right == nil {
            result.append(path)
            return
        }
        dfs(node.left, path)
        dfs(node.right, path)
    }
    dfs(root, [])
    return result.filter( { $0.reduce(0, +) == targetSum })
}

let result = pathSum(one, 4)
print(result)
