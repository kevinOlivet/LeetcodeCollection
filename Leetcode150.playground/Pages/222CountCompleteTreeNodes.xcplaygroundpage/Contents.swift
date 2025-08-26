import Foundation

/*
 ## 222. Count Complete Tree Nodes
 https://leetcode.com/problems/count-complete-tree-nodes/description/?envType=study-plan-v2&envId=top-interview-150

 Given the root of a complete binary tree, return the number of the nodes in the tree.

 According to Wikipedia, every level, except possibly the last, is completely filled in a complete binary tree, and all nodes in the last level are as far left as possible. It can have between 1 and 2h nodes inclusive at the last level h.

 NOTE: - Design an algorithm that runs in less than O(n) time complexity.

 Example 1:
 Input: root = [1,2,3,4,5,6]
 Output: 6

 Example 2:
 Input: root = []
 Output: 0

 Example 3:
 Input: root = [1]
 Output: 1

 Constraints:

 The number of nodes in the tree is in the range [0, 5 * 104].
 0 <= Node.val <= 5 * 104
 The tree is guaranteed to be complete.
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

func countNodes(_ root: TreeNode?) -> Int {
    guard let root = root else {
        return 0
    }

    let leftDepth = treeDepth(root, true)
    let rightDepth = treeDepth(root, false)

    if leftDepth == rightDepth {
        return (1 << leftDepth) - 1 // 2^n - 1
    }

    return countNodes(root.left) + countNodes(root.right) + 1
}

func treeDepth(_ root: TreeNode?, _ isLeft: Bool) -> Int {
    var root = root
    var depth = 0

    while root != nil {
        root = isLeft ? root?.left : root?.right
        depth += 1
    }

    return depth
}

let four = TreeNode(4)
let five = TreeNode(5)
let two = TreeNode(2, four, five)

let six = TreeNode(6)
let three = TreeNode(3, six, nil)

let one = TreeNode(1, two, three)

let result = countNodes(one) // 6
print(result)
