import Foundation

/*
 ## 107. Binary Tree Level Order Traversal II
 https://leetcode.com/problems/binary-tree-level-order-traversal-ii/description/

 Given the root of a binary tree, return the bottom-up level order traversal of its nodes' values. (i.e., from left to right, level by level from leaf to root).

 Example 1:

        3
       / \
      9   20
          / \
        15   7

 Input: root = [3,9,20,null,null,15,7]
 Output: [[15,7],[9,20],[3]]

 Example 2:
 Input: root = [1]
 Output: [[1]]

 Example 3:
 Input: root = []
 Output: []
 */

let fifteen = TreeNode(15)
let seven = TreeNode(7)

let twenty = TreeNode(20, fifteen, seven)

let nine = TreeNode(9)

let three = TreeNode(3, nine, twenty)

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

// Using BFS and a queue
func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {

    var result = [[Int]]()
    var queue = [root]

    while !queue.isEmpty {
        var level = [Int]()
        for i in 0..<queue.count {
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
    return result.reversed()
}

let result = levelOrderBottom(three)
print(result)

// Using recursion and dfs
func levelOrderBottom1(_ root: TreeNode?) -> [[Int]] {

    var holder = [[Int]]()

    func dfs(_ node: TreeNode?, _ level: Int) {
        guard let node = node else { return }

        if level < holder.count {
            holder[level].append(node.val)
        } else {
            holder.insert([node.val], at: level)
        }
        dfs(node.left, level + 1)
        dfs(node.right, level + 1)
    }

    dfs(root, 0)
    return holder.reversed()
}

let result1 = levelOrderBottom1(three)
print(result1)
