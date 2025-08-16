import Foundation

/*
 ## 101. Symmetric Tree
 https://leetcode.com/problems/symmetric-tree/description/?envType=study-plan-v2&envId=top-interview-150

 Given the root of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).

 Example 1:
 Input: root = [1,2,2,3,4,4,3]
 Output: true

 Example 2:
 Input: root = [1,2,2,null,3,null,3]
 Output: false
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

func isSymmetric(_ root: TreeNode?) -> Bool {

    func dfs(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
        if left == nil && right == nil { return true }
        if left == nil || right == nil { return false }
        return (left!.val == right!.val &&
                dfs(left!.left, right!.right) &&
                dfs(left!.right, right!.left))
    }

    return dfs(root?.left, root?.right)
}

let threeAgain = TreeNode(3)
let fourAgain = TreeNode(4)
let four = TreeNode(4)
let three = TreeNode(3)

let twoAgain = TreeNode(2, fourAgain, threeAgain)
let two = TreeNode(2, three, four)
let one = TreeNode(1, two, twoAgain)

let result = isSymmetric(one) // true
print(result)
