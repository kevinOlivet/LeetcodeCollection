import Foundation

/*
 ## 530. Minimum Absolute Difference in BST
 https://leetcode.com/problems/minimum-absolute-difference-in-bst/description/?envType=study-plan-v2&envId=top-interview-150

 Given the root of a Binary Search Tree (BST), return the minimum absolute difference between the values of any two different nodes in the tree.

 Example 1:
 Input: root = [4,2,6,1,3]
 Output: 1

 Example 2:
 Input: root = [1,0,48,null,null,12,49]
 Output: 1
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

func getMinimumDifference(_ root: TreeNode?) -> Int {
    var prev: Int?
    var result = Int.max
    func inOrder(_ node: TreeNode?) {
        guard let node = node else { return }
        inOrder(node.left)
        if let prev = prev {
            result = min(result, node.val - prev)
        }
        prev = node.val
        inOrder(node.right)
    }
    inOrder(root)
    return result
}

//          4
//         / \
//        2   6
//       / \
//      1   3

let one = TreeNode(1)
let three = TreeNode(3)
let two = TreeNode(2, one, three)

let six = TreeNode(6)
let four = TreeNode(4, two, six)

let result = getMinimumDifference(four)
print(result)
