import Foundation

/*
 ## 230. Kth Smallest Element in a BST
 https://leetcode.com/problems/kth-smallest-element-in-a-bst/description/

 Given the root of a binary search tree, and an integer k, return the kth smallest value (1-indexed) of all the values of the nodes in the tree.

 Example 1:
 Input: root = [3,1,4,null,2], k = 1
 Output: 1

 Example 2:

                     5
                    /  \
                   3    6
                  / \
                 2   4
                /
               1

 Input: root = [5,3,6,2,4,null,null,1], k = 3
 Output: 3
 */

let one = TreeNode(1)
let two = TreeNode(2, one, nil)

let four = TreeNode(4)

let three = TreeNode(3, two, four)

let six = TreeNode(6)

let five = TreeNode(5, three, six)

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

func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
    var counter = 0
    var result = 0

    func inOrderTraversal(_ node: TreeNode?) {
        guard let node = node else { return }
        inOrderTraversal(node.left)
        counter += 1
        if counter == k {
            result = node.val
            return
        }
        inOrderTraversal(node.right)
    }

    inOrderTraversal(root)
    return result
}

let result = kthSmallest(five, 3) // 3
print(result)
