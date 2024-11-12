import Foundation

/*
 ## 257. Binary Tree Paths
 https://leetcode.com/problems/binary-tree-paths/description/

 Given the root of a binary tree, return all root-to-leaf paths in any order.

 A leaf is a node with no children.

 Example 1:

         1
       /  \
      2    3
       \
        5

 Input: root = [1,2,3,null,5]
 Output: ["1->2->5","1->3"]

 Example 2:
 Input: root = [1]
 Output: ["1"]
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

func binaryTreePaths(_ root: TreeNode?) -> [String] {
    guard let root = root else { return [""] }

    var result = [String]()

    func dfs(_ node: TreeNode?, _ path: String) {
        guard let node = node else { return }

        var path = path
        path.append(String(node.val))
        if node.left == nil && node.right == nil {
            result.append(path)
            return
        }

        path.append("->")

        dfs(node.left, path)
        dfs(node.right, path)
    }

    dfs(root, "")
    return result
}

let result = binaryTreePaths(one)
print(result)
