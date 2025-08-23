import Foundation

/*
 ## 112. Path Sum
 https://leetcode.com/problems/path-sum/description/?envType=study-plan-v2&envId=top-interview-150

 Given the root of a binary tree and an integer targetSum, return true if the tree has a root-to-leaf path such that adding up all the values along the path equals targetSum.

 A leaf is a node with no children.

 Example 1:
 Input: root = [5,4,8,11,null,13,4,7,2,null,null,null,1], targetSum = 22
 Output: true
 Explanation: The root-to-leaf path with the target sum is shown.

 Example 2:
 Input: root = [1,2,3], targetSum = 5
 Output: false
 Explanation: There are two root-to-leaf paths in the tree:
 (1 --> 2): The sum is 3.
 (1 --> 3): The sum is 4.
 There is no root-to-leaf path with sum = 5.

 Example 3:
 Input: root = [], targetSum = 0
 Output: false
 Explanation: Since the tree is empty, there are no root-to-leaf paths.
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

func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {

    func dfs(_ node: TreeNode?, _ currentSum: Int) -> Bool {
        guard let node = node else { return false }
        var currentSum = currentSum
        currentSum += node.val
        if node.left == nil && node.right == nil {
            return currentSum == targetSum
        }
        return dfs(node.left, currentSum) ||
        dfs(node.right, currentSum)
    }
    return dfs(root, 0)
}

//          1
//        /   \
//      2       5
//     / \        \
//    3   4         6

let three = TreeNode(3)
let four = TreeNode(4)
let two = TreeNode(2, three, four)

let six = TreeNode(6)
let five = TreeNode(5, nil, six)

let one = TreeNode(1, two, five)

let result = hasPathSum(one, 12) // true
print(result)
